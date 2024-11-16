//
//  Date .swift
//  CryptoTracker
//
//  Created by Kadir Yildiz on 16/11/2024.
//

import Foundation


extension Date {
    
    init(date: String) {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        let date = formatter.date(from: date) ?? Date()
        self.init(timeInterval: 0, since: date)
    }
    
    private static let shortFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "d/M/yy"
        return formatter
    }()
    
    func asShortDateString() -> String {
        return Date.shortFormatter.string(from: self)
    }
}
