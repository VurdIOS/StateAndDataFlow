//
//  ContentView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 26.04.2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var timer = TimeCounter()
    @EnvironmentObject private var userSettings: UserSettings
    
    var body: some View {
        VStack {
            Text("Hi, \(userSettings.name)")
                .font(.largeTitle)
                .padding(.top, 80)
            Text(timer.counter.formatted())
                .font(.largeTitle)
                .padding(.top, 100)
            
            TimerButtonView(
                action: timer.startTimer,
                color: .red,
                text: timer.buttonTitle
            )
            .padding(.top, 50)
            
            Spacer()
            
            TimerButtonView(
                action: {
                    userSettings.isLoggedIn = false
                },
                color: .blue ,
                text: "LogOut"
            )
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserSettings())
    }
}
