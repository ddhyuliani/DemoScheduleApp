//
//  Session+Samples.swift
//  ScheduleApp
//
//  Created by Dini on 29/05/26.
//

import SwiftUI

extension Session {
    static let sampleOnboarding = Session(
        header: SessionHeader(
            title: "Onboarding",
            category: "Design",
            morningTime: "8:30 AM",
            afternoonTime: "1:30 PM",
            color: .purpleAccentBrand
        ),
        footer: SessionFooter(
            guidingQuestions: [
                "How might we help people begin something unfamiliar with confidence?",
                "How might we help first-time users feel confident enough to succeed?"
            ],
            mentors: [
                Mentor(name: "Dini", image: .dini),
                Mentor(name: "Rizal", image: .rizal)
            ]
        )
    )

    static let sampleOOP = Session(
        header: SessionHeader(
            title: "OOP",
            category: "Tech",
            morningTime: "10:00 AM",
            afternoonTime: "2:30 PM",
            color: .yellowPrimaryBrand
        ),
        footer: SessionFooter(
            guidingQuestions: [
                "Core concept of OOP",
                "Understand how to apply OOP principles in Swift to write cleaner, more modular code.",
                "Maintainable code for real-world apps."
            ],
            mentors: [
                Mentor(name: "Dini", image: .dini),
                Mentor(name: "Rizal", image: .rizal)
            ]
        )
    )

    static let allSamples: [Session] = [
        sampleOnboarding,
        sampleOOP
    ]
}
