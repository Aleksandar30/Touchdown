//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by ProSmart on 15.11.21..
//

import SwiftUI

struct NavigationBarDetailView: View {
    var body: some View {
        HStack {
            Button {
                //ACTION
            } label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
            Spacer()
            
            Button {
                //ACTION
            } label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            }

        }//: HSTACK
    }
}

struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
