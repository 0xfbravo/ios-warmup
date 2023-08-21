//
//  GithubApiRemoteDataSourceTests.swift
//  github-apisTests
//
//  Created by 0xf on 19/08/23.
//

import XCTest
@testable import Cuckoo
@testable import Alamofire
@testable import github_apis
@testable import Factory

final class GithubApiRemoteDataSourceTests: XCTestCase {

    override class func setUp() {
        Container.shared.reset()
    }

    func testEmptyGetUsersList() throws {
//        let mock = MockGithubApiRemoteDataSource()
//        stub(mock) { stub in
//            stub.getUsersList().then { _ in
//                return DataResponse<[UserModel], AFError>(
//                    request: nil,
//                    response: nil,
//                    data: nil,
//                    metrics: nil,
//                    serializationDuration: TimeInterval(),
//                    result: Result(
//                        value: [],
//                        error: nil
//                    )
//                )
//            }
//        }
//
//        mock.getUsersList { response in
//            XCTAssertNotNil(response.value)
//            XCTAssertTrue(response.value!.isEmpty)
//        }
    }

}
