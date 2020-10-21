//
//  SiteViewModel.swift
//  Mercado Libre VIP SwiftUI
//
//  Created by Lucio Murature on 20/10/2020.
//  Copyright © 2020 Lucio Murature. All rights reserved.
//

import Foundation

class SiteCategoryViewModel: Identifiable {
    
    let id = UUID()
    
    let category: Category
    
    init(category: Category) {
          self.category = category
    }
 
    var name: String {
        return self.category.Name
    }
    
    var categoryId: String {
        return self.category.CategoryId
    }
    
}
