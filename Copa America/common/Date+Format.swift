//
//  Date+Format.swift
//  Copa America
//
//  Created by Tito Junior on 10/06/19.
//  Copyright © 2019 Agilemob. All rights reserved.
//

import Foundation

extension Date {
    
    public func customFormat(format : String) -> String {
        
        // Formato desejado
        let PTBRFormat = DateFormatter()
        PTBRFormat.locale = Locale(identifier: "pt_BR")
        PTBRFormat.dateFormat = format
        PTBRFormat.timeZone = TimeZone(identifier: TimeZone.current.identifier)
        
        return PTBRFormat.string(from: self)
        
    }
    
}


