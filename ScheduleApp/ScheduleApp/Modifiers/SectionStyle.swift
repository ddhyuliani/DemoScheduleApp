//
//  SectionStyle.swift
//  ScheduleApp
//
//  Created by Dini on 29/05/26.
//

import SwiftUI

struct SGSectionStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(SGSpacing.md)
            .background(SGColor.surface)
            .clipShape(RoundedRectangle(cornerRadius: 16))
            
    }
}

extension View {
    func sgSection() -> some View {
        modifier(SGSectionStyle())
    }
}
