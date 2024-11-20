//
//  GoalListView.swift
//  DM126SecondApp
//
//  Created by user270466 on 11/19/24.
//

import SwiftUI

struct GoalListView: View {
    let goal: GoalType
    
    var body: some View {
        HStack{
            Image(systemName:goal.icone).font(.largeTitle)
            VStack(alignment: .leading){
                Text(goal.titulo).font(.headline
                )
                Text(goal.descricao).font(.subheadline)
            }}.foregroundStyle(.purple)
    }
}

#Preview {
    GoalListView(goal: GoalType(id: 1, icone: "heart", titulo: "Hobby", descricao: "Fazer algo que goste"))
}
