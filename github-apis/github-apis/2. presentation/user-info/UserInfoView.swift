//
//  UserInfoView.swift
//  github-apis
//
//  Created by 0xf on 20/08/23.
//

import SwiftUI
import Factory

struct UserInfoView: View {
    @ObservedObject private var viewModel: UserInfoViewModel

     init() {
         self.viewModel = Container.shared.userInfoViewModel.resolve()
     }

     var body: some View {
         if viewModel.isLoading {
             LoadingView()
         } else if viewModel.hasError {
             ErrorView()
         } else {
             VStack(alignment: .leading, spacing: 16) {
                Text(viewModel.user?.name ?? "")
                Text(viewModel.user?.login ?? "")
                Text(viewModel.user?.bio ?? "")
             }
         }
     }
}

struct UserInfoView_Previews: PreviewProvider {
    static var previews: some View {
        UserInfoView()
    }
}
