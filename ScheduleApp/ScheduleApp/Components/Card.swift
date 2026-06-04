//
//  Card.swift
//  ScheduleApp
//
//  Created by Dini on 29/05/26.
//

import SwiftUI

struct Card<Content: View>: View {
    let color:   Color
    let action:  (() -> Void)?
    let content: Content
    
    init(
        color:   Color,
        action:  (() -> Void)? = nil,
        @ViewBuilder content: () -> Content
    ) {
        self.color   = color
        self.action  = action
        self.content = content()
    }
    
    var body: some View {
        content
            .sgCard(color: color)
            .pressable()
            .onTapGesture { action?() }
    }
}
