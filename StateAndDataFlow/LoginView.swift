//
//  LoginView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 26.04.2023.
//

import SwiftUI

struct LoginView: View {
    @State private var name = ""
    @EnvironmentObject private var userSettings: UserSettings // тут пока не понятно, как он определяет по типу данных какой класс я инициализировал и поместил в окружение... а если я дважды инициализировал этот класс и поместил в окружение, какой он выберет, если он ориентируется не по названию экземпляра класса а по типу данных
    
    var body: some View {
        VStack(spacing: 30) {
            HStack {
                TextField("Enter your name", text: $name)
                    .multilineTextAlignment(.center)
                    .frame(width: 300)
                TextFieldCounterView(text: $name)
            }
            LogInButtonView(action: login, enable: $name)
        }
    }
    private func login() {
        if !name.isEmpty {
            userSettings.name = name
            userSettings.isLoggedIn = true
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
