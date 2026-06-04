//
//  CalendarStripView.swift
//  ScheduleApp
//
//  Created by Dini on 04/06/26.
//

import SwiftUI

struct CalendarStripView: View {
    @State private var selectedDate = Date()
    let today = Calendar.current.startOfDay(for: Date())

    var body: some View {
        ScrollViewReader { currentDate in
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 12) {
                    ForEach(DayHelper.days, id: \.self) { day in
                        DateCardView(date: day, isSelected: isSelected(day))
                            .id(day)
                            .onTapGesture {
                                selectedDate = day
                            }
                    }
                }
            }
            .onAppear {
                selectedDate = today
                currentDate.scrollTo(today, anchor: .leading)
            }
        }
    }

    private func isSelected(_ day: Date) -> Bool {
        Calendar.current.isDate(day, inSameDayAs: selectedDate)
    }
}

#Preview {
    CalendarStripView()
}
