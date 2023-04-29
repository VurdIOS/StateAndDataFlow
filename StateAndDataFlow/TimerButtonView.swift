//
//  TimerButtonView.swift
//  StateAndDataFlow
//
//  Created by Камаль Атавалиев on 29.04.2023.
//

import SwiftUI

struct TimerButtonView: View {
    
    @ObservedObject var timer: TimeCounter
    @EnvironmentObject private var userSettings: UserSettings
    
    var body: some View {
        
        Button(action: timer.startTimer) {
            Text(timer.buttonTitle)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(.red)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(.black, lineWidth: 4)
        )
        
        Spacer()
        
        Button(action: { userSettings.isLoggedIn = false }) {
            Text("LogOut")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(.blue)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(.black, lineWidth: 4)
        ).environmentObject(userSettings)
    }
}
struct TimerButtonView_Previews: PreviewProvider {
    static var previews: some View {
        TimerButtonView()
    }
}
