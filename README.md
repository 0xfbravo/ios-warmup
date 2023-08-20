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

*If you're receiving API rating limit on GitHub free calls, I recomend you to create an [authorization token](https://docs.github.com/en/rest/apps/apps?apiVersion=2022-11-28) and put it on `Config.plist` under the key `GITHUB_BEARER_TOKEN``.*

### 3rd Party

- **Swiftlint**: To be honest, the code needs to be beautiful
- **Alamofire**: Http requests
- **Cuckoo**: Tests mock
- **Factory**: Dependency injection handler
- **Willow**: Logger
