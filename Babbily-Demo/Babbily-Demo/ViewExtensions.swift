//
//  ViewExtensions.swift
//  Babbily-Demo
//
//  Created by Modi (Victor) Li.
//

import SwiftUI

extension View {
    
    func apply<V: View>(@ViewBuilder _ block: (Self) -> V) -> V {
        block(self)
    }
    
    @ViewBuilder
    func applyIf(_ condition: Bool, _ transform: (Self) -> some View) -> some View {
        if condition {
            transform(self)
        } else {
            self
        }
    }
    
}
