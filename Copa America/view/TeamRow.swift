//
//  TeamRow.swift
//  Copa America
//
//  Created by Tito Junior on 10/06/19.
//  Copyright © 2019 Agilemob. All rights reserved.
//

import SwiftUI

struct TeamRow : View {
    
    let teamMatch : TeamMatch
    
    var body: some View {
        NavigationButton(destination: TeamDetail(teamMatch: teamMatch)) {
            HStack{
                Text(teamMatch.team.name)
                
            }
        }
    }
}

#if DEBUG
struct TeamRow_Previews : PreviewProvider {
    static var previews: some View {
        TeamRow(teamMatch: sampleTeamMatchs[0])
    }
}
#endif
