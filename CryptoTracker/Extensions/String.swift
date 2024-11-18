//
//  String.swift
//  CryptoTracker
//
//  Created by Kadir Yildiz on 18/11/2024.
//

import Foundation


extension String {
    
    var removingHTMLOccurances: String {
        return self .replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression)
    }
}
