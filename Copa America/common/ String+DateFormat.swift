//
//   String+DateFormat.swift
//  Copa America
//
//  Created by Tito Junior on 10/06/19.
//  Copyright © 2019 Agilemob. All rights reserved.
//

import Foundation

extension String {
    
    //  yyyy-MM-dd'T'HH:mm:ss.SSSZ
    func customFormat(fromFormat : String, toFormat : String) -> String {
        
        // Formato que vem do servidor
        let GMTFormat = DateFormatter()
        GMTFormat.locale = Locale(identifier: "en_US_POSIX")
        GMTFormat.dateFormat = fromFormat
        GMTFormat.timeZone = TimeZone(secondsFromGMT: 0)
        
        // Formato desejado
        if let dateObject = GMTFormat.date(from: self) {
            let PTBRFormat = DateFormatter()
            PTBRFormat.locale = Locale(identifier: "pt_BR")
            PTBRFormat.dateFormat = toFormat
            PTBRFormat.timeZone = TimeZone(identifier: TimeZone.current.identifier)
            
            return PTBRFormat.string(from: dateObject)
        }
        
        return "-"
        
    }
    
    func dateFormat(format : String) -> String {
        
        // Formato que vem do servidor
        let GMTFormat = DateFormatter()
        GMTFormat.locale = Locale(identifier: "en_US_POSIX")
        GMTFormat.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        GMTFormat.timeZone = TimeZone(secondsFromGMT: 0)
        
        // Formato desejado
        if let dateObject = GMTFormat.date(from: self) {
            let PTBRFormat = DateFormatter()
            PTBRFormat.locale = Locale(identifier: "pt_BR")
            PTBRFormat.dateFormat = format
            PTBRFormat.timeZone = TimeZone(identifier: TimeZone.current.identifier)
            
            return PTBRFormat.string(from: dateObject)
        }
        
        return "-"
        
    }
    
}
