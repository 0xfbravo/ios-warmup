// MARK: - Mocks generated from file: github-apis/data/GithubApiLocalDataSource.swift at 2023-08-20 16:34:25 +0000

//
//  LocalDataSource.swift
//  github-apis
//
//  Created by 0xf on 19/08/23.
//

import Cuckoo
@testable import github_apis

import Foundation






 class MockGithubApiLocalDataSource: GithubApiLocalDataSource, Cuckoo.ProtocolMock {
    
     typealias MocksType = GithubApiLocalDataSource
    
     typealias Stubbing = __StubbingProxy_GithubApiLocalDataSource
     typealias Verification = __VerificationProxy_GithubApiLocalDataSource

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: GithubApiLocalDataSource?

     func enableDefaultImplementation(_ stub: GithubApiLocalDataSource) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    

     struct __StubbingProxy_GithubApiLocalDataSource: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
    
         init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
    }

     struct __VerificationProxy_GithubApiLocalDataSource: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
    
         init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
    
        
    
        
    }
}


 class GithubApiLocalDataSourceStub: GithubApiLocalDataSource {
    

    

    
}










 class MockGithubApiLocalDataSourceImpl: GithubApiLocalDataSourceImpl, Cuckoo.ClassMock {
    
     typealias MocksType = GithubApiLocalDataSourceImpl
    
     typealias Stubbing = __StubbingProxy_GithubApiLocalDataSourceImpl
     typealias Verification = __VerificationProxy_GithubApiLocalDataSourceImpl

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: GithubApiLocalDataSourceImpl?

     func enableDefaultImplementation(_ stub: GithubApiLocalDataSourceImpl) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    

     struct __StubbingProxy_GithubApiLocalDataSourceImpl: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
    
         init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
    }

     struct __VerificationProxy_GithubApiLocalDataSourceImpl: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
    
         init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
    
        
    
        
    }
}


 class GithubApiLocalDataSourceImplStub: GithubApiLocalDataSourceImpl {
    

    

    
}





// MARK: - Mocks generated from file: github-apis/data/GithubApiRemoteDataSource.swift at 2023-08-20 16:34:25 +0000

//
//  RemoteDataSource.swift
//  github-apis
//
//  Created by 0xf on 19/08/23.
//

import Cuckoo
@testable import github_apis

