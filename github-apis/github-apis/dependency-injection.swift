//
//  dependency-injection.swift
//  github-apis
//
//  Created by 0xf on 19/08/23.
//

import Foundation
import Factory
import Willow

/// Essentials
extension Container {
    var logger: Factory<Logger> {
        Factory(self) { Logger(logLevels: [.all], writers: [ConsoleWriter()]) }.singleton
    }
}

/// Data layer
extension Container {
    /// Reading from .plist, but the better approach is
    /// receive this from a secure storage or remote config like Firebase
    var config: Factory<[String: Any]> {
        Factory(self) {
            let configPlistPath = "Config"
            debugPrint("Reading initial app config from \(configPlistPath).plist")
            if let plistPath = Bundle.main.path(forResource: configPlistPath, ofType: "plist") {
                if let plistData = FileManager.default.contents(atPath: plistPath) {
                    do {
                        if let plistDictionary =
                            try PropertyListSerialization
                                .propertyList(
                                    from: plistData,
                                    options: [],
                                    format: nil
                                ) as? [String: Any] {
                            debugPrint("Sucessfully loaded app config \(plistDictionary)")
                            return plistDictionary
                        }
                    } catch {
                        fatalError("Unable to read config from `\(configPlistPath).plist`: \(error)")
                    }
                } else {
                    fatalError("Unable to read config from `\(configPlistPath).plist`")
                }
            } else {
                fatalError("Unable to read config from `\(configPlistPath).plist`")
            }
            return [:]
        }.singleton
    }

    // Data source
    var githubApiLocalDataSource: Factory<GithubApiLocalDataSource> {
        Factory(self) { GithubApiLocalDataSourceImpl() }.singleton
    }
    var githubApiRemoteDataSource: Factory<GithubApiRemoteDataSource> {
        Factory(self) { GithubApiRemoteDataSourceImpl() }.singleton
    }

    // Setup repository
    var githubApiRepository: Factory<GithubApiRepository> {
        Factory(self) { GithubApiRepositoryImpl() }.singleton
    }
}

/// Domain layer
extension Container {
    // Setup use cases
    var getUserUseCase: Factory<GetUserUseCase> {
        Factory(self) { GetUserUseCaseImpl() }.singleton
    }
    var getUsersListUseCase: Factory<GetUsersListUseCase> {
        Factory(self) { GetUsersListUseCaseImpl() }.singleton
    }
    var getUserRepositoriesUseCase: Factory<GetUserRepositoriesListUseCase> {
        Factory(self) { GetUserRepositoriesListUseCaseImpl() }.singleton
    }
    var getRepositoryUseCase: Factory<GetRepositoryUseCase> {
        Factory(self) { GetRepositoryUseCaseImpl() }.singleton
    }
}

/// Presentation layer
extension Container {
    // Setup MVVM
    var userInfoViewModel: Factory<UserInfoViewModel> {
        Factory(self) { UserInfoViewModel() }
    }
    var userRepositoriesViewModel: Factory<UserRepositoriesViewModel> {
        Factory(self) { UserRepositoriesViewModel() }
    }
    var userRepositoryInfoViewModel: Factory<UserRepositoryInfoViewModel> {
        Factory(self) { UserRepositoryInfoViewModel() }
    }
    var usersListViewModel: Factory<UsersListViewModel> {
        Factory(self) { UsersListViewModel() }
    }
}
