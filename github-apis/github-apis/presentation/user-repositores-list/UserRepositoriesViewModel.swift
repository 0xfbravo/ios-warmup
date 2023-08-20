//
//  UserRepositoriesViewModel.swift
//  github-apis
//
//  Created by 0xf on 20/08/23.
//

import SwiftUI
import Factory

class UserRepositoriesViewModel: ObservableObject {
    @Published var repositories: [GitHubRepositoryModel]?
    @Published var isLoading = false
    @Published var hasError = false
    @Injected(\.getUserRepositoriesUseCase) private var getUserRepositoresUseCase

    init () {
        getUserRepositories()
    }

    private func getUserRepositories() {
        self.isLoading = true
        getUserRepositoresUseCase.execute(
            username: "0xfbravo"
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