import Alamofire
import Factory
import Foundation






 class MockGithubApiRemoteDataSource: GithubApiRemoteDataSource, Cuckoo.ProtocolMock {
    
     typealias MocksType = GithubApiRemoteDataSource
    
     typealias Stubbing = __StubbingProxy_GithubApiRemoteDataSource
     typealias Verification = __VerificationProxy_GithubApiRemoteDataSource

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: GithubApiRemoteDataSource?

     func enableDefaultImplementation(_ stub: GithubApiRemoteDataSource) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
    
     func getUsersList(_ handler: @escaping (DataResponse<[GitHubUserModel], AFError>) -> Void)  {
        
    return cuckoo_manager.call(
    """
    getUsersList(_: @escaping (DataResponse<[GitHubUserModel], AFError>) -> Void)
    """,
            parameters: (handler),
            escapingParameters: (handler),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.getUsersList(handler))
        
    }
    
    
    
    
    
     func getUser(username: String, _ handler: @escaping (DataResponse<GitHubUserModel, AFError>) -> Void)  {
        
    return cuckoo_manager.call(
    """
    getUser(username: String, _: @escaping (DataResponse<GitHubUserModel, AFError>) -> Void)
    """,
            parameters: (username, handler),
            escapingParameters: (username, handler),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.getUser(username: username, handler))
        
    }
    
    
    
    
    
     func getUserRepositoriesList(username: String, _ handler: @escaping (DataResponse<[GitHubRepositoryModel], AFError>) -> Void)  {
        
    return cuckoo_manager.call(
    """
    getUserRepositoriesList(username: String, _: @escaping (DataResponse<[GitHubRepositoryModel], AFError>) -> Void)
    """,
            parameters: (username, handler),
            escapingParameters: (username, handler),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.getUserRepositoriesList(username: username, handler))
        
    }
    
    
    
    
    
     func getRepository(username: String, repository: String, _ handler: @escaping (DataResponse<GitHubRepositoryModel, AFError>) -> Void)  {
        
    return cuckoo_manager.call(
    """
    getRepository(username: String, repository: String, _: @escaping (DataResponse<GitHubRepositoryModel, AFError>) -> Void)
    """,
            parameters: (username, repository, handler),
            escapingParameters: (username, repository, handler),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.getRepository(username: username, repository: repository, handler))
        
    }
    
    

     struct __StubbingProxy_GithubApiRemoteDataSource: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
    
         init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
        
        
        func getUsersList<M1: Cuckoo.Matchable>(_ handler: M1) -> Cuckoo.ProtocolStubNoReturnFunction<((DataResponse<[GitHubUserModel], AFError>) -> Void)> where M1.MatchedType == (DataResponse<[GitHubUserModel], AFError>) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<((DataResponse<[GitHubUserModel], AFError>) -> Void)>] = [wrap(matchable: handler) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockGithubApiRemoteDataSource.self, method:
    """
    getUsersList(_: @escaping (DataResponse<[GitHubUserModel], AFError>) -> Void)
    """, parameterMatchers: matchers))
        }
        
        
        
        
        func getUser<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(username: M1, _ handler: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(String, (DataResponse<GitHubUserModel, AFError>) -> Void)> where M1.MatchedType == String, M2.MatchedType == (DataResponse<GitHubUserModel, AFError>) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<(String, (DataResponse<GitHubUserModel, AFError>) -> Void)>] = [wrap(matchable: username) { $0.0 }, wrap(matchable: handler) { $0.1 }]
            return .init(stub: cuckoo_manager.createStub(for: MockGithubApiRemoteDataSource.self, method:
    """
    getUser(username: String, _: @escaping (DataResponse<GitHubUserModel, AFError>) -> Void)
    """, parameterMatchers: matchers))
        }
        
        
        
        
        func getUserRepositoriesList<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(username: M1, _ handler: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(String, (DataResponse<[GitHubRepositoryModel], AFError>) -> Void)> where M1.MatchedType == String, M2.MatchedType == (DataResponse<[GitHubRepositoryModel], AFError>) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<(String, (DataResponse<[GitHubRepositoryModel], AFError>) -> Void)>] = [wrap(matchable: username) { $0.0 }, wrap(matchable: handler) { $0.1 }]
            return .init(stub: cuckoo_manager.createStub(for: MockGithubApiRemoteDataSource.self, method:
    """
    getUserRepositoriesList(username: String, _: @escaping (DataResponse<[GitHubRepositoryModel], AFError>) -> Void)
    """, parameterMatchers: matchers))
        }
        
        
        
        
        func getRepository<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(username: M1, repository: M2, _ handler: M3) -> Cuckoo.ProtocolStubNoReturnFunction<(String, String, (DataResponse<GitHubRepositoryModel, AFError>) -> Void)> where M1.MatchedType == String, M2.MatchedType == String, M3.MatchedType == (DataResponse<GitHubRepositoryModel, AFError>) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<(String, String, (DataResponse<GitHubRepositoryModel, AFError>) -> Void)>] = [wrap(matchable: username) { $0.0 }, wrap(matchable: repository) { $0.1 }, wrap(matchable: handler) { $0.2 }]
            return .init(stub: cuckoo_manager.createStub(for: MockGithubApiRemoteDataSource.self, method:
    """
    getRepository(username: String, repository: String, _: @escaping (DataResponse<GitHubRepositoryModel, AFError>) -> Void)
    """, parameterMatchers: matchers))
        }
        
        
    }

     struct __VerificationProxy_GithubApiRemoteDataSource: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
    
         init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
    
        
    
        
        
        
        @discardableResult
        func getUsersList<M1: Cuckoo.Matchable>(_ handler: M1) -> Cuckoo.__DoNotUse<((DataResponse<[GitHubUserModel], AFError>) -> Void), Void> where M1.MatchedType == (DataResponse<[GitHubUserModel], AFError>) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<((DataResponse<[GitHubUserModel], AFError>) -> Void)>] = [wrap(matchable: handler) { $0 }]
            return cuckoo_manager.verify(
    """
    getUsersList(_: @escaping (DataResponse<[GitHubUserModel], AFError>) -> Void)
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
        
        
        @discardableResult
        func getUser<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(username: M1, _ handler: M2) -> Cuckoo.__DoNotUse<(String, (DataResponse<GitHubUserModel, AFError>) -> Void), Void> where M1.MatchedType == String, M2.MatchedType == (DataResponse<GitHubUserModel, AFError>) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<(String, (DataResponse<GitHubUserModel, AFError>) -> Void)>] = [wrap(matchable: username) { $0.0 }, wrap(matchable: handler) { $0.1 }]
            return cuckoo_manager.verify(
    """
    getUser(username: String, _: @escaping (DataResponse<GitHubUserModel, AFError>) -> Void)
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
        
        
        @discardableResult
        func getUserRepositoriesList<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(username: M1, _ handler: M2) -> Cuckoo.__DoNotUse<(String, (DataResponse<[GitHubRepositoryModel], AFError>) -> Void), Void> where M1.MatchedType == String, M2.MatchedType == (DataResponse<[GitHubRepositoryModel], AFError>) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<(String, (DataResponse<[GitHubRepositoryModel], AFError>) -> Void)>] = [wrap(matchable: username) { $0.0 }, wrap(matchable: handler) { $0.1 }]
            return cuckoo_manager.verify(
    """
    getUserRepositoriesList(username: String, _: @escaping (DataResponse<[GitHubRepositoryModel], AFError>) -> Void)
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
        
        
        @discardableResult
        func getRepository<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(username: M1, repository: M2, _ handler: M3) -> Cuckoo.__DoNotUse<(String, String, (DataResponse<GitHubRepositoryModel, AFError>) -> Void), Void> where M1.MatchedType == String, M2.MatchedType == String, M3.MatchedType == (DataResponse<GitHubRepositoryModel, AFError>) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<(String, String, (DataResponse<GitHubRepositoryModel, AFError>) -> Void)>] = [wrap(matchable: username) { $0.0 }, wrap(matchable: repository) { $0.1 }, wrap(matchable: handler) { $0.2 }]
            return cuckoo_manager.verify(
    """
    getRepository(username: String, repository: String, _: @escaping (DataResponse<GitHubRepositoryModel, AFError>) -> Void)
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
    }
}


 class GithubApiRemoteDataSourceStub: GithubApiRemoteDataSource {
    

    

    
    
    
    
     func getUsersList(_ handler: @escaping (DataResponse<[GitHubUserModel], AFError>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    
    
    
    
     func getUser(username: String, _ handler: @escaping (DataResponse<GitHubUserModel, AFError>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    
    
    
    
     func getUserRepositoriesList(username: String, _ handler: @escaping (DataResponse<[GitHubRepositoryModel], AFError>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    
    
    
    
     func getRepository(username: String, repository: String, _ handler: @escaping (DataResponse<GitHubRepositoryModel, AFError>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    
}










 class MockGithubApiRemoteDataSourceImpl: GithubApiRemoteDataSourceImpl, Cuckoo.ClassMock {
    
     typealias MocksType = GithubApiRemoteDataSourceImpl
    
     typealias Stubbing = __StubbingProxy_GithubApiRemoteDataSourceImpl
     typealias Verification = __VerificationProxy_GithubApiRemoteDataSourceImpl

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: GithubApiRemoteDataSourceImpl?

     func enableDefaultImplementation(_ stub: GithubApiRemoteDataSourceImpl) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
    
     override func getUsersList(_ handler: @escaping (DataResponse<[GitHubUserModel], AFError>) -> Void)  {
        
    return cuckoo_manager.call(
    """
    getUsersList(_: @escaping (DataResponse<[GitHubUserModel], AFError>) -> Void)
    """,
            parameters: (handler),
            escapingParameters: (handler),
            superclassCall:
                
                super.getUsersList(handler)
                ,
            defaultCall: __defaultImplStub!.getUsersList(handler))
        
    }
    
    
    
    
    
     override func getUser(username: String, _ handler: @escaping (DataResponse<GitHubUserModel, AFError>) -> Void)  {
        
    return cuckoo_manager.call(
    """
    getUser(username: String, _: @escaping (DataResponse<GitHubUserModel, AFError>) -> Void)
    """,
            parameters: (username, handler),
            escapingParameters: (username, handler),
            superclassCall:
                
                super.getUser(username: username, handler)
                ,
            defaultCall: __defaultImplStub!.getUser(username: username, handler))
        
    }
    
    
    
    
    
     override func getUserRepositoriesList(username: String, _ handler: @escaping (DataResponse<[GitHubRepositoryModel], AFError>) -> Void)  {
        
    return cuckoo_manager.call(
    """
    getUserRepositoriesList(username: String, _: @escaping (DataResponse<[GitHubRepositoryModel], AFError>) -> Void)
    """,
            parameters: (username, handler),
            escapingParameters: (username, handler),
            superclassCall:
                
                super.getUserRepositoriesList(username: username, handler)
                ,
            defaultCall: __defaultImplStub!.getUserRepositoriesList(username: username, handler))
        
    }
    
    
    
    
    
     override func getRepository(username: String, repository: String, _ handler: @escaping (DataResponse<GitHubRepositoryModel, AFError>) -> Void)  {
        
    return cuckoo_manager.call(
    """
    getRepository(username: String, repository: String, _: @escaping (DataResponse<GitHubRepositoryModel, AFError>) -> Void)
    """,
            parameters: (username, repository, handler),
            escapingParameters: (username, repository, handler),
            superclassCall:
                
                super.getRepository(username: username, repository: repository, handler)
                ,
            defaultCall: __defaultImplStub!.getRepository(username: username, repository: repository, handler))
        
    }
    
    

     struct __StubbingProxy_GithubApiRemoteDataSourceImpl: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
    
         init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
        
        
        func getUsersList<M1: Cuckoo.Matchable>(_ handler: M1) -> Cuckoo.ClassStubNoReturnFunction<((DataResponse<[GitHubUserModel], AFError>) -> Void)> where M1.MatchedType == (DataResponse<[GitHubUserModel], AFError>) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<((DataResponse<[GitHubUserModel], AFError>) -> Void)>] = [wrap(matchable: handler) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockGithubApiRemoteDataSourceImpl.self, method:
    """
    getUsersList(_: @escaping (DataResponse<[GitHubUserModel], AFError>) -> Void)
    """, parameterMatchers: matchers))
        }
        
        
        
        
        func getUser<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(username: M1, _ handler: M2) -> Cuckoo.ClassStubNoReturnFunction<(String, (DataResponse<GitHubUserModel, AFError>) -> Void)> where M1.MatchedType == String, M2.MatchedType == (DataResponse<GitHubUserModel, AFError>) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<(String, (DataResponse<GitHubUserModel, AFError>) -> Void)>] = [wrap(matchable: username) { $0.0 }, wrap(matchable: handler) { $0.1 }]
            return .init(stub: cuckoo_manager.createStub(for: MockGithubApiRemoteDataSourceImpl.self, method:
    """
    getUser(username: String, _: @escaping (DataResponse<GitHubUserModel, AFError>) -> Void)
    """, parameterMatchers: matchers))
        }
        
        
        
        
        func getUserRepositoriesList<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(username: M1, _ handler: M2) -> Cuckoo.ClassStubNoReturnFunction<(String, (DataResponse<[GitHubRepositoryModel], AFError>) -> Void)> where M1.MatchedType == String, M2.MatchedType == (DataResponse<[GitHubRepositoryModel], AFError>) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<(String, (DataResponse<[GitHubRepositoryModel], AFError>) -> Void)>] = [wrap(matchable: username) { $0.0 }, wrap(matchable: handler) { $0.1 }]
            return .init(stub: cuckoo_manager.createStub(for: MockGithubApiRemoteDataSourceImpl.self, method:
    """
    getUserRepositoriesList(username: String, _: @escaping (DataResponse<[GitHubRepositoryModel], AFError>) -> Void)
    """, parameterMatchers: matchers))
        }
        
        
        
        
        func getRepository<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(username: M1, repository: M2, _ handler: M3) -> Cuckoo.ClassStubNoReturnFunction<(String, String, (DataResponse<GitHubRepositoryModel, AFError>) -> Void)> where M1.MatchedType == String, M2.MatchedType == String, M3.MatchedType == (DataResponse<GitHubRepositoryModel, AFError>) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<(String, String, (DataResponse<GitHubRepositoryModel, AFError>) -> Void)>] = [wrap(matchable: username) { $0.0 }, wrap(matchable: repository) { $0.1 }, wrap(matchable: handler) { $0.2 }]
            return .init(stub: cuckoo_manager.createStub(for: MockGithubApiRemoteDataSourceImpl.self, method:
    """
    getRepository(username: String, repository: String, _: @escaping (DataResponse<GitHubRepositoryModel, AFError>) -> Void)
    """, parameterMatchers: matchers))
        }
        
        
    }

     struct __VerificationProxy_GithubApiRemoteDataSourceImpl: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
    
         init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
    
        
    
        
        
        
        @discardableResult
        func getUsersList<M1: Cuckoo.Matchable>(_ handler: M1) -> Cuckoo.__DoNotUse<((DataResponse<[GitHubUserModel], AFError>) -> Void), Void> where M1.MatchedType == (DataResponse<[GitHubUserModel], AFError>) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<((DataResponse<[GitHubUserModel], AFError>) -> Void)>] = [wrap(matchable: handler) { $0 }]
            return cuckoo_manager.verify(
    """
    getUsersList(_: @escaping (DataResponse<[GitHubUserModel], AFError>) -> Void)
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
        
        
        @discardableResult
        func getUser<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(username: M1, _ handler: M2) -> Cuckoo.__DoNotUse<(String, (DataResponse<GitHubUserModel, AFError>) -> Void), Void> where M1.MatchedType == String, M2.MatchedType == (DataResponse<GitHubUserModel, AFError>) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<(String, (DataResponse<GitHubUserModel, AFError>) -> Void)>] = [wrap(matchable: username) { $0.0 }, wrap(matchable: handler) { $0.1 }]
            return cuckoo_manager.verify(
    """
    getUser(username: String, _: @escaping (DataResponse<GitHubUserModel, AFError>) -> Void)
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
        
        
        @discardableResult
        func getUserRepositoriesList<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(username: M1, _ handler: M2) -> Cuckoo.__DoNotUse<(String, (DataResponse<[GitHubRepositoryModel], AFError>) -> Void), Void> where M1.MatchedType == String, M2.MatchedType == (DataResponse<[GitHubRepositoryModel], AFError>) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<(String, (DataResponse<[GitHubRepositoryModel], AFError>) -> Void)>] = [wrap(matchable: username) { $0.0 }, wrap(matchable: handler) { $0.1 }]
            return cuckoo_manager.verify(
    """
    getUserRepositoriesList(username: String, _: @escaping (DataResponse<[GitHubRepositoryModel], AFError>) -> Void)
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
        
        
        @discardableResult
        func getRepository<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(username: M1, repository: M2, _ handler: M3) -> Cuckoo.__DoNotUse<(String, String, (DataResponse<GitHubRepositoryModel, AFError>) -> Void), Void> where M1.MatchedType == String, M2.MatchedType == String, M3.MatchedType == (DataResponse<GitHubRepositoryModel, AFError>) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<(String, String, (DataResponse<GitHubRepositoryModel, AFError>) -> Void)>] = [wrap(matchable: username) { $0.0 }, wrap(matchable: repository) { $0.1 }, wrap(matchable: handler) { $0.2 }]
            return cuckoo_manager.verify(
    """
    getRepository(username: String, repository: String, _: @escaping (DataResponse<GitHubRepositoryModel, AFError>) -> Void)
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
    }
}


 class GithubApiRemoteDataSourceImplStub: GithubApiRemoteDataSourceImpl {
    

    

    
    
    
    
     override func getUsersList(_ handler: @escaping (DataResponse<[GitHubUserModel], AFError>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    
    
    
    
     override func getUser(username: String, _ handler: @escaping (DataResponse<GitHubUserModel, AFError>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    
    
    
    
     override func getUserRepositoriesList(username: String, _ handler: @escaping (DataResponse<[GitHubRepositoryModel], AFError>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    
    
    
    
     override func getRepository(username: String, repository: String, _ handler: @escaping (DataResponse<GitHubRepositoryModel, AFError>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    
}





// MARK: - Mocks generated from file: github-apis/data/GithubApiRepository.swift at 2023-08-20 16:34:25 +0000

//
//  GithubApiRepository.swift
//  github-apis
//
//  Created by 0xf on 19/08/23.
//

import Cuckoo
@testable import github_apis

import Factory
import Foundation






 class MockGithubApiRepository: GithubApiRepository, Cuckoo.ProtocolMock {
    
     typealias MocksType = GithubApiRepository
    
     typealias Stubbing = __StubbingProxy_GithubApiRepository
     typealias Verification = __VerificationProxy_GithubApiRepository

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: GithubApiRepository?

     func enableDefaultImplementation(_ stub: GithubApiRepository) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
    
     func getUsersList(_ handler: @escaping (DataLayerResponse<[GitHubUserModel], Error>) -> Void)  {
        
    return cuckoo_manager.call(
    """
    getUsersList(_: @escaping (DataLayerResponse<[GitHubUserModel], Error>) -> Void)
    """,
            parameters: (handler),
            escapingParameters: (handler),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.getUsersList(handler))
        
    }
    
    
    
    
    
     func getUser(username: String, _ handler: @escaping (DataLayerResponse<GitHubUserModel, Error>) -> Void)  {
        
    return cuckoo_manager.call(
    """
    getUser(username: String, _: @escaping (DataLayerResponse<GitHubUserModel, Error>) -> Void)
    """,
            parameters: (username, handler),
            escapingParameters: (username, handler),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.getUser(username: username, handler))
        
    }
    
    
    
    
    
     func getUserRepositoriesList(username: String, _ handler: @escaping (DataLayerResponse<[GitHubRepositoryModel], Error>) -> Void)  {
        
    return cuckoo_manager.call(
    """
    getUserRepositoriesList(username: String, _: @escaping (DataLayerResponse<[GitHubRepositoryModel], Error>) -> Void)
    """,
            parameters: (username, handler),
            escapingParameters: (username, handler),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.getUserRepositoriesList(username: username, handler))
        
    }
    
    
    
    
    
     func getRepository(username: String, repository: String, _ handler: @escaping (DataLayerResponse<GitHubRepositoryModel, Error>) -> Void)  {
        
    return cuckoo_manager.call(
    """
    getRepository(username: String, repository: String, _: @escaping (DataLayerResponse<GitHubRepositoryModel, Error>) -> Void)
    """,
            parameters: (username, repository, handler),
            escapingParameters: (username, repository, handler),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.getRepository(username: username, repository: repository, handler))
        
    }
    
    

     struct __StubbingProxy_GithubApiRepository: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
    
         init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
        
        
        func getUsersList<M1: Cuckoo.Matchable>(_ handler: M1) -> Cuckoo.ProtocolStubNoReturnFunction<((DataLayerResponse<[GitHubUserModel], Error>) -> Void)> where M1.MatchedType == (DataLayerResponse<[GitHubUserModel], Error>) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<((DataLayerResponse<[GitHubUserModel], Error>) -> Void)>] = [wrap(matchable: handler) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockGithubApiRepository.self, method:
    """
    getUsersList(_: @escaping (DataLayerResponse<[GitHubUserModel], Error>) -> Void)
    """, parameterMatchers: matchers))
        }
        
        
        
        
        func getUser<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(username: M1, _ handler: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(String, (DataLayerResponse<GitHubUserModel, Error>) -> Void)> where M1.MatchedType == String, M2.MatchedType == (DataLayerResponse<GitHubUserModel, Error>) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<(String, (DataLayerResponse<GitHubUserModel, Error>) -> Void)>] = [wrap(matchable: username) { $0.0 }, wrap(matchable: handler) { $0.1 }]
            return .init(stub: cuckoo_manager.createStub(for: MockGithubApiRepository.self, method:
    """
    getUser(username: String, _: @escaping (DataLayerResponse<GitHubUserModel, Error>) -> Void)
    """, parameterMatchers: matchers))
        }
        
        
        
        
        func getUserRepositoriesList<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(username: M1, _ handler: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(String, (DataLayerResponse<[GitHubRepositoryModel], Error>) -> Void)> where M1.MatchedType == String, M2.MatchedType == (DataLayerResponse<[GitHubRepositoryModel], Error>) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<(String, (DataLayerResponse<[GitHubRepositoryModel], Error>) -> Void)>] = [wrap(matchable: username) { $0.0 }, wrap(matchable: handler) { $0.1 }]
            return .init(stub: cuckoo_manager.createStub(for: MockGithubApiRepository.self, method:
    """
    getUserRepositoriesList(username: String, _: @escaping (DataLayerResponse<[GitHubRepositoryModel], Error>) -> Void)
    """, parameterMatchers: matchers))
        }
        
        
        
        
        func getRepository<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(username: M1, repository: M2, _ handler: M3) -> Cuckoo.ProtocolStubNoReturnFunction<(String, String, (DataLayerResponse<GitHubRepositoryModel, Error>) -> Void)> where M1.MatchedType == String, M2.MatchedType == String, M3.MatchedType == (DataLayerResponse<GitHubRepositoryModel, Error>) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<(String, String, (DataLayerResponse<GitHubRepositoryModel, Error>) -> Void)>] = [wrap(matchable: username) { $0.0 }, wrap(matchable: repository) { $0.1 }, wrap(matchable: handler) { $0.2 }]
            return .init(stub: cuckoo_manager.createStub(for: MockGithubApiRepository.self, method:
    """
    getRepository(username: String, repository: String, _: @escaping (DataLayerResponse<GitHubRepositoryModel, Error>) -> Void)
    """, parameterMatchers: matchers))
        }
        
        
    }

     struct __VerificationProxy_GithubApiRepository: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
    
         init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
    
        
    
        
        
        
        @discardableResult
        func getUsersList<M1: Cuckoo.Matchable>(_ handler: M1) -> Cuckoo.__DoNotUse<((DataLayerResponse<[GitHubUserModel], Error>) -> Void), Void> where M1.MatchedType == (DataLayerResponse<[GitHubUserModel], Error>) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<((DataLayerResponse<[GitHubUserModel], Error>) -> Void)>] = [wrap(matchable: handler) { $0 }]
            return cuckoo_manager.verify(
    """
    getUsersList(_: @escaping (DataLayerResponse<[GitHubUserModel], Error>) -> Void)
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
        
        
        @discardableResult
        func getUser<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(username: M1, _ handler: M2) -> Cuckoo.__DoNotUse<(String, (DataLayerResponse<GitHubUserModel, Error>) -> Void), Void> where M1.MatchedType == String, M2.MatchedType == (DataLayerResponse<GitHubUserModel, Error>) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<(String, (DataLayerResponse<GitHubUserModel, Error>) -> Void)>] = [wrap(matchable: username) { $0.0 }, wrap(matchable: handler) { $0.1 }]
            return cuckoo_manager.verify(
    """
    getUser(username: String, _: @escaping (DataLayerResponse<GitHubUserModel, Error>) -> Void)
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
        
        
        @discardableResult
        func getUserRepositoriesList<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(username: M1, _ handler: M2) -> Cuckoo.__DoNotUse<(String, (DataLayerResponse<[GitHubRepositoryModel], Error>) -> Void), Void> where M1.MatchedType == String, M2.MatchedType == (DataLayerResponse<[GitHubRepositoryModel], Error>) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<(String, (DataLayerResponse<[GitHubRepositoryModel], Error>) -> Void)>] = [wrap(matchable: username) { $0.0 }, wrap(matchable: handler) { $0.1 }]
            return cuckoo_manager.verify(
    """
    getUserRepositoriesList(username: String, _: @escaping (DataLayerResponse<[GitHubRepositoryModel], Error>) -> Void)
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
        
        
        @discardableResult
        func getRepository<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(username: M1, repository: M2, _ handler: M3) -> Cuckoo.__DoNotUse<(String, String, (DataLayerResponse<GitHubRepositoryModel, Error>) -> Void), Void> where M1.MatchedType == String, M2.MatchedType == String, M3.MatchedType == (DataLayerResponse<GitHubRepositoryModel, Error>) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<(String, String, (DataLayerResponse<GitHubRepositoryModel, Error>) -> Void)>] = [wrap(matchable: username) { $0.0 }, wrap(matchable: repository) { $0.1 }, wrap(matchable: handler) { $0.2 }]
            return cuckoo_manager.verify(
    """
    getRepository(username: String, repository: String, _: @escaping (DataLayerResponse<GitHubRepositoryModel, Error>) -> Void)
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
    }
}


 class GithubApiRepositoryStub: GithubApiRepository {
    

    

    
    
    
    
     func getUsersList(_ handler: @escaping (DataLayerResponse<[GitHubUserModel], Error>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    
    
    
    
     func getUser(username: String, _ handler: @escaping (DataLayerResponse<GitHubUserModel, Error>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    
    
    
    
     func getUserRepositoriesList(username: String, _ handler: @escaping (DataLayerResponse<[GitHubRepositoryModel], Error>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    
    
    
    
     func getRepository(username: String, repository: String, _ handler: @escaping (DataLayerResponse<GitHubRepositoryModel, Error>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    
}










 class MockGithubApiRepositoryImpl: GithubApiRepositoryImpl, Cuckoo.ClassMock {
    
     typealias MocksType = GithubApiRepositoryImpl
    
     typealias Stubbing = __StubbingProxy_GithubApiRepositoryImpl
     typealias Verification = __VerificationProxy_GithubApiRepositoryImpl

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: GithubApiRepositoryImpl?

     func enableDefaultImplementation(_ stub: GithubApiRepositoryImpl) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
    
     override func getUsersList(_ handler: @escaping (DataLayerResponse<[GitHubUserModel], Error>) -> Void)  {
        
    return cuckoo_manager.call(
    """
    getUsersList(_: @escaping (DataLayerResponse<[GitHubUserModel], Error>) -> Void)
    """,
            parameters: (handler),
            escapingParameters: (handler),
            superclassCall:
                
                super.getUsersList(handler)
                ,
            defaultCall: __defaultImplStub!.getUsersList(handler))
        
    }
    
    
    
    
    
     override func getUser(username: String, _ handler: @escaping (DataLayerResponse<GitHubUserModel, Error>) -> Void)  {
        
    return cuckoo_manager.call(
    """
    getUser(username: String, _: @escaping (DataLayerResponse<GitHubUserModel, Error>) -> Void)
    """,
            parameters: (username, handler),
            escapingParameters: (username, handler),
            superclassCall:
                
                super.getUser(username: username, handler)
                ,
            defaultCall: __defaultImplStub!.getUser(username: username, handler))
        
    }
    
    
    
    
    
     override func getUserRepositoriesList(username: String, _ handler: @escaping (DataLayerResponse<[GitHubRepositoryModel], Error>) -> Void)  {
        
    return cuckoo_manager.call(
    """
    getUserRepositoriesList(username: String, _: @escaping (DataLayerResponse<[GitHubRepositoryModel], Error>) -> Void)
    """,
            parameters: (username, handler),
            escapingParameters: (username, handler),
            superclassCall:
                
                super.getUserRepositoriesList(username: username, handler)
                ,
            defaultCall: __defaultImplStub!.getUserRepositoriesList(username: username, handler))
        
    }
    
    
    
    
    
     override func getRepository(username: String, repository: String, _ handler: @escaping (DataLayerResponse<GitHubRepositoryModel, Error>) -> Void)  {
        
    return cuckoo_manager.call(
    """
    getRepository(username: String, repository: String, _: @escaping (DataLayerResponse<GitHubRepositoryModel, Error>) -> Void)
    """,
            parameters: (username, repository, handler),
            escapingParameters: (username, repository, handler),
            superclassCall:
                
                super.getRepository(username: username, repository: repository, handler)
                ,
            defaultCall: __defaultImplStub!.getRepository(username: username, repository: repository, handler))
        
    }
    
    

     struct __StubbingProxy_GithubApiRepositoryImpl: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
    
         init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
        
        
        func getUsersList<M1: Cuckoo.Matchable>(_ handler: M1) -> Cuckoo.ClassStubNoReturnFunction<((DataLayerResponse<[GitHubUserModel], Error>) -> Void)> where M1.MatchedType == (DataLayerResponse<[GitHubUserModel], Error>) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<((DataLayerResponse<[GitHubUserModel], Error>) -> Void)>] = [wrap(matchable: handler) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockGithubApiRepositoryImpl.self, method:
    """
    getUsersList(_: @escaping (DataLayerResponse<[GitHubUserModel], Error>) -> Void)
    """, parameterMatchers: matchers))
        }
        
        
        
        
        func getUser<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(username: M1, _ handler: M2) -> Cuckoo.ClassStubNoReturnFunction<(String, (DataLayerResponse<GitHubUserModel, Error>) -> Void)> where M1.MatchedType == String, M2.MatchedType == (DataLayerResponse<GitHubUserModel, Error>) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<(String, (DataLayerResponse<GitHubUserModel, Error>) -> Void)>] = [wrap(matchable: username) { $0.0 }, wrap(matchable: handler) { $0.1 }]
            return .init(stub: cuckoo_manager.createStub(for: MockGithubApiRepositoryImpl.self, method:
    """
    getUser(username: String, _: @escaping (DataLayerResponse<GitHubUserModel, Error>) -> Void)
    """, parameterMatchers: matchers))
        }
        
        
        
        
        func getUserRepositoriesList<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(username: M1, _ handler: M2) -> Cuckoo.ClassStubNoReturnFunction<(String, (DataLayerResponse<[GitHubRepositoryModel], Error>) -> Void)> where M1.MatchedType == String, M2.MatchedType == (DataLayerResponse<[GitHubRepositoryModel], Error>) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<(String, (DataLayerResponse<[GitHubRepositoryModel], Error>) -> Void)>] = [wrap(matchable: username) { $0.0 }, wrap(matchable: handler) { $0.1 }]
            return .init(stub: cuckoo_manager.createStub(for: MockGithubApiRepositoryImpl.self, method:
    """
    getUserRepositoriesList(username: String, _: @escaping (DataLayerResponse<[GitHubRepositoryModel], Error>) -> Void)
    """, parameterMatchers: matchers))
        }
        
        
        
        
        func getRepository<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(username: M1, repository: M2, _ handler: M3) -> Cuckoo.ClassStubNoReturnFunction<(String, String, (DataLayerResponse<GitHubRepositoryModel, Error>) -> Void)> where M1.MatchedType == String, M2.MatchedType == String, M3.MatchedType == (DataLayerResponse<GitHubRepositoryModel, Error>) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<(String, String, (DataLayerResponse<GitHubRepositoryModel, Error>) -> Void)>] = [wrap(matchable: username) { $0.0 }, wrap(matchable: repository) { $0.1 }, wrap(matchable: handler) { $0.2 }]
            return .init(stub: cuckoo_manager.createStub(for: MockGithubApiRepositoryImpl.self, method:
    """
    getRepository(username: String, repository: String, _: @escaping (DataLayerResponse<GitHubRepositoryModel, Error>) -> Void)
    """, parameterMatchers: matchers))
        }
        
        
    }

     struct __VerificationProxy_GithubApiRepositoryImpl: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
    
         init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
    
        
    
        
        
        
        @discardableResult
        func getUsersList<M1: Cuckoo.Matchable>(_ handler: M1) -> Cuckoo.__DoNotUse<((DataLayerResponse<[GitHubUserModel], Error>) -> Void), Void> where M1.MatchedType == (DataLayerResponse<[GitHubUserModel], Error>) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<((DataLayerResponse<[GitHubUserModel], Error>) -> Void)>] = [wrap(matchable: handler) { $0 }]
            return cuckoo_manager.verify(
    """
    getUsersList(_: @escaping (DataLayerResponse<[GitHubUserModel], Error>) -> Void)
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
        
        
        @discardableResult
        func getUser<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(username: M1, _ handler: M2) -> Cuckoo.__DoNotUse<(String, (DataLayerResponse<GitHubUserModel, Error>) -> Void), Void> where M1.MatchedType == String, M2.MatchedType == (DataLayerResponse<GitHubUserModel, Error>) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<(String, (DataLayerResponse<GitHubUserModel, Error>) -> Void)>] = [wrap(matchable: username) { $0.0 }, wrap(matchable: handler) { $0.1 }]
            return cuckoo_manager.verify(
    """
    getUser(username: String, _: @escaping (DataLayerResponse<GitHubUserModel, Error>) -> Void)
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
        
        
        @discardableResult
        func getUserRepositoriesList<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(username: M1, _ handler: M2) -> Cuckoo.__DoNotUse<(String, (DataLayerResponse<[GitHubRepositoryModel], Error>) -> Void), Void> where M1.MatchedType == String, M2.MatchedType == (DataLayerResponse<[GitHubRepositoryModel], Error>) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<(String, (DataLayerResponse<[GitHubRepositoryModel], Error>) -> Void)>] = [wrap(matchable: username) { $0.0 }, wrap(matchable: handler) { $0.1 }]
            return cuckoo_manager.verify(
    """
    getUserRepositoriesList(username: String, _: @escaping (DataLayerResponse<[GitHubRepositoryModel], Error>) -> Void)
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
        
        
        @discardableResult
        func getRepository<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(username: M1, repository: M2, _ handler: M3) -> Cuckoo.__DoNotUse<(String, String, (DataLayerResponse<GitHubRepositoryModel, Error>) -> Void), Void> where M1.MatchedType == String, M2.MatchedType == String, M3.MatchedType == (DataLayerResponse<GitHubRepositoryModel, Error>) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<(String, String, (DataLayerResponse<GitHubRepositoryModel, Error>) -> Void)>] = [wrap(matchable: username) { $0.0 }, wrap(matchable: repository) { $0.1 }, wrap(matchable: handler) { $0.2 }]
            return cuckoo_manager.verify(
    """
    getRepository(username: String, repository: String, _: @escaping (DataLayerResponse<GitHubRepositoryModel, Error>) -> Void)
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
    }
}


 class GithubApiRepositoryImplStub: GithubApiRepositoryImpl {
    

    

    
    
    
    
     override func getUsersList(_ handler: @escaping (DataLayerResponse<[GitHubUserModel], Error>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    
    
    
    
     override func getUser(username: String, _ handler: @escaping (DataLayerResponse<GitHubUserModel, Error>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    
    
    
    
     override func getUserRepositoriesList(username: String, _ handler: @escaping (DataLayerResponse<[GitHubRepositoryModel], Error>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    
    
    
    
     override func getRepository(username: String, repository: String, _ handler: @escaping (DataLayerResponse<GitHubRepositoryModel, Error>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    
}




