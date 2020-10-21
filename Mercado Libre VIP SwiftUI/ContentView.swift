//
//  ContentView.swift
//  Mercado Libre VIP SwiftUI
//
//  Created by Lucio Murature on 19/10/2020.
//  Copyright © 2020 Lucio Murature. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var siteId: String = ""
    
    var body: some View {
        if self.siteId == "" {
            return AnyView(SitePicker(siteId: $siteId))
        } else {
            return AnyView(CategoryMain())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
