//
//  CarouselItemView.swift
//  DM126SecondApp
//
//  Created by user270466 on 11/9/24.
//

import SwiftUI

struct CarouselItemView: View {
    let banner: ServiceType
    
    var body: some View {
        Image(banner.imagem)
            .resizable()
            .scaledToFit()
            .cornerRadius(20)
    }
}

#Preview {
    CarouselItemView(banner: ServiceType(id: 1, nome: "", imagem: "motivacional1"))
}	
