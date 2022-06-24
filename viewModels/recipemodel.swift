//
//  recipemodel.swift
//  recipelistapp
//
//  Created by Apple on 23/06/2022.
//

import Foundation

class recipemodel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init() {
        
        // Create an instance of data service and get the data
        self.recipes = DataService.getLocalData()
        
        
    }
}
