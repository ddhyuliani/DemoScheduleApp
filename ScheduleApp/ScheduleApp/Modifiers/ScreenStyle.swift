//
//  ScreenStyle.swift
//  ScheduleApp
//
//  Created by Dini on 29/05/26.
//

import SwiftUI

struct SGScreen: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(SGSpacing.lg)
            .background(SGColor.background.ignoresSafeArea())
    }
}

extension View {
    func sgScreen() -> some View {
        modifier(SGScreen())
    }
}
