//
//  Day+Helper.swift
//  ScheduleApp
//
//  Created by Dini on 04/06/26.
//

import Foundation

struct DayHelper {
    static var days: [Date] {
        let calendar = Calendar.current
        let today = calendar.startOfDay(for: Date())

        return (-7...7).compactMap { index in
            calendar.date(byAdding: .day, value: index, to: today)
        }
    }
}
