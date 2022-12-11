//
//  ContentView.swift
//  I Am Rich 2
//
//  Created by Swapnil Dhiman on 28/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(.systemTeal).edgesIgnoringSafeArea(.all)
            VStack {
                    Text("I Am Rich")
                        .font(.system(size: 40))
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                
                    Image("diamond")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 200, alignment: .center)
            }
        }
    }
}

//MARK: - Shows the content in preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
