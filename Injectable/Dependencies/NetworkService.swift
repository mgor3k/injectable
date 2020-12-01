//
//  Created by Maciej Gorecki on 01/12/2020.
//

import Foundation
import Combine

class NetworkService: Injectable {
    func fetchData() -> AnyPublisher<String, Error> {
        Future<String, Error> { promise in
            DispatchQueue.global().asyncAfter(deadline: .now() + 1) {
                promise(.success("Downloaded"))
            }
        }
        .eraseToAnyPublisher()
    }
}
