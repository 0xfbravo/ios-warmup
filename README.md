# ios-warmup

Set of iOS project for a warm up

## github-apis

Basic project structure using Clean Architecture + MVVM (Presentation Layer)

Motivation:

- Easier to test
- Easier to re-use use cases, if it's necessary

### Flow

- *Home*: Default GitHub's API users list
- *User detail*: Page with more information about the selected user
- *Repository list*: Given an user, which repositories are open?
- *Repository detail*: Given an user and a repo, show it details

### Running

Just run it using github-apis.xcodeproj

### 3rd Party

- **Swiftlint**: To be honest, the code needs to be beautiful
- **Alamofire**: Http requests
- **Cuckoo**: Tests mock
- **Factory**: Dependency injection handler
- **Willow**: Logger
