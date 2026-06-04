//
//  ScheduleDetailView.swift
//  ScheduleApp
//
//  Created by Codex on 04/06/26.
//

import SwiftUI

struct ScheduleDetailView: View {
    let session: Session

    var body: some View {
        ScrollView {
            VStack {
                GACardViewHeader(header: session.header)
                    .clipShape(RoundedRectangle(cornerRadius: Radius.card))
                    .shadow(radius: 5)

//                GACardViewFooter(footer: session.footer)
//                    .clipShape(RoundedRectangle(cornerRadius: Radius.card))
//                    .shadow(radius: 5)
            }
        }
//        .navigationTitle(session.header.title)
        .navigationTitle("")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        ScheduleDetailView(session: Session.sampleOnboarding)
    }
}
