//
//  GetUserRepositoriesListUseCase.swift
//  github-apis
//
//  Created by 0xf on 19/08/23.
//

import Foundation
import Factory

protocol GetUserRepositoriesListUseCase {
    func execute(
        username: String,
        _ handler: @escaping (UseCaseResponse<[RepositoryModel], Error>) -> Void
    )
}

internal class GetUserRepositoriesListUseCaseImpl: GetUserRepositoriesListUseCase {
    @Injected(\.githubApiRepository) private var repository: GithubApiRepository

    func execute(
        username: String,
        _ handler: @escaping (UseCaseResponse<[RepositoryModel], Error>) -> Void
    ) {
        repository.getUserRepositoriesList(username: username) { response in
            if response.error != nil {
                return handler(UseCaseResponse(success: nil, error: UseCaseErrors.emptyModel))
            }
            handler(UseCaseResponse(success: response.success, error: nil))
        }
    }
}
