//
//  NavigationBar.swift
//  DM126SecondApp
//
//  Created by user270466 on 11/9/24.
//

import SwiftUI

struct NavigationBar: View {
    @State private var users: [String] = ["Ana Monti"]
    @State private var selectedUser: String = "Ana Monti"
    @State private var isModalPresented = false
    @State private var enteredName = ""
    
    var body: some View {
        HStack {
            Menu(selectedUser) {
                ForEach(users, id: \.self){ user in
                    Button(user, action: {
                        selectedUser = user
                    })
                }
            }
            .font(.headline)
            .fontWeight(.bold)
            .foregroundStyle(.purple)
            
            Button(action: {
                isModalPresented = true
            }) {
                Image(systemName: "plus.circle.fill")
                    .font(.title3)
                    .foregroundStyle(.purple)
            }
            .sheet(isPresented: $isModalPresented) {
                VStack(spacing: 20) {
                    Text("Digite o Nome")
                        .font(.headline)
                    
                    TextField("Nome", text: $enteredName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    
                    HStack {
                        Button("Cancelar") {
                            isModalPresented = false
                        }
                        .foregroundColor(.red)
                        
                        Spacer()
                        
                        Button("Confirmar") {
                            isModalPresented = false
                            users.append(enteredName)
                            selectedUser = enteredName
                            print("Nome inserido: \(enteredName)")
                        }
                        .foregroundColor(.blue)
                    }
                    .padding(.horizontal)
                    
                    Spacer()
                }
                .padding()
            }
        }
    }
}

#Preview {
    NavigationBar()
}
