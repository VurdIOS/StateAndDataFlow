//
//  TimerButtonView.swift
//  StateAndDataFlow
//
//  Created by Камаль Атавалиев on 29.04.2023.
//

import SwiftUI

struct TimerButtonView: View {
    let action: () -> Void
    let color: Color
    let text: String
    
    @EnvironmentObject private var userSettings: UserSettings
    
    var body: some View {
        
        Button(action: action) {
            Text(text)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(color)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(.black, lineWidth: 4)
        )
    }
}
struct TimerButtonView_Previews: PreviewProvider {
    static var previews: some View {
        TimerButtonView(action: {}, color: .red, text: "Hello")
    }
}
