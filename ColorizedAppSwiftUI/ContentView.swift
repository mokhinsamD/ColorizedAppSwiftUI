//
//  ContentView.swift
//  ColorizedAppSwiftUI
//
//  Created by Дарина Самохина on 14.01.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redSliderValue: CGFloat = 168
    @State private var greenSliderValue: CGFloat = 200
    @State private var blueSliderValue: CGFloat = 234
    
    @State private var redTextFieldValue = ""
    @State private var greenTextFieldValue = ""
    @State private var blueTextFieldValue = ""
    
    var body: some View {
        ZStack {
            Color(red: 21/255, green: 96/255, blue: 189/255)
                .ignoresSafeArea()
            
            VStack(spacing: 40) {
                ColorView(
                    red: redSliderValue/255,
                    green: greenSliderValue/255,
                    blue: blueSliderValue/255
                )
                
                VStack{
                    ColorCustomizerView(
                        sliderValue: $redSliderValue,
                        textFieldValue: $redTextFieldValue,
                        colorOfSlider: .red
                    )
                    ColorCustomizerView(
                        sliderValue: $greenSliderValue,
                        textFieldValue: $greenTextFieldValue,
                        colorOfSlider: .green
                    )
                    ColorCustomizerView(
                        sliderValue: $blueSliderValue,
                        textFieldValue: $blueTextFieldValue,
                        colorOfSlider: .blue
                    )
                }
                
                Spacer()
            }
            .padding()
        }
        
    }

}

struct ColorCustomizerView: View {
        
    @Binding var sliderValue: CGFloat
    @Binding var textFieldValue: String
    var colorOfSlider: Color
    
    var body: some View {
        HStack {
            Text("\(lround(sliderValue))")
                .foregroundColor(.white)
                .bold()
                .frame(width: 35)
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .tint(colorOfSlider)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
        ContentView()
            .previewDevice("iPhone 14 Pro")
    }
}
