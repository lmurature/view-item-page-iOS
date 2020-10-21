//
//  ListingSearchService.swift
//  Mercado Libre VIP SwiftUI
//
//  Created by Lucio Murature on 20/10/2020.
//  Copyright © 2020 Lucio Murature. All rights reserved.
//

import Foundation

class ListingSearchService {
    
    func getListingsFromCategory(url: URL, completion: @escaping (ListingSearch?) -> ()) {
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data = data, error == nil else {
                completion(nil)
                return
            }
            
            let response = try? JSONDecoder().decode(ListingSearch.self, from: data)
            if let response = response {
                DispatchQueue.main.async {
                    completion(response.self)
                }
            }

            
        }.resume()
        
    }
}
