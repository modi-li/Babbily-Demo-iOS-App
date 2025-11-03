//
//  BaseComponentViews.swift
//  Babbily-Demo
//
//  Created by Modi (Victor) Li.
//

import SwiftUI

struct BaseTextField: View {
    
    let placeholder: String?
    @Binding var text: String
    let font: Font
    let placeholderColor: Color?
    let textColor: Color
    let fontMediumOnText: Bool
    let textAlignment: TextAlignment
    let tracking: CGFloat?
    
    init(placeholder: String? = nil, text: Binding<String>, font: Font, placeholderColor: Color? = nil, textColor: Color, fontMediumOnText: Bool = false, textAlignment: TextAlignment = .leading, tracking: CGFloat? = nil) {
        self.placeholder = placeholder
        self._text = text
        self.font = font
        self.placeholderColor = placeholderColor
        self.textColor = textColor
        self.fontMediumOnText = fontMediumOnText
        self.textAlignment = textAlignment
        self.tracking = tracking
    }
    
    var body: some View {
        TextField(
            "",
            text: $text,
            prompt:
                placeholder == nil ? nil : Text(placeholder!) .font(font).fontWeight(.regular).foregroundStyle(placeholderColor ?? Color.clear),
            axis: .vertical
        )
        .font(font)
        .applyIf(fontMediumOnText) {
            $0.fontWeight(.medium)
        }
        .applyIf(tracking != nil) {
            $0.tracking(tracking!)
        }
        .foregroundStyle(textColor)
        .multilineTextAlignment(textAlignment)
        .textFieldStyle(.plain)
    }
    
}
