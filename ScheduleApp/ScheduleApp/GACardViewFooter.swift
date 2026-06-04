//
//  GACardViewFooter.swift
//  ScheduleApp
//
//  Created by Dini on 04/06/26.
//

import SwiftUI

struct GACardViewFooter: View {
    let footer: SessionFooter

    var body: some View {
        HStack(alignment: .top) {
            VStack(alignment: .center) {
                Text(footer.guidingQuestionTitle)
                    .font(.semiboldBody)
                    .foregroundStyle(Color.greySecondaryBrand)
                
                Spacer()

                HStack(alignment: .bottom) {
                    ForEach(footer.mentors) { mentor in
                        Image(mentor.image.rawValue)
                            .resizable()
//                            .modifier(MentorImageModifier()) // Custom Modifier 1 (Struct conform to ViewModifier)
//                            .mentorImageStyle() // Custom Modifier 2 (extension)
                            .scaledToFill()
                            .frame(width: 61, height: 58)
                            .clipped()
                            
                    }
                }
            }

            VStack(alignment: .leading, spacing: 24) {
                ForEach(footer.guidingQuestions, id: \.self) { question in
                    HStack(alignment: .top, spacing: 10) {
                        Text("-")
                        Text(question)
                    }
                    .lineLimit(nil)
                    .fixedSize(horizontal: false, vertical: true)
                    .font(.regularCallout)
                }
            }
            .foregroundStyle(Color.greySecondaryBrand.opacity(0.65))
        }
        .frame(maxWidth: 380, minHeight: 149)
        .padding(20)
        .background(Color.whitePrimarySurface)
    }
}

#Preview("Footer") {
    GACardViewFooter(footer: Session.sampleOnboarding.footer)
}
