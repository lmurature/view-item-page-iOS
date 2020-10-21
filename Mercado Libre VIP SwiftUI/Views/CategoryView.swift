//
//  CategoryView.swift
//  Mercado Libre VIP SwiftUI
//
//  Created by Lucio Murature on 19/10/2020.
//  Copyright © 2020 Lucio Murature. All rights reserved.
//

import Foundation
import SwiftUI

struct CategoryView: View {
    var img: String
    var name: String
    var body: some View {
        VStack {
            Image(img)
            Text(name).font(.custom("ProximaNova-Regular", size: 20.0))
        }
    }
}
