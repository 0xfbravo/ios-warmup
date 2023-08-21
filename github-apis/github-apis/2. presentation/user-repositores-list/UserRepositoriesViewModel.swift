//
//  UserRepositoriesViewModel.swift
//  github-apis
//
//  Created by 0xf on 20/08/23.
//

import SwiftUI
import Factory

class UserRepositoriesViewModel: ObservableObject {
    @Published var repositories: [RepositoryModel]?
    @Published var isLoading = false
    @Published var hasError = false
    @Injected(\.getUserRepositoriesUseCase) private var getUserRepositoresUseCase

    func getUserRepositories(username: String) {
        self.isLoading = true
        getUserRepositoresUseCase.execute(
            username: username
        ) { response in
            self.isLoading = false
            if response.error != nil {
                self.hasError = true
                return
            }
            self.repositories = response.success
        }
    }
}
