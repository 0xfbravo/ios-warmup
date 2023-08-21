//
//  RemoteDataSource.swift
//  github-apis
//
//  Created by 0xf on 19/08/23.
//

import Foundation
import Factory
import Alamofire

protocol GithubApiRemoteDataSource {
    func getUsersList(
        _ handler: @escaping (DataResponse<[UserModel], AFError>) -> Void
    )
    func getUser(
        username: String,
        _ handler: @escaping (DataResponse<UserModel, AFError>) -> Void
    )
    func getUserRepositoriesList(
        username: String,
        _ handler: @escaping (DataResponse<[RepositoryModel], AFError>) -> Void
    )
    func getRepository(
        username: String,
        repository: String,
        _ handler: @escaping (DataResponse<RepositoryModel, AFError>) -> Void
    )
}

/// Created for remote operations only
internal class GithubApiRemoteDataSourceImpl: GithubApiRemoteDataSource {
    private let baseUrl: String
    private let authorizationToken: String

    init() {
        let config = Container.shared.config.resolve()
        guard let baseUrl = config["GITHUB_BASE_URL"] as? String,
              let authorization = config["GITHUB_BEARER_TOKEN"] as? String else {
            fatalError("Config not found")
        }
        self.baseUrl = baseUrl
        self.authorizationToken = authorization
    }

    private func getHeaders() -> HTTPHeaders {
        var headers = [HTTPHeader]()
        if !self.authorizationToken.isEmpty {
            headers.append(HTTPHeader(name: "Authorization", value: "Bearer \(authorizationToken)"))
        }
        return HTTPHeaders(headers)
    }

    /// Returns a default users list provided by GitHub's Api
    func getUsersList(
        _ handler: @escaping (DataResponse<[UserModel], AFError>) -> Void
    ) {
        AF.request("\(baseUrl)/users", method: .get, headers: getHeaders())
            .responseDecodable(of: [UserModel].self) { response in
                handler(response)
        }
    }

    /// Returns the information of a certain username
    func getUser(
        username: String,
        _ handler: @escaping (DataResponse<UserModel, AFError>) -> Void
    ) {
        AF.request("\(baseUrl)/users/\(username)", method: .get, headers: getHeaders())
            .responseDecodable(of: UserModel.self) { response in
                handler(response)
        }
    }

    /// Returns a list of repositories of a certain username
    func getUserRepositoriesList(
        username: String,
        _ handler: @escaping (DataResponse<[RepositoryModel], AFError>) -> Void
    ) {
        AF.request("\(baseUrl)/users/\(username)/repos", method: .get, headers: getHeaders())
            .responseDecodable(of: [RepositoryModel].self) { response in
                handler(response)
        }
    }

    /// Returns the information of a respository
    func getRepository(
        username: String,
        repository: String,
        _ handler: @escaping (DataResponse<RepositoryModel, AFError>) -> Void
    ) {
        AF.request("\(baseUrl)/repos/\(username)/\(repository)", method: .get, headers: getHeaders())
            .responseDecodable(of: RepositoryModel.self) { response in
                handler(response)
        }
    }
}
