//
//  GitHubApisApp.swift
//  github-apis
//
//  Created by 0xf on 19/08/23.
//

import SwiftUI
import Factory

@main
struct GitHubApisApp: App {
    var config = Container.shared.config
    var body: some Scene {
        WindowGroup {
            UsersListView()
//            UserRepositoryInfoView()
//            UserRepositoriesView()
//            UserInfoView()
        }
    }
}
