//
//  Results.swift
//  swapi
//
//  Created by Alfin Taufiqurrahman on 21/02/19.
//  Copyright © 2019 Alfin Taufiqurrahman. All rights reserved.
//

import UIKit

class Results: Decodable {
        let count: Int?
        let next: String?
        let previous: String?
        let results: [DataArray]
    
    init(count: Int, next: String, previous: String, results: [DataArray]) {
        self.count = count
        self.next = next
        self.previous = previous
        self.results = results
    }
}
