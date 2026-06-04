//
//  SessionDetailView.swift
//  ScheduleApp
//
//  Created by Dini on 29/05/26.
//

import SwiftUI

struct SessionDetailView: View {
    let session: Session
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 0) {
                
                heroHeader
                
                VStack(alignment: .leading, spacing: SGSpacing.xl) {
                        // Description
                    Text(session.description)
                        .font(Typography.title2)
                        .foregroundStyle(SGColor.textPrimary)
                        .fixedSize(horizontal: false, vertical: true)
                    
                    // Guiding Questions section
                    if !session.guidingQuestions.isEmpty {
                        SGSection(title: "Guiding Question") {
                            VStack(alignment: .leading, spacing: SGSpacing.sm) {
                                ForEach(session.guidingQuestions, id: \.self) { q in
                                    HStack(alignment: .top, spacing: SGSpacing.xs) {
                                        Text("–")
                                            .font(Typography.callout)
                                            .foregroundStyle(SGColor.textSecondary)
                                        Text(q)
                                            .font(Typography.callout)
                                            .foregroundStyle(SGColor.textSecondary)
                                            //.fixedSize(horizontal: false, vertical: true)
                                    }
                                }
                            }
                        }
                    }
                    
                    // Facilitator section
                    if !session.mentors.isEmpty {
                        SGSection(title: "Facilitator") {
                            VStack(spacing: SGSpacing.md) {
                                ForEach(session.mentors) { mentor in
                                    Avatar(mentor: mentor)
                                }
                            }
                        }
                    }
                }
                .padding(SGSpacing.lg)
            }
        }
        .background(SGColor.background.ignoresSafeArea())
        .navigationBarTitleDisplayMode(.inline)
        .toolbarColorScheme(.dark, for: .navigationBar)
    }
    
        // MARK: - Hero header (replicates card top section at full width)
    private var heroHeader: some View {
        VStack(alignment: .leading, spacing: SGSpacing.sm) {
                // Title + category
            HStack(alignment: .top) {
                Text(session.title)
                    .font(Typography.largeTitle)
                    .foregroundStyle(SGColor.textPrimary)
                Spacer()
                Text(session.category.uppercased())
                    .font(Typography.footnote)
                    .foregroundStyle(SGColor.textPrimary.opacity(0.9))
            }
            
            // Illustration strip
            HStack(spacing: -5) {
                ForEach(0..<3, id: \.self) { _ in
                    illustrationImage(for: session.category)
                        .resizable()
                        .frame(width: 50, height: 50)
                        .scaledToFit()
                }
            }
            
            // Time row
            HStack(spacing: SGSpacing.xl) {
                let parts = session.time.components(separatedBy: "  ")
                ForEach(parts, id: \.self) { part in
                    Text(part)
                        .font(Typography.subhead)
                        .foregroundStyle(SGColor.textPrimary)
                }
            }
        }
        .padding(SGSpacing.lg)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(session.color)
        .clipShape(
            .rect(
                topLeadingRadius:     0,
                bottomLeadingRadius:  20,
                bottomTrailingRadius: 20,
                topTrailingRadius:    0
            )
        )
    }
}

// MARK: - Preview
#Preview {
    NavigationStack {
        SessionDetailView(session: .sampleOnboarding)
    }
    .preferredColorScheme(.dark)
}
