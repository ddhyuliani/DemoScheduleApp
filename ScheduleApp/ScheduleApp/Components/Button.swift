//
//  Button.swift
//  ScheduleApp
//
//  Created by Dini on 29/05/26.
//

import SwiftUI

struct Button: View {
    let title:  String
    let color:  Color
    let action: () -> Void
    
    var body: some View {
        Text(title)
            .font(Typography.body)
            .foregroundStyle(.black)
            .padding(.vertical, SGSpacing.sm)
            .frame(maxWidth: .infinity)
            .background(color)
            .clipShape(RoundedRectangle(cornerRadius: 14))
            .pressable()
            .onTapGesture(perform: action)
    }
}
