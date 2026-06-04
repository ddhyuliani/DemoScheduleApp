//
//  Session.swift
//  ScheduleApp
//
//  Created by Dini on 29/05/26.
//

import SwiftUI

struct Session: Identifiable, Hashable {
    let id        = UUID()
    let title:       String
    let category:    String          // e.g. "DESIGN", "TECH"
    let time:        String
    let description: String
    let color:       Color
    let mentors:     [Mentor]
    let guidingQuestions: [String]
}

func illustrationImage(for category: String) -> Image {
    switch category.lowercased() {
    case "design": return Image("DesignGALogo")
    case "tech":   return Image("CodeGALogo")
    default:       return Image(systemName: "square.dashed")
    }
}
