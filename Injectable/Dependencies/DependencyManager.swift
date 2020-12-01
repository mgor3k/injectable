//
//  Created by Maciej Gorecki on 01/12/2020.
//

class DependencyManager {
    init(
        networkService: NetworkService = .init()
    ) {
        let resolver = Resolver.shared
        resolver.add(networkService)
    }
}
