//
//  LessonOne.swift
//  SwiftUI-Animation-Hashnode
//
//  Created by Adam on 8/26/21.
//

import SwiftUI

struct LessonOne: View {
    
    @State private var rectColor: Color = Color.green
    @State private var rectCornerRadius: CGFloat = 0
    
    var body: some View {
        VStack(spacing: 140){
            
            Rectangle()
                .fill(rectColor)
                .frame(width: 100, height: 100, alignment: .center)
                .cornerRadius(rectCornerRadius)
                
            Button(action: {
                withAnimation(.easeIn) {
                    rectColor = Color.pink
                    rectCornerRadius = 50
                }
                
            }) {
                Text("Animate the Box")
                    .foregroundColor(.white)
                    .bold()
            }//End of Button
            .padding()
            .background(Color.blue)
            .cornerRadius(15)
        }//End of VSTack
    }
}

struct LessonOne_Previews: PreviewProvider {
    static var previews: some View {
        LessonOne()
    }
}
