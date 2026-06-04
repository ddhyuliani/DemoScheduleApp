//
//  DateCard.swift
//  ScheduleApp
//
//  Created by Dini on 04/06/26.
//

import SwiftUI

struct DateCardView: View {
    var date: Date
    var isSelected: Bool
    
    var body: some View {
        VStack {
            Text("\(date, format: .dateTime.day())")
                .font(.boldTitle1)
            Text("\(date, format: .dateTime.month())")
                .font(.regularFootnote)
        }
        .frame(width: 78, height: 87)
        .foregroundStyle(isSelected ? Color.primary : Color.neutralPrimaryGrey)
        .background(isSelected ? Color.yellowPrimaryBrand : Color.greySecondaryBrand)
        .clipShape(RoundedRectangle(cornerRadius: Radius.card))
        
    }
}

#Preview("Selected") {
    DateCardView(date: Date(), isSelected: true)
}

#Preview("Not selected") {
    DateCardView(date: Date(), isSelected: false)
}

