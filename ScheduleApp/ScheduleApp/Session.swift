//
//  Session.swift
//  ScheduleApp
//
//  Created by Dini on 04/06/26.
//

import SwiftUI

struct SessionHeader: Hashable {
    let title: String
    let category: String
    let illustrationCount: Int = 3
    let morningTime: String
    let afternoonTime: String
    let color: Color
}

struct SessionFooter: Hashable {
    let guidingQuestionTitle: String = "Guiding Question"
    let guidingQuestions: [String]
    let mentors: [Mentor]
}

struct Session: Identifiable, Hashable {
    let id = UUID()
    let header: SessionHeader
    let footer: SessionFooter
}

func illustrationImage(for category: String) -> Image {
    switch category.lowercased() {
    case "design":
        return Image(AppImage.gaDesign.rawValue)
    case "tech":
        return Image(AppImage.gaTech.rawValue)
    default:
        return Image(systemName: "square.dashed")
    }
}
