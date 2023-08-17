//
//  ContentView.swift
//  AliClone
//
//  Created by Aisa Utomo on 30/07/23.
//

import SwiftUI

var deviceWidth       : CGFloat = UIScreen.main.bounds.width  //768
var deviceHeight      : CGFloat = UIScreen.main.bounds.height //1004 --> 1024
var borderWidth     : CGFloat = 0


struct ContentView: View {
    var body: some View {
        VStack {
//            TestConnectionView()
            
//            BaseLoginView()
            AboUsCresnView()
            
//            MiniThumbnailView()
            
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
//            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
