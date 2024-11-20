//
//  FeatureType.swift
//  DM126SecondApp
//
//  Created by user270466 on 11/9/24.
//

import SwiftUI

struct FeatureType: View {
    let service: ServiceType
    
    var body: some View {
        VStack{
            Image(service.imagem)
                .resizable()
                .scaledToFit()
                .cornerRadius(20)
                .fixedSize(horizontal: false, vertical: true)
            Text(service.nome)
                .font(.system(size: 16))
                
        }.frame(width: 80, height: 80)
    }
}

#Preview {
    FeatureType(service: ServiceType(id: 1, nome: "Alimente-se bem", imagem: "healthy-food"))
}
