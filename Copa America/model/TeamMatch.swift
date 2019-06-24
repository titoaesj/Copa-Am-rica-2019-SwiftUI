//
//  TeamMatch.swift
//  Copa America
//
//  Created by Tito Junior on 11/06/19.
//  Copyright © 2019 Agilemob. All rights reserved.
//

import SwiftUI

struct TeamMatch : Identifiable {
    var id = UUID()
    var team : Team
    var isFavorit: Bool
    var matchs : [Match]
}

#if DEBUG


let sampleTeamMatchs = [
    
    TeamMatch(team: sampleTeams[0],
              isFavorit: true,
              matchs: sampleMatchs),
    
    TeamMatch(team: sampleTeams[1],
              isFavorit: false,
              matchs: sampleMatchs),
    
    TeamMatch(team: sampleTeams[2],
              isFavorit: false,
              matchs: sampleMatchs),
    
    TeamMatch(team: sampleTeams[3],
              isFavorit: true,
              matchs: sampleMatchs),
    
    TeamMatch(team: sampleTeams[4],
              isFavorit: false,
              matchs: sampleMatchs),
    
    TeamMatch(team: sampleTeams[5],
              isFavorit: true,
              matchs: sampleMatchs),
    
    TeamMatch(team: sampleTeams[6],
              isFavorit: false,
              matchs: sampleMatchs),
    
    TeamMatch(team: sampleTeams[7],
              isFavorit: false,
              matchs: sampleMatchs),
    
    TeamMatch(team: sampleTeams[8],
              isFavorit: true,
              matchs: sampleMatchs),
    
    TeamMatch(team: sampleTeams[9],
              isFavorit: false,
              matchs: sampleMatchs),
    
    TeamMatch(team: sampleTeams[10],
              isFavorit: false,
              matchs: sampleMatchs),
    
    TeamMatch(team: sampleTeams[11],
              isFavorit: true,
              matchs: sampleMatchs),
]
#endif

