//
//  SitePickerView.swift
//  Mercado Libre VIP SwiftUI
//
//  Created by Lucio Murature on 21/10/2020.
//  Copyright © 2020 Lucio Murature. All rights reserved.
//

import Foundation
import SwiftUI

struct SitePicker: View {
    let sites = ["Argentina 🇦🇷", "Brasil 🇧🇷", "Chile 🇨🇱", "CBT 🌎", "Colombia 🇨🇴", "México 🇲🇽", "Uruguay 🇺🇾"]
    @State var selectedSite = 3
    
    @Binding var siteId: String
    
    var body: some View {
        ZStack {
            Color.yellow
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("meli-logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200.0, height: 100.0)
                Text("¡Hola! 👋🏻").font(.custom("ProximaNova-Regular", size: 40.0))
                Text("\nEscoge un site para comenzar a navegar...").font(.custom("ProximaNova-Regular", size: 20.0))
                Picker(selection: $selectedSite, label: Text("Site")){
                  ForEach(0 ..< sites.count) {
                     Text(self.sites[$0])
                  }
                    }.labelsHidden()
               .padding(.horizontal, 25.0)
                Button(action: {
                    self.siteId = getSiteByCountry(country: self.sites[self.selectedSite])
                    print("Set site_id for binded state \(self.siteId)")
                }, label: {
                    Text("Explorar \(self.sites[selectedSite])").font(.custom("ProximaNova-Regular", size: 20.0)).foregroundColor(Color.white).frame(width: 215.0, height: 75.0).background(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/).cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                })
                    .padding(.top, 20.0)
            }
            }
        
        }
}

func getSiteByCountry(country: String) -> String {
    switch country {
    case "Argentina 🇦🇷":
        return "MLA"
    case "Brasil 🇧🇷":
        return "MLB"
    case "Chile 🇨🇱":
        return "MLC"
    case "CBT 🌎":
        return "CBT"
    case "Colombia 🇨🇴":
        return "MCO"
    case "México 🇲🇽":
        return "MLM"
    case "Uruguay 🇺🇾":
        return "MLU"
    default:
        return "MLA"
    }
}
