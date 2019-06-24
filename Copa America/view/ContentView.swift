//
//  ContentView.swift
//  Copa America
//
//  Created by Tito Junior on 08/06/19.
//  Copyright © 2019 Agilemob. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    var teamMatchs : [TeamMatch] = []
    
    @State var isFavorit : Bool = false
    
    var body: some View {
        
        NavigationView {
            
            HStack{
                Toggle(isOn: $isFavorit) {
                    Text("Favoritos \(isFavorit ? "true" : "false")")
                }
            }.padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
                .padding(.all)
            
            
            List((isFavorit == true) ? teamMatchs.filter{ $0.isFavorit ==  isFavorit} : teamMatchs) { item in
                TeamRow(teamMatch: item)
                }.navigationBarTitle(Text("Copa América"))
            
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        
        ContentView(teamMatchs: sampleTeamMatchs)
    }
}
#endif
