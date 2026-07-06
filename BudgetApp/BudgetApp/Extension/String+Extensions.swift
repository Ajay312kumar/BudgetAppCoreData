//
//  String+Extension.swift
//  BudgetApp
//
//  Created by Ajay kumar on 06/07/26.
//

import Foundation

extension String {
    
    var isEmptyOrWhitespace: Bool {
        return trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }
    
    
    
}
