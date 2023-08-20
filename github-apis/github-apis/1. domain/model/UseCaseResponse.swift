//
//  UseCaseResponse.swift
//  github-apis
//
//  Created by 0xf on 19/08/23.
//

import Foundation

struct UseCaseResponse<Success, Failure: Error> {
    public let success: Success?
    public let error: Failure?
}
