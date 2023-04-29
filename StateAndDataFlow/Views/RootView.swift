//
//  RootView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 26.04.2023.
//

import SwiftUI

struct RootView: View {
    @StateObject private var userSettings = UserSettings()
    
    var body: some View {
        Group {
            if userSettings.isLoggedIn {
                ContentView()
            } else {
                LoginView()
            }
        }.environmentObject(userSettings)
    }// При нажатии на кнопку LogOut, переходит на экран логина, если приложение закрыть
    // и снова открыть то я все также на экране логина. Но если перезапустить симулятор
    // я на экране таймера. Что тут не так может быть?
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
