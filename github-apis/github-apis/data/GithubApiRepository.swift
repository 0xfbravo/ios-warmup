//
//  GithubApiRepository.swift
//  github-apis
//
//  Created by 0xf on 19/08/23.
//

import Foundation
import Factory

protocol GithubApiRepository {
    
}

internal class GithubApiRepositoryImpl: GithubApiRepository {
    @Injected(\.githubApiLocalDataSource) private var localDataSource: GithubApiLocalDataSource
    @Injected(\.githubApiRemoteDataSource) private var remoteDataSource: GithubApiRemoteDataSource
}
