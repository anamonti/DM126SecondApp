//
//  GoalContainer.swift
//  DM126SecondApp
//
//  Created by user270466 on 11/19/24.
//

import SwiftUI

struct GoalContainer: View {
    var goals: [GoalType]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            ForEach(goals){ goal in
                GoalListView(goal: goal)
            }
        }
    }
}

#Preview {
    GoalContainer(goals: goalMock)
}
