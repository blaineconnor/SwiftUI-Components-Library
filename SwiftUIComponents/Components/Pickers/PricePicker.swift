//
//  PricePicker.swift
//  SwiftUIComponents
//
//  Created by Fatih Emre on 19.12.2024.
//

import SwiftUI

struct PricePicker: View {
    @State private var lowerValue: Double = 20
    @State private var upperValue: Double = 80
    
    let minValue: Double = 0
    let maxValue: Double = 100
    
    var body: some View {
        VStack {
            Text("Fiyat Aralığı: \(Int(lowerValue)) - \(Int(upperValue))")
                .font(.headline)
                .padding(.bottom, 20)
            
            ZStack {
                Rectangle()
                    .fill(Color.gray.opacity(0.5))
                    .frame(height: 4)
                
                Rectangle()
                    .fill(Color.blue)
                    .frame(
                        width: CGFloat(upperValue - lowerValue) / CGFloat(maxValue - minValue) * UIScreen.main.bounds.width,
                        height: 4
                    )
                    .offset(x: CGFloat((lowerValue + upperValue) / 2 - minValue) / CGFloat(maxValue - minValue) * UIScreen.main.bounds.width - UIScreen.main.bounds.width / 2)
                
                DraggablePointer(
                    value: $lowerValue,
                    minValue: minValue,
                    maxValue: upperValue,
                    screenWidth: UIScreen.main.bounds.width,
                    color: .white,
                    sensitivity: 0.2 // Hassasiyet
                )
                
                DraggablePointer(
                    value: $upperValue,
                    minValue: lowerValue,
                    maxValue: maxValue,
                    screenWidth: UIScreen.main.bounds.width,
                    color: .white,
                    sensitivity: 0.2
                )
            }
            .frame(height: 40)
        }
        .padding()
    }
}

struct DraggablePointer: View {
    @Binding var value: Double
    let minValue: Double
    let maxValue: Double
    let screenWidth: CGFloat
    let color: Color
    let sensitivity: Double
    
    var body: some View {
        Circle()
            .fill(color)
            .shadow(radius: 2)
            .frame(width: 30, height: 30)
            .overlay(
                Text("\(Int(value))")
                    .font(.caption)
                    .foregroundColor(.black)
            )
            .offset(x: CGFloat(value - minValue) / CGFloat(maxValue - minValue) * screenWidth - screenWidth / 2)
            .gesture(
                DragGesture()
                    .onChanged { gesture in
                        let delta = Double(gesture.translation.width / screenWidth) * (maxValue - minValue) * sensitivity
                        let newValue = value + delta
                        
                        value = min(maxValue, max(minValue, newValue))
                    }
            )
    }
}

struct PricePicker_Previews: PreviewProvider {
    static var previews: some View {
        PricePicker()
    }
}
