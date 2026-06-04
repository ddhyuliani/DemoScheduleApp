//
//  Session+Samples.swift
//  ScheduleApp
//
//  Created by Dini on 29/05/26.
//

import SwiftUI

extension Session {
    static let sampleOnboarding = Session(
        title:       "Onboarding",
        category:    "DESIGN",
        time:        "Morning: 8:30 AM  Afternoon: 1:30 PM",
        description: "In this session, you'll learn how to craft a smooth and engaging onboarding experience for your app.",
        color:       SGColor.accent,
        mentors:     [Mentor(name: "Dini"), Mentor(name: "Rizal")],
        guidingQuestions: [
            "How might we help people begin something unfamiliar with confidence?",
            "How might we help first-time users feel confident enough to succeed?"
        ]
    )
    
    static let sampleOOP = Session(
        title:       "OOP",
        category:    "TECH",
        time:        "Morning: 8:30 AM  Afternoon: 1:30 PM",
        description: "You will explore core concepts of OOP and understand how to apply OOP principles in Swift to write cleaner, more modular, maintainable code.",
        color:       SGColor.accent,
        mentors:     [Mentor(name: "Dini"), Mentor(name: "Rizal")],
        guidingQuestions: [
            "Core concept of OOP",
            "Understand how to apply OOP principles in Swift — write cleaner, more modular code.",
            "Maintainable code for real-world apps."
        ]
    )
    
    static let allSamples: [Session] = [sampleOnboarding, sampleOOP]
}
