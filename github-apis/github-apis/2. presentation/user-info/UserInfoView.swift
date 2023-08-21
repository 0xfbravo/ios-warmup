//
//  UserInfoView.swift
//  github-apis
//
//  Created by 0xf on 20/08/23.
//

import SwiftUI
import Factory
import Kingfisher

struct UserInfoView: View {
    @ObservedObject private var viewModel: UserInfoViewModel
    private var username: String

    init(username: String) {
        self.username = username
        self.viewModel = Container.shared.userInfoViewModel.resolve()
        self.viewModel.getUser(username: username)
    }

     var body: some View {
         if viewModel.isLoading {
             LoadingView()
         } else if viewModel.hasError {
             ErrorView()
         } else {
             ZStack {
                 Color("Primary").ignoresSafeArea()
                 VStack(alignment: .center, spacing: 16) {
                     UserHeaderView(
                        avatarUrl: viewModel.user?.avatarURL ?? "",
                        name: viewModel.user?.name ?? "",
                        bio: viewModel.user?.bio ?? ""
                     )
                     UserRepositoriesView(
                        username: username
                     )
                 }
             }.preferredColorScheme(.dark)
         }
     }
}

struct UserInfoView_Previews: PreviewProvider {
    static var previews: some View {
        UserInfoView(
            username: "0xfbravo"
        )
    }
}
