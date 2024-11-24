//
//  ContentView.swift
//  DM126SecondApp
//
//  Created by user270466 on 11/9/24.
//

import SwiftUI

struct ContentView: View {
    private var service = APIService()
    @State private var APIgoals: [GoalType] = []
    @State private var isLoading = true
    @State private var isModalPresented = false
    @State private var title = ""
    @State private var description = ""
    @State private var icon = ""
    
    var body: some View {
        VStack(spacing: 0) {
            NavigationBar()
            
            ScrollView {
                VStack(spacing: 20) {
                    FeaturesGrid()
                    CarouselTabView()
                    
                    if isLoading {
                        ProgressView("Carregando dados...")
                            .progressViewStyle(CircularProgressViewStyle())
                            .padding() 
                    } else {
                        GoalContainer(goals: APIgoals)
                        
                        Button("Adicionar objetivo") {
                            isModalPresented = true
                        }
                        .padding()
                        .background(.purple)
                        .cornerRadius(20)
                        .foregroundStyle(.white)
                        .sheet(isPresented: $isModalPresented) {
                            VStack(spacing: 20) {
                                TextField("Titulo", text: $title)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .padding()
                                
                                TextField("Icone", text: $icon)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .padding()
                                
                                TextField("Descricao", text: $description)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .padding()
                                
                                HStack {
                                    Button("Cancelar") {
                                        isModalPresented = false
                                    }
                                    .foregroundColor(.red)
                                    
                                    Spacer()
                                    
                                    Button("Confirmar") {
                                        var goal = GoalType(id: 0, icone: icon, titulo: title, descricao: description)
                                        isModalPresented = false
                                        addGoalAF(goal: goal)
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
                .padding()
                .onAppear() {
                    getGoalsAF()
                }
            }
        }
        .padding()
        

    }
    
    func getGoalsAF(){
        service.getGoals{goals, error in
            if let goals = goals {
                self.APIgoals = goals
                isLoading = false
            }
        }
    }
    
    func addGoalAF(goal: GoalType) {
        service.addGoal(goal) {success, error in
            if success {
                print("Objetivo criado")
            } else {
                print(error)
            }
        }
    }
}

#Preview {
    ContentView()
}
