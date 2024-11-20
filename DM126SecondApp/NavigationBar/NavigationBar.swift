//
//  NavigationBar.swift
//  DM126SecondApp
//
//  Created by user270466 on 11/9/24.
//

import SwiftUI

struct NavigationBar: View {
    @State private var selectedUser: String = usersMock[0].nome
    @State private var usersCount = 0
    
    var body: some View {
        HStack {
            Menu(selectedUser) {
                ForEach(usersMock[0...usersCount]) { user in
                    Button(user.nome, action: {
                        selectedUser = user.nome
                    })
                }
            }
            .font(.headline)
            .fontWeight(.bold)
            .foregroundStyle(.purple)
            
            Button(action: {
                if usersCount < usersMock.count - 1 {
                    usersCount += 1
                }
            }) {
                Image(systemName: "plus.circle.fill")
                    .font(.title3)
                    .foregroundStyle(.purple)
            }
        }
    }
}

#Preview {
    NavigationBar()
}
