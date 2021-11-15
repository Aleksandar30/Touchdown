//
//  TopPartDetailView.swift
//  Touchdown
//
//  Created by ProSmart on 15.11.21..
//

import SwiftUI

struct TopPartDetailView: View {
    // MARK: - PROPERTIES
    //Animiranje slike
    // 1. DODATI BOOLEAN KOJI PRATI STANJE
    @State private var isAnimating: Bool = false
    
    // ANIMIRANJE SLIKE
    // 1. DODATI BOOLEAN KOJI PRATI STANJE
    // 2. DODATI ON APPEAR WITH ANIMATION I PROMENA VREDNOSTI IS ANIMATING
    // 3. NAMESTITI OFFSET ZA ELEMENTE KOJI SE ANIMIRAJU
    
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            //PRICE
            VStack(alignment: .leading, spacing: 6) {
                Text("Price")
                    .fontWeight(.semibold)
                Text(sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            }
            // 3.NAMESTITI OFFSET ZA ELEMENTE KOJI SE ANIMIRAJU
            .offset(y: isAnimating ? -50 : -75)
            
            Spacer()
            
            //PHOTO
            Image(sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
            
        }//: HSTACK
        //na pojavljivanju menja vrednost
        // 2. DODATI ON APPEAR WITH ANIMATION I PROMENA VREDNOSTI IS ANIMATING
        .onAppear {
            withAnimation(.easeOut(duration: 0.75)) {
                isAnimating.toggle()
            }
        }
    }
}
// MARK: - PREVIEW
struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}