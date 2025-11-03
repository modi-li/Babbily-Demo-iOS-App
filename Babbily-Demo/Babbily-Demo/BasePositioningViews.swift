//
//  BasePositioningViews.swift
//  Babbily-Demo
//
//  Created by Modi (Victor) Li.
//

import SwiftUI

struct Spacing: View {
    
    enum DirectionFocus {
        case vertical
        case horizontal
    }
    
    let size: CGFloat
    let directionFocus: DirectionFocus?
    
    init(_ size: CGFloat, directionFocus: DirectionFocus? = nil) {
        self.size = size
        self.directionFocus = directionFocus
    }
    
    var body: some View {
        Color.clear
            .frame(width: directionFocus == .vertical ? 0 : size, height: directionFocus == .horizontal ? 0 : size)
    }
    
}


struct BaseHStack<Content: View>: View {
    
    let spacing: CGFloat
    let vAlignment: VAlignment
    let hAlignment: HAlignment
    
    let content: () -> Content
    
    
    init(spacing: CGFloat = 0, vAlignment: VAlignment = .center, hAlignment: HAlignment = .center, @ViewBuilder content: @escaping () -> Content) {
        self.spacing = spacing
        self.vAlignment = vAlignment
        self.hAlignment = hAlignment
        self.content = content
    }
    
    var body: some View {
        HStack(alignment: vAlignment.native, spacing: spacing) {
            if hAlignment == .trailing {
                Spacer()
            }
            content()
            if hAlignment == .leading {
                Spacer()
            }
        }
    }
    
}

enum VAlignment {
    case top
    case center
    case bottom
    
    var native: VerticalAlignment {
        switch self {
        case .top: return .top
        case .center: return .center
        case .bottom: return .bottom
        }
    }
    
}

enum HAlignment {
    case leading
    case center
    case trailing
    
    var native: HorizontalAlignment {
        switch self {
        case .leading: return .leading
        case .center: return .center
        case .trailing: return .trailing
        }
    }
}

struct BaseVStack<Content: View>: View {
    
    let spacing: CGFloat
    let verticalAlignment: VAlignment
    let horizontalAlignment: HAlignment
    let withScreenHorizontalPadding: Bool
    
    let content: () -> Content
    
    
    init(spacing: CGFloat = 0, vAlignment: VAlignment = .center, hAlignment: HAlignment = .center, withScreenHorizontalPadding: Bool = false, @ViewBuilder content: @escaping () -> Content) {
        self.spacing = spacing
        self.verticalAlignment = vAlignment
        self.horizontalAlignment = hAlignment
        self.withScreenHorizontalPadding = withScreenHorizontalPadding
        self.content = content
    }
    
    var body: some View {
        
        VStack(alignment: horizontalAlignment.native, spacing: spacing) {
            if verticalAlignment == .bottom {
                Spacer()
            }
            content()
            if verticalAlignment == .top {
                Spacer()
            }
        }
        .applyIf(withScreenHorizontalPadding) {
            $0.padding(.horizontal, Sizes.screenHorizontalPadding)
        }
    }
    
}
