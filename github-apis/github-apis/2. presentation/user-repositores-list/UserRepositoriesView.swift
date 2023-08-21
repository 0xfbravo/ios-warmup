//
//  UserRepositoriesView.swift
//  github-apis
//
//  Created by 0xf on 20/08/23.
//

import SwiftUI
import Factory

struct UserRepositoriesView: View {
    @ObservedObject private var viewModel: UserRepositoriesViewModel
    private var username: String

    init(username: String) {
        self.username = username
        self.viewModel = Container.shared.userRepositoriesViewModel.resolve()
        self.viewModel.getUserRepositories(username: username)
    }

     var body: some View {
         if viewModel.isLoading {
             LoadingView()
         } else if viewModel.hasError {
             ErrorView()
         } else {
             if viewModel.repositories?.isEmpty ?? true {
                 VStack(spacing: 16) {
                     Text("No repositories found.")
                 }
             } else {
                 List(viewModel.repositories ?? []) { repository in
                     NavigationLink(
                        repository.name ?? "Unknown",
                        destination: UserRepositoryInfoView(
                            username: username,
                            repositoryName: repository.name ?? "Unknown"
                        )
                     )
                 }
             }
         }
     }
}

struct UserRepositoriesView_Previews: PreviewProvider {
    static var previews: some View {
        UserRepositoriesView(
            username: "0xfbravo"
        )
    }
}
