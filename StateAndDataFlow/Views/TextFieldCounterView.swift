//
//  TextFieldCounterView.swift
//  StateAndDataFlow
//
//  Created by Камаль Атавалиев on 29.04.2023.
//

import SwiftUI

struct TextFieldCounterView: View {
    let text: String //Здесь очень хочется вписать @Binding, по логике свойство влияет на интерфейс, и оно не первичное... Но работает без этого и икскод не ругается.
    
    var body: some View {
        Text(text.count.formatted())
            .foregroundColor(text.count < 3 ? .red : .green)
    }
}

struct TextFieldCounterView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldCounterView(text: "Kamal")
    }
}
