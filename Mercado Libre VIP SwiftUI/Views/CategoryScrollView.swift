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
    @State var selectedCategory = ""
    
    @ObservedObject var model = SiteCategoryListViewModel(siteId: "MLA")
                                           
    var body: some View {
        List(self.model.categories) { category in
            HStack {
                Spacer()
                    Button(action: {
                        print(category.categoryId)
                    }) {
                        Text(category.name).font(.custom("ProximaNova-Regular", size: 20.0))
                    }
                Spacer()
            }
        }
    }
}

struct CategoryMain: View {
    var body: some View {
        VStack {
               HStack() {
                   Image("meli-logo")
                       .resizable()
                       .aspectRatio(contentMode: .fit)
                       .padding([.top, .leading])
                       .frame(width: 175.0, height: 105.0)
                   Spacer()
               }
               .frame(height: 100.0)
               .background(/*@START_MENU_TOKEN@*/Color.yellow/*@END_MENU_TOKEN@*/)
               .edgesIgnoringSafeArea(.top)
               CategoryScroll()
           }
    }
}



