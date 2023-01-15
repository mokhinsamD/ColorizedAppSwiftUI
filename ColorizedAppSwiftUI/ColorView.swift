//
//  ColorView.swift
//  ColorizedAppSwiftUI
//
//  Created by Дарина Самохина on 14.01.2023.
//

import SwiftUI

struct ColorView: View {
    
    var red: CGFloat
    var green: CGFloat
    var blue: CGFloat
    
    var body: some View {
        Rectangle()
            .cornerRadius(20)
            .frame(height: 200)
            .foregroundColor(Color(red: red, green: green, blue: blue))
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(lineWidth: 4)
                    .foregroundColor(.white)
            )
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(red: 142/255, green: 142/255, blue: 146/255)
    }
}
