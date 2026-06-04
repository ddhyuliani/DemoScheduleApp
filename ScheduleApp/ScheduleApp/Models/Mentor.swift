    //
    //  Mentor.swift
    //  ScheduleApp
    //
    //  Created by Dini on 29/05/26.
    //

import Foundation

struct Mentor: Identifiable, Hashable {
    let id    = UUID()
    let name:  String
    let role:  String
        /// Pass a named asset or leave nil to fall back to SF Symbol placeholder
    let imageName: String?
    
    init(name: String, role: String = "Tech Mentor", imageName: String? = nil) {
        self.name      = name
        self.role      = role
        self.imageName = imageName
    }
}
