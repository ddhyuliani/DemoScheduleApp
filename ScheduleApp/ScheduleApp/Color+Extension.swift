//
//  Color+Extension.swift
//  ScheduleApp
//
//  Created by Dini on 29/05/26.
//

import SwiftUI

extension Color {
    static let neutralPrimaryGrey = Color("#8E8E8E")
    static let purpleAccentBrand = Color("#9678EB")
    static let yellowPrimaryBrand = Color("#FFCD00")
    static let greySecondaryBrand = Color(red: 38/255, green: 38/255, blue: 38/255)
    static let whitePrimarySurface = Color(red: 248/255, green: 248/255, blue: 248/255)
}


extension Color {
    init(_ hex: String) {
        let scanner = Scanner(string: hex)
        _ = scanner.scanString("#")

        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)

        let red = Double((rgb >> 16) & 0xFF) / 255.0
        let green = Double((rgb >> 8) & 0xFF) / 255.0
        let blue = Double(rgb & 0xFF) / 255.0

        self.init(red: red, green: green, blue: blue)
    }
}
