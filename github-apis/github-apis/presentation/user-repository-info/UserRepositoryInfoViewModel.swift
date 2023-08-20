//
//  UserRepositoryInfoViewModel.swift
//  github-apis
//
//  Created by 0xf on 20/08/23.
//

import SwiftUI
import Factory

class UserRepositoryInfoViewModel: ObservableObject {
    @Published var repository: GitHubRepositoryModel?
    @Published var isLoading = false
    @Published var hasError = false
    @Injected(\.getRepositoryUseCase) private var getRepositoryUseCase

    init () {
        getRepository()
    }

    private func getRepository() {
        self.isLoading = true
        getRepositoryUseCase.execute(
            username: "0xfbravo",
            repositoryName: "ios-warmup"
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
