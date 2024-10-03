//
//  HomeView.swift
//  FitnessApp
//
//  Created by Kabindra on 10/1/24.
//

import SwiftUI

struct HomeView: View {
    
    @State var calories: Int = 123
    @State var active: Int = 52
    @State var stand: Int = 8
    
    var mockActivities = [
        Activity(id: 0, title: "Today's steps", subtitle: "Goal 12,000", image: "figure.walk", tintColor: .green, amount: "9812"),
        Activity(id: 1, title: "Today's steps", subtitle: "Goal 9,000", image: "figure.walk", tintColor: .red, amount: "7777"),
        Activity(id: 2, title: "Today's steps", subtitle: "Goal 15,000", image: "figure.walk", tintColor: .blue, amount: "7000"),
        Activity(id: 3, title: "Today's steps", subtitle: "Goal 11,000", image: "figure.walk", tintColor: .yellow, amount: "12031"),
    ]
    
    var mockWorkouts: [Workout] = [
        Workout(id: 0, title: "Morning Run", image: "figure.run", tintColor: .red, duration: "30 min", date: "Oct 1, 2024", calories: "250 kcal"),
        Workout(id: 1, title: "HIIT Workout", image: "flame.fill", tintColor: .orange, duration: "45 min", date: "Oct 2, 2024", calories: "400 kcal"),
        Workout(id: 2, title: "Cycling", image: "bicycle", tintColor: .blue, duration: "60 min", date: "Oct 3, 2024", calories: "500 kcal")
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading) {
                    Text("Welcome")
                        .font(.largeTitle)
                        .padding()
                    HStack {
                        
                        Spacer()
                        VStack {
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Calories")
                                    .font(.callout)
                                    .bold()
                                    .foregroundStyle(.red)
                                
                                Text("123 kcal")
                                    .bold()
                                
                            }
                            .padding()
                            
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Active")
                                    .font(.callout)
                                    .bold()
                                    .foregroundStyle(.green)
                                
                                Text("52 mins")
                                    .bold()
                                
                            }
                            .padding()
                            
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Stand")
                                    .font(.callout)
                                    .bold()
                                    .foregroundStyle(.blue)
                                
                                Text("8 hours")
                                    .bold()
                                
                            }
                        }
                        
                        Spacer()
                        
                        ZStack {
                            ProgressCircleView(progress: $calories, goal: 600, color: .red)
                            ProgressCircleView(progress: $active, goal: 60, color: .green)
                                .padding(.all, 20)
                            ProgressCircleView(progress: $stand, goal: 12, color: .blue)
                                .padding(.all, 40)
                        }
                        
                        .padding(.horizontal)
                        Spacer()
                    }
                    
                    HStack {
                        Text("Fitness Activity")
                        
                        Spacer()
                        
                        Button {
                            print("Show more")
                        } label: {
                            Text("Show more")
                                .padding(.all, 10)
                                .foregroundStyle(.white)
                                .background(.blue)
                                .cornerRadius(20)
                        }
                    }
                    .padding(.horizontal)
                    
                    LazyVGrid(columns: Array(repeating: GridItem(spacing: 20), count: 2)) {
                        
                        ForEach(mockActivities, id: \.id) { activity in
                            ActivityCardView(activity: activity)
                        }
                        
                    }
                    .padding(.horizontal)
                    
                    HStack {
                        Text("Recent Workouts")
                        
                        Spacer()
                        
                        NavigationLink {
                            EmptyView()
                        } label: {
                            Text("Show more")
                                .padding(.all, 10)
                                .foregroundStyle(.white)
                                .background(.blue)
                                .cornerRadius(20)
                        }
                        
                    }
                    .padding(.horizontal)
                    .padding(.top)
                    
                    LazyVStack {
                        ForEach(mockWorkouts, id: \.id) { workout in
                            WorkoutCard(workout: workout)
                        }
                    }
                    .padding(.bottom)
                }
            }
        }
        
    }
}

#Preview {
    HomeView()
}
