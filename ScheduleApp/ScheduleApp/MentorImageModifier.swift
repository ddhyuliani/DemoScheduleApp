//
//  MentorImageModifier.swift
//  ScheduleApp
//
//  Created by Dini on 04/06/26.
//

import SwiftUI

struct MentorImageModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .scaledToFill()
            .frame(width: 61, height: 58)
            .clipped()
    }
}

extension Image {
    func mentorImageStyle() -> some View {
        self
            .resizable()
            .scaledToFill()
            .frame(width: 61, height: 58)
            .clipped()
    }
}
