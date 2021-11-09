//
//  SectionView.swift
//  Touchdown
//
//  Created by ProSmart on 5.11.21..
//

import SwiftUI

struct SectionView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        VStack(spacing: 0) {
            Text("Categories".uppercased())
                .fontWeight(.bold)
        }//: VSTACK
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
    }
}
// MARK: - PREVIEW
struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView()
            .previewLayout(.fixed(width: 120, height: 240))
            .padding()
            .background(colorBackground)
    }
}
