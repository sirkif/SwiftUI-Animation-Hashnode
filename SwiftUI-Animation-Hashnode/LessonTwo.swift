//
//  LessonTwo.swift
//  SwiftUI-Animation-Hashnode
//
//  Created by Adam on 8/26/21.
//

import SwiftUI

struct LessonTwo: View {
    
    @State private var spacingAnimation: CGFloat = 15
    
    var body: some View {
        
        // spacing: spacingAnimation ? CGFloat(15) : CGFloat(5)
        HStack(spacing: spacingAnimation){
            
            Capsule(style: .continuous)
                .fill(Color(#colorLiteral(red: 0.02352941176, green: 0.8392156863, blue: 0.6274509804, alpha: 1)))
                .frame(width: 10, height: 60)

            Capsule(style: .continuous)
                .fill(Color(#colorLiteral(red: 1, green: 0.8196078431, blue: 0.4, alpha: 1)))
                .frame(width: 10, height: 40)

            Capsule(style: .continuous)
                .fill(Color(#colorLiteral(red: 0.937254902, green: 0.2784313725, blue: 0.4352941176, alpha: 1)))
                .frame(width: 10, height: 60)

            Capsule(style: .continuous)
                .fill(Color(#colorLiteral(red: 1, green: 0.8196078431, blue: 0.4, alpha: 1)))
                .frame(width: 10, height: 40)
            
            Capsule(style: .continuous)
                .fill(Color(#colorLiteral(red: 0.02352941176, green: 0.8392156863, blue: 0.6274509804, alpha: 1)))
                .frame(width: 10, height: 60)
        }
        .animation(.easeInOut(duration: 4))
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            spacingAnimation = 5
            }
        }
    }
}

struct LessonTwo_Previews: PreviewProvider {
    static var previews: some View {
        LessonTwo()
    }
}
