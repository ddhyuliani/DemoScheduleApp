//
//  ScheduleView.swift
//  ScheduleApp
//
//  Created by Dini on 29/05/26.
//

import SwiftUI

struct ScheduleView: View {
    let sessions: [Session] = Session.allSamples
    
    @State private var selectedSession: Session? = nil
    @State private var selectedDate: Int = 29
    
    private let weekDays: [(Int, String)] = [
        (26, "TUE"), (27, "WED"), (28, "THU"), (29, "FRI"), (30, "SAT")
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: SGSpacing.xl) {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: SGSpacing.sm) {
                            ForEach(weekDays, id: \.0) { day, name in
                                DateCell(
                                    day:        day,
                                    weekday:    name,
                                    isSelected: day == selectedDate
                                )
                                .onTapGesture { selectedDate = day }
                            }
                        }
                        .padding(.horizontal, SGSpacing.lg)
                    }

                    VStack(spacing: SGSpacing.lg) {
                        ForEach(sessions) { session in
                            NavigationLink(value: session) {
                                SessionCard(session: session)
                            }
                            .buttonStyle(.plain)
                        }
                    }
                    .padding(.horizontal, SGSpacing.lg)
                    
                    Spacer(minLength: SGSpacing.xl)
                }
                .padding(.top, SGSpacing.lg)
            }
            .background(SGColor.background.ignoresSafeArea())
            .navigationTitle("Schedule")
            .navigationBarTitleDisplayMode(.large)
            .toolbarColorScheme(.dark, for: .navigationBar)
            .navigationDestination(for: Session.self) { session in
                SessionDetailView(session: session)
            }
        }
    }
}

private struct DateCell: View {
    let day:        Int
    let weekday:    String
    let isSelected: Bool
    
    var body: some View {
        VStack(spacing: 4) {
            Text("\(day)")
                .font(.system(size: 28, weight: .bold))
                .foregroundStyle(isSelected ? .black : SGColor.textPrimary)
            Text(weekday)
                .font(Typography.footnote)
                .foregroundStyle(isSelected ? .black.opacity(0.7) : SGColor.textSecondary)
        }
        .frame(width: 75, height: 87)
        .background(
            RoundedRectangle(cornerRadius: 18)
                .fill(isSelected ? SGColor.primary : SGColor.surface)
        )
        .pressable()
    }
}

#Preview {
    ScheduleView()
        .preferredColorScheme(.dark)
}
