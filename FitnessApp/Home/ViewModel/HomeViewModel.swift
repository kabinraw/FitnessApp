//
//  HomeViewModel.swift
//  FitnessApp
//
//  Created by Kabindra on 10/3/24.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    
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
    
}
