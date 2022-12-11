//
//  ContentView.swift
//  SwapnilCard
//
//  Created by Swapnil Dhiman on 28/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 0.09, green: 0.63, blue: 0.52, opacity: 1)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("swapnil")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200.0, height: 200.0)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                
                Text("Swapnil Dhiman")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                .foregroundColor(.white)
                
                Text("iOS Developer at Walmart")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                
                Divider()
                InfoView(text: "+91 8824348105", imageName: "phone.fill")  //we can reuse this component we made
                
                InfoView(text: "swapnil.dhiman@walmart.com", imageName: "envelope.fill")
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
