//
//  BaseViewModifiers.swift
//  Babbily-Demo
//
//  Created by Modi (Victor) Li.
//

import SwiftUI

struct BorderModifierLineWidth<S: InsettableShape>: ViewModifier {
    
    let shape: S
    let color: Color
    let lineWidth: CGFloat

    func body(content: Content) -> some View {
        content
            .overlay(
                shape
                    .strokeBorder(color, lineWidth: lineWidth)
            )
    }
}

struct BorderModifierStrokeStyle<S: InsettableShape>: ViewModifier {
    
    let shape: S
    let color: Color
    let style: StrokeStyle

    func body(content: Content) -> some View {
        content
            .overlay(
                shape
                    .strokeBorder(color, style: style)
            )
    }
}

extension View {
    
    func border<S: InsettableShape>(_ shape: S, color: Color, lineWidth: CGFloat = 1) -> some View {
        modifier(BorderModifierLineWidth(shape: shape, color: color, lineWidth: lineWidth))
    }
    
    func border<S: InsettableShape>(_ shape: S, color: Color, style: StrokeStyle) -> some View {
        modifier(BorderModifierStrokeStyle(shape: shape, color: color, style: style))
    }
    
}
