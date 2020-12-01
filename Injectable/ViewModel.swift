//
//  Created by Maciej Gorecki on 01/12/2020.
//

import Foundation
import Combine

class ViewModel: ObservableObject {
    @Inject var networkService: NetworkService
    
    @Published var data: String = "No data"
    
    private var token: AnyCancellable?
    
    func fetchData() {
        token = networkService
            .fetchData()
            .replaceError(with: "Error")
            .receive(on: DispatchQueue.main)
            .assign(to: \.data, on: self)
    }
}
