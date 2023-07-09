//
//  TabBar.swift
//  mentalHealthApp
//
//  Created by N S on 09.07.2023.
//

import SwiftUI

enum Tab: String, CaseIterable {
    case house
    case video
    case tshirt
}

struct TabBar: View {
    @Binding var selectedTab: Tab
    
    private var fillImage: String {
        selectedTab.rawValue + ".fill"
    }
    
    var body: some View {
        VStack {
            ForEach(Tab.allCases, id: \.rawValue) { tab in
                Image(systemName: selectedTab == tab ? fillImage : tab.rawValue)
                    .scaleEffect(selectedTab == tab ? 1.25 : 1.0)
                    .foregroundColor(selectedTab == tab ? Color("TabColor") : .white)
                    .font(.system(size: 32))
                    .padding()
                    .onTapGesture {
                        withAnimation(.easeIn(duration: 0.1)) {
                            selectedTab = tab
                        }
                    }
                    
            }
        }
        .background(.black)
        .cornerRadius(10)
        .overlay {
            RoundedRectangle(cornerRadius: 10)
                .stroke(.white, lineWidth: 5)
        }
   
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar(selectedTab: .constant(.house))
    }
}
