//
//  Match.swift
//  Copa America
//
//  Created by Tito Junior on 10/06/19.
//  Copyright © 2019 Agilemob. All rights reserved.
//

import SwiftUI

struct Match : Identifiable {
    var id = UUID()
    var primary : Team
    var secondary : Team
    var date : Date
}

#if DEBUG

let sampleMatchs  = [
    Match(primary:  Team(name: "Brasil",
                         img: "brasil"),
          secondary: Team(name: "Bolivia",
                          img: "bolivia"),
          date: Date())
]

#endif
