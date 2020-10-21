//
//  CategoryScrollView.swift
//  Mercado Libre VIP SwiftUI
//
//  Created by Lucio Murature on 19/10/2020.
//  Copyright © 2020 Lucio Murature. All rights reserved.
//

import Foundation
import SwiftUI

struct CategoryScroll: View {
    
    @ObservedObject var model = SiteCategoryListViewModel(siteId: "MLA")
                                           
    var body: some View {
        List(self.model.categories) { category in
            Text(category.name)
        }
    }
}
