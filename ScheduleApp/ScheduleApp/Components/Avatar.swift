//
//  Avatar.swift
//  ScheduleApp
//
//  Created by Dini on 29/05/26.
//

import SwiftUI

struct Avatar: View {
    let mentor: Mentor
    
    var body: some View {
        HStack(spacing: SGSpacing.md) {
                // Photo / placeholder
            Group {
                if let name = mentor.imageName {
                    Image(name)
                        .resizable()
                        .scaledToFill()
                } else {
                    Image(systemName: "person.crop.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .foregroundStyle(SGColor.accent)
                }
            }
            .frame(width: 61, height: 61)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            
            VStack(alignment: .leading, spacing: 2) {
                Text(mentor.name)
                    .font(Typography.body)
                    .foregroundStyle(SGColor.textPrimary)
                Text(mentor.role)
                    .font(Typography.footnote)
                    .foregroundStyle(SGColor.textSecondary)
            }
            
            Spacer()
        }
        .pressable()
    }
}

#Preview {
    Avatar(mentor: Mentor(name: "Dini"))
        .padding()
        .background(Color.black)
}
