//
//  InnerCircle.swift
//  SwiftUIComponents
//
//  Created by Fatih Emre Sarman on 30.07.2024.
//

import SwiftUI

struct InnerCircle: View {
    var body: some View {
        ZStack{
            ResizableCircle(color: "55847A", opacity: 0.44, lineWidth: 1, diameter: 200)
                .padding(EdgeInsets(top: 0, leading: 91, bottom: 45, trailing: 0))
            ResizableCircle(color: "55847A", opacity: 0.44, lineWidth: 1, diameter: 200) .padding(EdgeInsets(top: 45, leading: 0, bottom: 0, trailing: 91))
        }
    }
}

#Preview {
    InnerCircle()
}
