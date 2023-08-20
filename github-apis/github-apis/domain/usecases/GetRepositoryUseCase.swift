//
//  GetRepositoryUseCase.swift
//  github-apis
//
//  Created by 0xf on 20/08/23.
//

import Foundation
import Factory

protocol GetRepositoryUseCase {
    func execute(
        username: String,
        repositoryName: String,
        _ handler: @escaping (UseCaseResponse<GitHubRepositoryModel, Error>) -> Void
    )
}

internal class GetRepositoryUseCaseImpl: GetRepositoryUseCase {
    @Injected(\.githubApiRepository) private var repository: GithubApiRepository

    func execute(
        username: String,
        repositoryName: String,
        _ handler: @escaping (UseCaseResponse<GitHubRepositoryModel, Error>) -> Void
    ) {
        repository.getRepository(
            username: username,
            repository: repositoryName
        ) { response in
            if response.error != nil {
                return handler(UseCaseResponse(success: nil, error: UseCaseErrors.emptyModel))
            }
            handler(UseCaseResponse(success: response.success, error: nil))
        }
    }
}
