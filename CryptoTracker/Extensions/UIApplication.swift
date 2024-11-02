//
//  UIApplication.swift
//  CryptoTracker
//
//  Created by Kadir Yildiz on 2/11/2024.
//

import Foundation
import SwiftUI


extension UIApplication {
    
    func endEditing() {
        sendAction( #selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
