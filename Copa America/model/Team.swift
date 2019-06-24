//
//  Team.swift
//  Copa America
//
//  Created by Tito Junior on 10/06/19.
//  Copyright © 2019 Agilemob. All rights reserved.
//

import SwiftUI

struct Team : Identifiable {
    var id = UUID()
    var name : String
    var img : String
}

#if DEBUG


let sampleTeams = [
    
    Team(name: "Brasil",
         img: "brasil"),
    
    Team(name: "Bolivia",
         img: "bolivia"),
    
    Team(name: "Venezuela",
         img: "venezuela"),
    
    Team(name: "Peru",
         img: "peru"),
    
    Team(name: "Argentina",
         img: "argentina"),
    
    Team(name: "Colômbia",
         img: "colombia"),
    
    Team(name: "Paraguai",
         img: "paraguai"),
    
    Team(name: "Qatar",
         img: "qatar"),
    
    Team(name: "Uruguai",
         img: "uruguai"),
    
    Team(name: "Equador",
         img: "equador"),
    
    Team(name: "Japão",
         img: "japao"),
    
    Team(name: "Chile",
         img: "chile")
]
#endif
