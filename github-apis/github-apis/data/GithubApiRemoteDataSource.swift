//
//  RemoteDataSource.swift
//  github-apis
//
//  Created by 0xf on 19/08/23.
//

import Foundation
import Factory

protocol GithubApiRemoteDataSource {
    
}

/// Created for remote operations only
internal class GithubApiRemoteDataSourceImpl: GithubApiRemoteDataSource {
    private let baseUrl: String
    private let token: String
    
    init() {
        baseUrl = Container.shared.config["GITHUB_BASE_URL"] as! String
        token = Container.shared.config["GITHUB_TOKEN"] as! String
    }
}
