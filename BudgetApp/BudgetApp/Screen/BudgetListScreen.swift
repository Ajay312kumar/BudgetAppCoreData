//
//  BudgetListScreen.swift
//  BudgetApp
//
//  Created by Ajay kumar on 05/07/26.
//

import SwiftUI

struct BudgetListScreen: View {
    
    @State private var isPresent: Bool = false
    
    var body: some View {
        
        VStack {
            Text("BudgetApp!")
        }.navigationTitle("BudgetApp")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Add Budget") {
                        isPresent = true
                    }
                }
            }.sheet(isPresented: $isPresent, content: {
                AddBudgetScreen()
            })
       
    }
}

#Preview {
    NavigationStack{
        BudgetListScreen()
    }
}
