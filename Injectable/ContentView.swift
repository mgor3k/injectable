//
//  Created by Maciej Gorecki on 01/12/2020.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = ViewModel()
    
    var body: some View {
        Text(viewModel.data)
            .padding()
            .onAppear(perform: { viewModel.fetchData() })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
