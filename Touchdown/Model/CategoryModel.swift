//
//  CategoryModel.swift
//  Touchdown
//
//  Created by ProSmart on 5.11.21..
//

import Foundation


struct Category: Codable, Identifiable {
    var id: Int
    var name: String
    var image: String
}
