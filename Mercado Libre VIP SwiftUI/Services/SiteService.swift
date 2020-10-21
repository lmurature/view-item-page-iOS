//
//  SiteService.swift
//  Mercado Libre VIP SwiftUI
//
//  Created by Lucio Murature on 20/10/2020.
//  Copyright © 2020 Lucio Murature. All rights reserved.
//

import Foundation

class SiteService {
    
    func getSiteCategories(url: URL, completion: @escaping (Site) -> ()) {
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            guard let data = data, error == nil else {
                return
            }
            
            let decoder = JSONDecoder()
            if let json = try? decoder.decode(Site.self, from: data) {
                DispatchQueue.main.async {
                    completion(json)
                }
            }
            
        }.resume()
        
    }
}
