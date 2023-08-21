//
//  UserRepositoryInfoViewModel.swift
//  github-apis
//
//  Created by 0xf on 20/08/23.
//

import SwiftUI
import Factory

class UserRepositoryInfoViewModel: ObservableObject {
    @Published var repository: RepositoryModel?
    @Published var isLoading = false
    @Published var hasError = false
    @Injected(\.getRepositoryUseCase) private var getRepositoryUseCase

    func getRepository(
        username: String,
        repositoryName: String
    ) {
        self.isLoading = true
        getRepositoryUseCase.execute(
            username: username,
            repositoryName: repositoryName
        ) { response in
            self.isLoading = false
            if response.error != nil {
                self.hasError = true
                return
            }
            self.repository = response.success
        }
    }
}
