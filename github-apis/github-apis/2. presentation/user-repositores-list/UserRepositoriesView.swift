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

     init() {
         self.viewModel = Container.shared.userRepositoriesViewModel.resolve()
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
                     NavigationLink(repository.name ?? "Unknown", destination: UserRepositoryInfoView())
                 }
             }
         }
     }
}

struct UserRepositoriesView_Previews: PreviewProvider {
    static var previews: some View {
        UserRepositoriesView()
    }
}
