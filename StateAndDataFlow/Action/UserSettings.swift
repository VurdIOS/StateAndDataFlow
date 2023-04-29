//
//  UserSettings.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 26.04.2023.
//

import Foundation
import SwiftUI

final class UserSettings: ObservableObject {
    @AppStorage("isLoggedIn") var isLoggedIn: Bool = false
    @AppStorage("UserName") var name = ""
}
