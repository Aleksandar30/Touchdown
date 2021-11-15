//
//  Shop.swift
//  Touchdown
//
//  Created by ProSmart on 15.11.21..
//

import Foundation


class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
