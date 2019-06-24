//
//  TeamDetail.swift
//  Copa America
//
//  Created by Tito Junior on 10/06/19.
//  Copyright © 2019 Agilemob. All rights reserved.
//

import SwiftUI

struct TeamDetail : View {
    
    let teamMatch : TeamMatch
    
    var body: some View {
        VStack {
            Image(teamMatch.team.img)
            Text(teamMatch.team.name)
                .font(.title)
            
            List(teamMatch.matchs) { match in
                HStack {
                    
                    VStack {
                        
                        HStack {
                            Image(match.primary.img)
                            Text(match.primary.name)
                        }
                        
                        HStack {
                            Image(match.secondary.img)
                            Text(match.secondary.name)
                        }
                        
                    }
                    
                    Spacer()
                    Divider()
                    VStack {
                        
                        Text(match.date.customFormat(format: "YYYY/MM/dd"))
                            .font(.subheadline)
                            .color(.secondary)
                        
                        Text(match.date.customFormat(format: "HH:MM"))
                            .font(.subheadline)
                            .color(.secondary)
                        
                    }
                    .padding(.horizontal)
                    
                }
            }
            
        }
    }
}

#if DEBUG
struct TeamDetail_Previews : PreviewProvider {
    static var previews: some View {
        TeamDetail(teamMatch: sampleTeamMatchs[0])
    }
}
#endif
