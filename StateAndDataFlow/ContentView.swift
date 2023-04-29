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
            
            TimerButtonView(timer: timer)
                .padding(.top, 50)

        }
        .padding()
//        .environmentObject(timer)  Тут не уверен что его нужно отправлть в окружение и без него работает
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserSettings())
    }
}
