//
//  Babbily_DemoApp.swift
//  Babbily-Demo
//
//  Created by Modi (Victor) Li.
//

import SwiftUI

@main
struct Babbily_DemoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onTapGesture {
                    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                }
        }
    }
}
