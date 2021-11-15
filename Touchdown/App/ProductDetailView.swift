//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by ProSmart on 15.11.21..
//

import SwiftUI

struct ProductDetailView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            // NAVBAR
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            // HEADER
            HeaderDetailView()
                .padding(.horizontal)
            
            // DETAIL TOP PART
            // DETAIL BOTTOM PART
            // RATINGS + SIZES
            // DESCRIPTION
            // QUANTITY + FAVORITE
            //ADD TO CART
            Spacer()
        }//: VSTACK
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(red: sampleProduct.red,
                  green: sampleProduct.green,
                  blue: sampleProduct.blue)
        ).ignoresSafeArea(.all, edges: .all
        )
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
