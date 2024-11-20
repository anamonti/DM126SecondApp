//
//  ContentView.swift
//  DM126SecondApp
//
//  Created by user270466 on 11/9/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0) {
            NavigationBar()
            
            ScrollView {
                VStack(spacing: 20) {
                    FeaturesGrid()
                    CarouselTabView()
                    GoalContainer()
                }.padding()
            }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
