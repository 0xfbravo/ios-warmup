//
//  GetUsersListUseCase.swift
//  github-apis
//
//  Created by 0xf on 19/08/23.
//

import Foundation
import Factory

protocol GetUsersListUseCase {
    func execute(
        _ handler: @escaping (UseCaseResponse<[GitHubUserModel], Error>) -> Void
    )
}

internal class GetUsersListUseCaseImpl: GetUsersListUseCase {
    @Injected(\.githubApiRepository) private var repository: GithubApiRepository

    func execute(
        _ handler: @escaping (UseCaseResponse<[GitHubUserModel], Error>) -> Void
    ) {
        repository.getUsersList { response in
            if response.error != nil {
                return handler(UseCaseResponse(success: nil, error: UseCaseErrors.emptyModel))
            }
            handler(UseCaseResponse(success: response.success, error: nil))
        }
    }
}
