//
//  UsersListViewModel.swift
//  github-apis
//
//  Created by 0xf on 20/08/23.
//

import SwiftUI
import Factory

class UsersListViewModel: ObservableObject {
    @Published var users: [GitHubUserModel]?
    @Published var isLoading = false
    @Published var hasError = false
    @Injected(\.getUsersListUseCase) private var getUsersListUseCase

    init () {
        getUsersList()
    }

    private func getUsersList() {
        self.isLoading = true
        getUsersListUseCase.execute { response in
            self.isLoading = false
            if response.error != nil {
                self.hasError = true
                return
            }
            self.users = response.success
        }
    }
}
