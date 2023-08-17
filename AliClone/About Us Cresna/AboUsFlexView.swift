//
//  AboUsFlexView.swift
//  AliClone
//
//  Created by Aisa Utomo on 17/08/23.
//

import SwiftUI

enum ViewMode{
    case half
    case full
}

struct AboUsFlexView<Content: View>: View {
    
    let content: () -> Content
    var viewMode: Binding<ViewMode>
    
    init(viewMode: Binding<ViewMode>, @ViewBuilder content: @escaping () -> Content) {
        self.content = content
        self.viewMode = viewMode
    }
    
    private func calculateOffset() -> CGFloat{
        switch viewMode.wrappedValue{
        case .half:
            return UIScreen.main.bounds.height/2
        case.full:
            return 0
        }
    }
    
    var body: some View {
        content()
            .offset(y: calculateOffset())
            .animation(.spring(), value: true)
            .edgesIgnoringSafeArea(.all)
    }
}

struct AboUsFlexView_Previews: PreviewProvider {
    static var previews: some View {
        AboUsFlexView(viewMode: .constant(.half)) {
            VStack{
                Text("test")
            }
            .frame(maxWidth: .infinity,maxHeight: .infinity)
            .background(.cyan)
            .clipShape(RoundedRectangle(cornerRadius: 10,style: .continuous))
        }
    }
}
