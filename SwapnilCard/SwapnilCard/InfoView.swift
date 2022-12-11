//
//  InfoView.swift
//  SwapnilCard
//
//  Created by Swapnil Dhiman on 28/11/22.
//

import SwiftUI


struct InfoView: View {
    
    let text:String
    let imageName:String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 40)
            .frame(height: 50)
            .foregroundColor(.white)
            .overlay(
                HStack {
                    Image(systemName: imageName)
                        .foregroundColor(Color(red: 0.09, green: 0.63, blue: 0.52, opacity: 1))
                    Text(text)
                        .foregroundColor(.black)
                }
            )
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "phone.fill") //used to create preview only
            .previewLayout(.sizeThatFits)
    }
}
