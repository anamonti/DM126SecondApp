//
//  FeaturesGrid.swift
//  DM126SecondApp
//
//  Created by user270466 on 11/9/24.
//

import SwiftUI

struct FeaturesGrid: View {
    var gridLayout: [GridItem] {
        return Array(repeating: GridItem(.flexible()), count: 2)
    }
    
    var body: some View {
        LazyHGrid(rows: gridLayout){
            ForEach(servicesMock){
                service in FeatureType(service: service)
            }
        }
        .frame(height: 250)
        .padding(.horizontal, 15)
        .padding(.top, 15)
    }
}

#Preview {
    FeaturesGrid()
}
