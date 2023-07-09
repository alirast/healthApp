//
//  ContentView.swift
//  mentalHealthApp
//
//  Created by N S on 09.07.2023.
//

import SwiftUI

struct HomeView: View {
    @State private var selectedTab: Tab = .house
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Spacer()
                    TabBar(selectedTab: $selectedTab)
                        .padding()
                }
                Spacer()
            }
        }
        .background(.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
