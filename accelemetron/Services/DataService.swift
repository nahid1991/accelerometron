//
//  DataService.swift
//  accelemetron
//
//  Created by Nahid on 6/9/19.
//  Copyright © 2019 Nahid. All rights reserved.
//

import Foundation

class DataService {
    private let categories = [
        category(label: "CAMERAS", image: "1.png"),
        category(label: "CITIES", image: "2.png"),
        category(label: "ANIMALS", image: "3.png"),
        category(label: "FLOWERS", image: "4.png"),
        category(label: "STANDS", image: "5.png"),
        category(label: "URBAN", image: "6.png")
    ]
    
    func getCategories() -> [category] {
        return categories
    }
}
