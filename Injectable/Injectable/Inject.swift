//
//  Created by Maciej Gorecki on 01/12/2020.
//

@propertyWrapper
struct Inject<T: Injectable> {
    let wrappedValue: T
    
    init() {
        wrappedValue = Resolver.shared.resolve()
    }
}
