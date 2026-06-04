//
//  SGSection.swift
//  ScheduleApp
//
//  Created by Dini on 29/05/26.
//

import SwiftUI

struct SGSection<Content: View>: View {
    let title:   String
    let content: Content
    
    init(title: String, @ViewBuilder content: () -> Content) {
        self.title   = title
        self.content = content()
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: SGSpacing.sm) {
            Text(title)
                .font(Typography.title2)
                .foregroundStyle(SGColor.textPrimary)
            content
        }
        .sgSection()
    }
}
