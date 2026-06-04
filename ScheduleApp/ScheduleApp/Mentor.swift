//
//  Mentor.swift
//  ScheduleApp
//
//  Created by Dini on 04/06/26.
//

import Foundation

struct Mentor: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let role: String
    let image: AppImage
    
    init(name: String, role: String = "Tech Mentor", image: AppImage) {
        self.name      = name
        self.role      = role
        self.image     = image
    }
}
