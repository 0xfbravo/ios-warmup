//
//  GithubApiRepository.swift
//  github-apis
//
//  Created by 0xf on 19/08/23.
//

import Foundation
import Factory

protocol GithubApiRepository {
    func getUsersList(
        _ handler: @escaping (DataLayerResponse<[UserModel], Error>) -> Void
    )
    func getUser(
        username: String,
        _ handler: @escaping (DataLayerResponse<UserModel, Error>) -> Void
    )
    func getUserRepositoriesList(
        username: String,
        _ handler: @escaping (DataLayerResponse<[RepositoryModel], Error>) -> Void
    )
    func getRepository(
        username: String,
        repository: String,
        _ handler: @escaping (DataLayerResponse<RepositoryModel, Error>) -> Void
    )
}

internal class GithubApiRepositoryImpl: GithubApiRepository {
    @Injected(\.githubApiLocalDataSource) private var localDataSource: GithubApiLocalDataSource
    @Injected(\.githubApiRemoteDataSource) private var remoteDataSource: GithubApiRemoteDataSource

    func getUsersList(
        _ handler: @escaping (DataLayerResponse<[UserModel], Error>) -> Void
    ) {
        // TODO: Add cache logic
        remoteDataSource
            .getUsersList { response in
                if response.error != nil {
                    return handler(DataLayerResponse(success: nil, error: response.error))
                }
                handler(DataLayerResponse(success: try? response.result.get(), error: nil))
        }
    }

    func getUser(
        username: String,
        _ handler: @escaping (DataLayerResponse<UserModel, Error>) -> Void
    ) {
        // TODO: Add cache logic
        remoteDataSource
            .getUser(
                username: username
            ) { response in
                if response.error != nil {
                    return handler(DataLayerResponse(success: nil, error: response.error))
                }
                handler(DataLayerResponse(success: try? response.result.get(), error: nil))
        }
    }

    func getUserRepositoriesList(
        username: String,
        _ handler: @escaping (DataLayerResponse<[RepositoryModel], Error>) -> Void
    ) {
        // TODO: Add cache logic
        remoteDataSource
            .getUserRepositoriesList(
                username: username
            ) { response in
                if response.error != nil {
                    return handler(DataLayerResponse(success: nil, error: response.error))
                }
                handler(DataLayerResponse(success: try? response.result.get(), error: nil))
        }
    }

    func getRepository(
        username: String,
        repository: String,
        _ handler: @escaping (DataLayerResponse<RepositoryModel, Error>) -> Void
    ) {
        // TODO: Add cache logic
        remoteDataSource
            .getRepository(
                username: username,
                repository: repository
            ) { response in
                if response.error != nil {
                    return handler(DataLayerResponse(success: nil, error: response.error))
                }
                handler(DataLayerResponse(success: try? response.result.get(), error: nil))
        }
    }
}
