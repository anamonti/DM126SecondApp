//
//  BD.swift
//  DM126SecondApp
//
//  Created by user270466 on 11/9/24.
//

import Foundation

let servicesMock: [ServiceType] = [
    ServiceType(id: 1, nome: "Tire um Tempo para Respirar", imagem: "breath"),
    ServiceType(id: 2, nome: "Conecte-se com Alguém", imagem: "conversation"),
    ServiceType(id: 3, nome: "Pratique a Gratidão", imagem: "hands"),
    ServiceType(id: 4, nome: "Reserve um Momento para Si Mesmo", imagem: "lifestyle"),
    ServiceType(id: 5, nome: "Beba Água e Coma Algo Saudável", imagem: "healthy-food"),
    ServiceType(id: 6, nome: "Mexa-se!", imagem: "exercise"),
]

let goalMock: [GoalType] = [
    GoalType(id: 1, icone: "heart", titulo: "Hobby", descricao: "Fazer algo que goste"),
    GoalType(id: 2, icone: "hare.fill", titulo: "Exercicio", descricao: "Correr ou fazer uma caminhada"),
    GoalType(id: 3, icone: "pencil", titulo: "Escrever", descricao: "Escreva 3 coisas pelas quais é grato(a)")
]
