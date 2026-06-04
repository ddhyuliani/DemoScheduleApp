//
//  CardStyle.swift
//  ScheduleApp
//
//  Created by Dini on 29/05/26.
//

import SwiftUI

struct SGCardStyle: ViewModifier {
    let color: Color
    
    func body(content: Content) -> some View {
        content
            .padding(SGSpacing.lg)
            .background(color.opacity(0.15))
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(color, lineWidth: 1)
            )
            .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

extension View {
    func sgCard(color: Color) -> some View {
        modifier(SGCardStyle(color: color))
    }
}
