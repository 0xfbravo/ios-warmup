//
//  UserRepositoryInfoView.swift
//  github-apis
//
//  Created by 0xf on 20/08/23.
//

import SwiftUI
import Factory

struct UserRepositoryInfoView: View {
    @ObservedObject private var viewModel: UserRepositoryInfoViewModel

     init() {
         self.viewModel = Container.shared.userRepositoryInfoViewModel.resolve()
     }

     var body: some View {
         if viewModel.isLoading {
             LoadingView()
         } else if viewModel.hasError {
             ErrorView()
         } else {
             VStack(alignment: .leading, spacing: 16) {
                 Text(viewModel.repository?.name ?? "")
                 Text(viewModel.repository?.language ?? "")
                 Text("\(viewModel.repository?.forksCount ?? -1)")
             }
         }
     }
}

struct UserRepositoryInfoView_Previews: PreviewProvider {
    static var previews: some View {
        UserRepositoryInfoView()
    }
}
