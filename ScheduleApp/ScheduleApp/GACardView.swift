//
//  GACardView.swift
//  ScheduleApp
//
//  Created by Dini on 04/06/26.
//

import SwiftUI

struct GACardView: View {
    let session: Session

    var body: some View {
        VStack(spacing: -1) {
            GACardViewHeader(header: session.header)
            GACardViewFooter(footer: session.footer)
        }
        .clipShape(RoundedRectangle(cornerRadius: Radius.card))
        .shadow(radius: 5)
    }
}

#Preview("Full Card") {
    GACardView(session: Session.sampleOnboarding)
}
