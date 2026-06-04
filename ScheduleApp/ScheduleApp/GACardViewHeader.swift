//
//  GACardViewHeader.swift
//  ScheduleApp
//
//  Created by Dini on 04/06/26.
//

import SwiftUI

struct GACardViewHeader: View {
    let header: SessionHeader

    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 30) {
                HStack {
                    Text(header.title)
                        .font(.blackLargeTitle)
                    Spacer()
                    Text(header.category.uppercased())
                        .font(.regularCallout)
                }

                HStack(spacing: 8) {
                    ForEach(0..<header.illustrationCount, id: \.self) { _ in
                        illustrationImage(for: header.category)
                            .resizable()
                            .frame(width: 50, height: 50)
                    }
                }

                HStack {
                    Text("Morning: \(header.morningTime)")
                    Spacer()
                    Text("Afternoon: \(header.afternoonTime)")
                }
            }
        }
        .frame(maxWidth: 380, minHeight: 149)
        .foregroundStyle(Color.whitePrimarySurface)
        .padding(20)
        .background(Color.purpleAccentBrand)
    }
}

#Preview("Header") {
    GACardViewHeader(header: Session.sampleOnboarding.header)
}
