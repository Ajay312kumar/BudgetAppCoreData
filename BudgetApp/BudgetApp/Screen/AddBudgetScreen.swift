//
//  AddBudgetScreen.swift
//  BudgetApp
//
//  Created by Ajay kumar on 06/07/26.
//

import SwiftUI

struct AddBudgetScreen: View {
    
    @State private var title: String = ""
    @State private var limit: Double?
    
    var isFormValid: Bool {
        !title.isEmptyOrWhitespace && limit != nil && limit! > 0
    }
    
    
    var body: some View {
        
        Form {
            Text("New Budget")
                .font(.title)
                .font(.headline)
            
            TextField("title", text: $title)
                .presentationDetents([.medium])
            
            TextField("limit", value: $limit, format: .number)
                .keyboardType(.numberPad)
            
            Button {
                
            } label: {
                Text("Save")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
            .disabled(!isFormValid)
            .presentationDetents([.medium])
        }
    }
}

#Preview {
    AddBudgetScreen()
}
