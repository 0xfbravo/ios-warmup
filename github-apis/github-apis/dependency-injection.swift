//
//  dependency-injection.swift
//  github-apis
//
//  Created by 0xf on 19/08/23.
//

import Foundation
import Factory

/// Data layer
extension Container {
    /// Reading from .plist, but the better approach is
    /// receive this from a secure storage or remote config like Firebase
    var config: [String: Any] {
        let configPlistPath = "Config"
        debugPrint("Reading initial app config from \(configPlistPath).plist")
        if let plistPath = Bundle.main.path(forResource: configPlistPath, ofType: "plist") {
            if let plistData = FileManager.default.contents(atPath: plistPath) {
                do {
                    if let plistDictionary = try PropertyListSerialization.propertyList(from: plistData, options: [], format: nil) as? [String: Any] {
                        debugPrint("Sucessfully loaded app config \(plistDictionary)")
                        return plistDictionary;
                    }
                } catch {
                    debugPrint("Unable to read config from `\(configPlistPath).plist`: \(error)")
                    exit(1)
                }
            } else {
                debugPrint("Unable to read config from `\(configPlistPath).plist`")
                exit(1)
            }
        } else {
            debugPrint("Unable to read config from `\(configPlistPath).plist`")
            exit(1)
        }
        return [:];
    }
    
    // Data source
    var githubApiLocalDataSource: Factory<GithubApiLocalDataSource> {
        Factory(self) { GithubApiLocalDataSourceImpl() }
    }
    var githubApiRemoteDataSource: Factory<GithubApiRemoteDataSource> {
        Factory(self) { GithubApiRemoteDataSourceImpl() }
    }
    
    // Setup repository
    var githubApiRepository: Factory<GithubApiRepository> {
        Factory(self) { GithubApiRepositoryImpl() }
    }
}

/// Domain layer
extension Container {
    // Setup use cases
}

/// Presentation layer
extension Container {
    // Setup MVVM
}
