//
//  Created by Maciej Gorecki on 01/12/2020.
//

import SwiftUI

@main
struct InjectableApp: App {
    private let manager = DependencyManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
