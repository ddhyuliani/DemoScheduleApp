//
//  SessionCard.swift
//  ScheduleApp
//
//  Created by Dini on 29/05/26.
//

import SwiftUI

    /// The large tappable card shown in ScheduleView.
    /// Header: full-bleed accent background with title + category badge + placeholder illustrations + time row.
    /// Footer: light surface with guiding questions (or "You will explore") + mentor avatars strip.
struct SessionCard: View {
    let session: Session
    
    var body: some View {
        VStack(spacing: 0) {
                // ── Header ────────────────────────────────────────────────
            VStack(alignment: .leading, spacing: SGSpacing.sm) {
                    // Title row
                HStack(alignment: .top) {
                    Text(session.title)
                        .font(Typography.largeTitle)
                        .foregroundStyle(SGColor.textPrimary)
                    Spacer()
                    Text(session.category.uppercased())
                        .font(Typography.footnote)
                        .foregroundStyle(SGColor.textPrimary.opacity(0.9))
                }
                
                // Illustration placeholder strip (3 icon tiles)
                HStack(spacing: -5) {
                    ForEach(0..<3, id: \.self) { _ in
                                illustrationImage(for: session.category)
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .scaledToFit()
                    }
                }
                
                // Time row
                HStack(spacing: SGSpacing.sm) {
                    Label(session.time.components(separatedBy: "  ").first ?? "",
                          systemImage: "sun.max")
                    .font(Typography.subhead)
                    .foregroundStyle(SGColor.textPrimary)
                    
                    if session.time.components(separatedBy: "  ").count > 1 {
                        Label(session.time.components(separatedBy: "  ").last ?? "",
                              systemImage: "moon")
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
                    topLeadingRadius:     20,
                    bottomLeadingRadius:  0,
                    bottomTrailingRadius: 0,
                    topTrailingRadius:    20
                )
            )
            
                // ── Footer ────────────────────────────────────────────────
            VStack(alignment: .leading, spacing: SGSpacing.md) {
                HStack(alignment: .bottom, spacing: SGSpacing.sm) {
                    // Mentor avatars column
                    if !session.mentors.isEmpty {
                        HStack(spacing: SGSpacing.xs) {
                            ForEach(session.mentors) { mentor in
                                SGAvatarCompact(mentor: mentor)
                            }
                        }
                    }
                    
                    // Questions / description column
                    VStack(alignment: .leading, spacing: SGSpacing.xs) {
                        if !session.guidingQuestions.isEmpty {
                            ForEach(session.guidingQuestions, id: \.self) { q in
                                HStack(alignment: .top, spacing: SGSpacing.xs) {
                                    Text("–")
                                        .font(Typography.callout)
                                        .foregroundStyle(SGColor.textPrimary.opacity(0.5))
                                    Text(q)
                                        .font(Typography.callout)
                                        .foregroundStyle(SGColor.textPrimary)
                                        .fixedSize(horizontal: false, vertical: true)
                                }
                            }
                        } else {
                            Text(session.description)
                                .font(Typography.callout)
                                .foregroundStyle(SGColor.textPrimary)
                        }
                    }
                }
            }
            .padding(SGSpacing.sm)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(SGColor.surface)
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
}

    // MARK: - Compact avatar used inside the card footer
private struct SGAvatarCompact: View {
    let mentor: Mentor
    
    var body: some View {
        Group {
            if let name = mentor.imageName {
                Image(name)
                    .resizable()
                    .scaledToFill()
            } else {
                Image(systemName: "person.crop.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(Color.white.opacity(0.3))
            }
        }
        .frame(width: 61, height: 61)
        .clipShape(Circle())
        .overlay(Circle().stroke(SGColor.surface, lineWidth: 2))
    }
}

    // MARK: - Preview
#Preview {
    SessionCard(session: .sampleOnboarding)
        .padding()
        .background(Color.black)
}
