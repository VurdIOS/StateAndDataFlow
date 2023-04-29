//
//  TextFieldCounterView.swift
//  StateAndDataFlow
//
//  Created by Камаль Атавалиев on 29.04.2023.
//

import SwiftUI

struct TextFieldCounterView: View {
    @Binding var text: String
    
    var body: some View {
        Text(text.count.formatted())
            .foregroundColor(text.count < 3 ? .red : .green)
    }
}

struct TextFieldCounterView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldCounterView(text: .constant("dvzv"))
    }
}
