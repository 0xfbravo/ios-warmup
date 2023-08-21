//
//  UserInfoViewModel.swift
//  github-apis
//
//  Created by 0xf on 20/08/23.
//

import SwiftUI
import Factory

class UserInfoViewModel: ObservableObject {
    @Published var user: UserModel?
    @Published var isLoading = false
    @Published var hasError = false
    @Injected(\.getUserUseCase) private var getUserUseCase

    func getUser(username: String) {
        self.isLoading = true
        getUserUseCase.execute(
            username: username
        ) { response in
            self.isLoading = false
            if response.error != nil {
                self.hasError = true
                return
            }
            self.user = response.success
        }
    }
}
