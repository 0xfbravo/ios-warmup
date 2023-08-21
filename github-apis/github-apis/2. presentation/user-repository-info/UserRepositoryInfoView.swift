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
    private var username: String
    private var repositoryName: String

    init(
        username: String,
        repositoryName: String
    ) {
        self.username = username
        self.repositoryName = repositoryName
        self.viewModel = Container.shared.userRepositoryInfoViewModel.resolve()
        self.viewModel.getRepository(username: username, repositoryName: repositoryName)
    }

     var body: some View {
         if viewModel.isLoading {
             LoadingView()
         } else if viewModel.hasError {
             ErrorView()
         } else {
             ZStack {
                 Color("Secondary").ignoresSafeArea()
                 VStack(alignment: .center, spacing: 24) {
                     VStack(alignment: .leading) {
                         Image(systemName: "hammer.circle.fill")
                             .imageScale(.large)
                             .foregroundColor(.white)
                         Text(viewModel.repository?.name ?? "")
                             .font(.largeTitle)
                             .foregroundColor(.white)
                             .bold()
                         Text(viewModel.repository?.language ?? "")
                             .font(.subheadline)
                             .foregroundColor(.white)
                         Text(viewModel.repository?.description ?? "")
                             .font(.caption)
                             .foregroundColor(.white)
                             .opacity(0.8)
                     }
                     HStack(alignment: .center, spacing: 24) {
                         VStack(spacing: 4) {
                             Image(systemName: "app.connected.to.app.below.fill")
                                 .imageScale(.medium)
                                 .foregroundColor(.white)
                             Text("\(viewModel.repository?.forksCount ?? 0)")
                                 .font(.caption)
                                 .bold()
                                 .foregroundColor(.white)
                         }
                         VStack(spacing: 4) {
                             Image(systemName: "star.fill")
                                 .imageScale(.medium)
                                 .foregroundColor(.white)
                             Text("\(viewModel.repository?.stargazersCount ?? 0)")
                                 .font(.caption)
                                 .bold()
                                 .foregroundColor(.white)
                         }
                         VStack(spacing: 4) {
                             Image(systemName: "eye.fill")
                                 .imageScale(.medium)
                                 .foregroundColor(.white)
                             Text("\(viewModel.repository?.watchersCount ?? 0)")
                                 .font(.caption)
                                 .bold()
                                 .foregroundColor(.white)
                         }
                         VStack(spacing: 4) {
                             Image(systemName: "ladybug.fill")
                                 .imageScale(.medium)
                                 .foregroundColor(.white)
                             Text("\(viewModel.repository?.watchersCount ?? 0)")
                                 .font(.caption)
                                 .bold()
                                 .foregroundColor(.white)
                         }
                     }
                 }
                 .padding(.all, 16)
             }
         }
     }
}

struct UserRepositoryInfoView_Previews: PreviewProvider {
    static var previews: some View {
        UserRepositoryInfoView(
            username: "0xfbravo",
            repositoryName: "inevitable"
        )
    }
}
