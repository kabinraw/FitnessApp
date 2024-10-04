//
//  ActivityCardView.swift
//  FitnessApp
//
//  Created by Kabindra on 10/1/24.
//

import SwiftUI

struct ActivityCardView: View {
    
    @State var activity: Activity
    
    var body: some View {
        ZStack {
            Color(uiColor: .systemGray6)
                .cornerRadius(16)
            
            VStack {
                HStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text(activity.title)
                        
                        Text(activity.subtitle)
                            .font(.caption)
                        
                    }
                    
                    Spacer()
                    
                    Image(systemName: activity.image)
                        .foregroundStyle(activity.tintColor)
                    
                    
                }
                
                Text(activity.amount)
                    .font(.title)
                    .bold()
                    .padding()
            }
            
            .padding()
        }
    }
}

#Preview {
    ActivityCardView(activity: Activity(id: 0, title: "Today Steps", subtitle: "Goal 2111", image: "figure.walk", tintColor: .green, amount: "9000"))
}
