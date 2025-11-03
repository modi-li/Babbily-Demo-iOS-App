//
//  Colors.swift
//  Babbily-Demo
//
//  Created by Modi (Victor) Li.
//

import SwiftUI

extension Color {
    
    static func fromRGB(red: Double, green: Double, blue: Double) -> Color {
        return Color(red: red / 255.0, green: green / 255.0, blue: blue / 255.0)
    }
    
    static let gray1 = fromRGB(red: 242, green: 242, blue: 242)
    static let gray2 = fromRGB(red: 215, green: 215, blue: 215)
    static let gray3 = fromRGB(red: 133, green: 133, blue: 133)
    static let gray4 = fromRGB(red: 74, green: 74, blue: 74)
    static let gray5 = fromRGB(red: 20, green: 20, blue: 20)
}
