//
//  ItemPageDetailView.swift
//  AliClone
//
//  Created by Aisa Utomo on 02/08/23.
//

import SwiftUI

struct ItemPageDetailView: View {
    @State private var offset: CGFloat = 0
    @State private var previousOffset: CGFloat = 0
    private let menuHeight: CGFloat = 400 // Adjust this to set the height of the menu

    var body: some View {
        VStack {
            // Main content of your app goes here
            GeometryReader { mainContentGeometry in
                VStack {
                    Text("Main Content")
                        .padding()
                }
                .frame(width: deviceWidth, height: deviceHeight / 2)
                .background(Color.gray)
                .offset(y: 0) // Apply the offset to slide the content up and down
            }

            // Menu view
            GeometryReader { menuGeometry in
                VStack {
                    // Spacer to push the menu off-screen when closed
                    
                    // Menu content goes here
                    Text("Menu Item 1")
                    Text("Menu Item 2")
                    Text("Menu Item 3")
                    Spacer()
                }
                .frame(width: menuGeometry.size.width, height: menuHeight)
                .background(Color.white)
                .cornerRadius(10)
                .offset(y: offset) // Apply the offset to slide the menu up and down
                .gesture(DragGesture().onChanged { value in
                    // Update the offset based on the drag gesture
                    self.offset = value.translation.height + self.previousOffset
                }.onEnded { value in
                    // Animate the menu closing/opening when the drag ends
                    if value.predictedEndTranslation.height > self.menuHeight / 2 {
                        // Close the menu
                        withAnimation {
                            self.offset = self.menuHeight
                        }
                    } else {
                        // Open the menu
                        withAnimation {
                            self.offset = 0
                        }
                    }
                    // Remember the previous offset to calculate the change in the next gesture
                    self.previousOffset = self.offset
                })
            }
        }
    }
}

struct ItemPageDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ItemPageDetailView()
    }
}
