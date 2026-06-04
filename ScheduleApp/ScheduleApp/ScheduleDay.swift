//
//  ScheduleDay.swift
//  ScheduleApp
//
//  Created by Codex on 04/06/26.
//

import Foundation

struct ScheduleDay: Identifiable, Hashable {
    let id = UUID()
    let date: Date
    let sessions: [Session]
}

extension ScheduleDay {
    static let allSamples: [ScheduleDay] = {
        let calendar = Calendar.current
        let today = calendar.startOfDay(for: Date())

        return [
            ScheduleDay(
                date: today,
                sessions: [.sampleOnboarding, .sampleOOP]
            ),
            ScheduleDay(
                date: calendar.date(byAdding: .day, value: 1, to: today) ?? today,
                sessions: [.sampleOOP]
            ),
            ScheduleDay(
                date: calendar.date(byAdding: .day, value: 2, to: today) ?? today,
                sessions: [.sampleOnboarding]
            )
        ]
    }()
}
