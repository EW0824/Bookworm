//
//  RatingView.swift
//  Bookworm
//
//  Created by OAA on 29/12/2022.
//

import SwiftUI

struct RatingView: View {
    
    // @Binding is particularly useful when building custom UI components (ability to share data between views is very useful)
    @Binding var rating: Int
    
    var label = ""
    var maximumRating = 5
    
    var offImage: Image?
    var onImage = Image(systemName: "star.fill")
    
    var offColor = Color.gray
    var onColor = Color.yellow
    
    var body: some View {
        HStack {
            if label.isEmpty == false {
                Text(label)
            }
            
            ForEach(1..<maximumRating+1, id: \.self) { number in
                image(for: number)
                    .foregroundColor(number > rating ? offColor: onColor)
                    .onTapGesture {
                        rating = number
                    }
            }
        }
    }
    
    func image(for number: Int) -> Image {
        if number > rating {
            return offImage ?? onImage
        } else {
            return onImage
        }
        
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        // arbitrary constant binding, perfect for previews
        RatingView(rating: .constant(4))
    }
}
