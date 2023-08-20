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
        _ handler: @escaping (DataResponse<[GitHubUserModel], AFError>) -> Void
    )
    func getUser(
        username: String,
        _ handler: @escaping (DataResponse<GitHubUserModel, AFError>) -> Void
    )
    func getUserRepositoriesList(
        username: String,
        _ handler: @escaping (DataResponse<[GitHubRepositoryModel], AFError>) -> Void
    )
    func getRepository(
        username: String,
        repository: String,
        _ handler: @escaping (DataResponse<GitHubRepositoryModel, AFError>) -> Void
    )
}

/// Created for remote operations only
internal class GithubApiRemoteDataSourceImpl: GithubApiRemoteDataSource {
    private let baseUrl: String

    init() {
        guard let baseUrl = Container.shared.config["GITHUB_BASE_URL"] as? String  else {
            fatalError("Config not found")
        }
        self.baseUrl = baseUrl
    }

    /// Returns a default users list provided by GitHub's Api
    func getUsersList(
        _ handler: @escaping (DataResponse<[GitHubUserModel], AFError>) -> Void
    ) {
        AF.request("\(baseUrl)/users", method: .get)
            .responseDecodable(of: [GitHubUserModel].self) { response in
                handler(response)
        }
    }

    /// Returns the information of a certain username
    func getUser(
        username: String,
        _ handler: @escaping (DataResponse<GitHubUserModel, AFError>) -> Void
    ) {
        AF.request("\(baseUrl)/users", method: .get)
            .responseDecodable(of: GitHubUserModel.self) { response in
                handler(response)
        }
    }

    /// Returns a list of repositories of a certain username
    func getUserRepositoriesList(
        username: String,
        _ handler: @escaping (DataResponse<[GitHubRepositoryModel], AFError>) -> Void
    ) {
        AF.request("\(baseUrl)/users", method: .get)
            .responseDecodable(of: [GitHubRepositoryModel].self) { response in
                handler(response)
        }
    }

    /// Returns the information of a respository
    func getRepository(
        username: String,
        repository: String,
        _ handler: @escaping (DataResponse<GitHubRepositoryModel, AFError>) -> Void
    ) {
        AF.request("\(baseUrl)/repos/\(username)/\(repository)", method: .get)
            .responseDecodable(of: GitHubRepositoryModel.self) { response in
                handler(response)
        }
    }
}
