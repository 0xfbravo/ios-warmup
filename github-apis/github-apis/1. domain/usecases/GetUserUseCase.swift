//
//  GetUserUseCase.swift
//  github-apis
//
//  Created by 0xf on 19/08/23.
//

import Foundation
import Factory

protocol GetUserUseCase {
    func execute(
        username: String,
        _ handler: @escaping (UseCaseResponse<UserModel, Error>) -> Void
    )
}

class GetUserUseCaseImpl: GetUserUseCase {
    @Injected(\.githubApiRepository) private var repository: GithubApiRepository

    func execute(
        username: String,
        _ handler: @escaping (UseCaseResponse<UserModel, Error>) -> Void
    ) {
        repository.getUser(username: username) { response in
            if response.error != nil {
                return handler(UseCaseResponse(success: nil, error: UseCaseErrors.emptyModel))
            }
            handler(UseCaseResponse(success: response.success, error: nil))
        }
    }
}
