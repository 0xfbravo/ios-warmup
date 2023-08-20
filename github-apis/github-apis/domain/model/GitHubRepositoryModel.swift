//
//  GitHubRepositoryModel.swift
//  github-apis
//
//  Created by 0xf on 19/08/23.
//

import Foundation

struct GitHubRepositoryModel: Codable, Identifiable {
    let id: Int
    let nodeId: String
    let name: String
    let htmlUrl: String
    let url: String
    let description: String?
    let createdAt: String
    let updatedAt: String
    let pushedAt: String
    let gitUrl: String
    let sshUrl: String
    let language: String?
    let forksCount: Int?

    enum CodingKeys: String, CodingKey {
        case id
        case nodeId = "node_id"
        case name = "name"
        case url
        case htmlUrl = "html_url"
        case description = "description"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case pushedAt = "pushed_at"
        case gitUrl = "git_url"
        case sshUrl = "ssh_url"
        case language = "language"
        case forksCount = "forks_count"
    }
}
