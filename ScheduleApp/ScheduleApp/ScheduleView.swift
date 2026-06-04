//
//  ScheduleView.swift
//  ScheduleApp
//
//  Created by Dini on 04/06/26.
//

import SwiftUI

struct ScheduleView: View {
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    CalendarStripView()
                    VStack(spacing: 20) {
                        ForEach(Session.allSamples) { session in
                            NavigationLink {
                                ScheduleDetailView(session: session)
                            } label: {
                                GACardView(session: session)
                            }
                            .buttonStyle(.plain)
                        }
                    }
                }
                .padding(.horizontal, 16)
            }
        }
    }
}

#Preview {
    ScheduleView()
        .preferredColorScheme(.dark)
}
