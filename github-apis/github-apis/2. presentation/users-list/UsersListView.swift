//
//  UsersListView.swift
//  github-apis
//
//  Created by 0xf on 20/08/23.
//

import SwiftUI
import Factory

struct UsersListView: View {
   @ObservedObject private var viewModel: UsersListViewModel

    init() {
        self.viewModel = Container.shared.usersListViewModel.resolve()
    }

    var body: some View {
        if viewModel.isLoading {
            LoadingView()
        } else if viewModel.hasError {
            ErrorView()
        } else {
            if viewModel.users?.isEmpty ?? true {
                VStack(spacing: 16) {
                    Text("No users found.")
                }
            } else {
                ZStack {
                    Color("Primary").ignoresSafeArea()
                    VStack(alignment: .leading) {
                        Text("GitHub Users")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .bold()
                            .padding(.all, 16)
                        List(viewModel.users ?? []) { user in
                            NavigationLink(user.login ?? "Unknown", destination: UserInfoView(username: user.login ?? "Unknown"))
                        }
                    }
                }.preferredColorScheme(.dark)
            }
        }
    }
}

struct UsersListView_Previews: PreviewProvider {
    static var previews: some View {
        UsersListView()
    }
}
