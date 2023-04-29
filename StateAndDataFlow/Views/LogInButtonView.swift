//
//  LogInButton.swift
//  StateAndDataFlow
//
//  Created by Камаль Атавалиев on 29.04.2023.
//

import SwiftUI

struct LogInButtonView: View {
    let action: () -> Void
    let enable: String 
    
    var body: some View {
        Button(action: action) {
            HStack {
                Image(systemName: "checkmark.circle")
                Text("Ok")
            }.disabled(enable.count < 3)
        }
    }
}
struct LogInButton_Previews: PreviewProvider {
    @State private var string = "Kamal"
    static var previews: some View {
        LogInButtonView(action: {}, enable: "Kamal")
    }
}

