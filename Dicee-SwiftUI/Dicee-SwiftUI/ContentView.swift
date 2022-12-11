//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Swapnil Dhiman on 28/11/22.
//

import SwiftUI

struct ContentView: View {
    
    //In struct we can't change values since, structures in swift are immutable (old copy has to be destroyed and new copy has to replace it for changing it), State will update the variable and recreate the Struct whenever the number changes
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 1
    
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("diceeLogo")
                
                Spacer()
                
                HStack {
                    DiceView(n:leftDiceNumber)
                    DiceView(n:rightDiceNumber)
                }
                .padding(.horizontal)
                
                Spacer()
                
                Button(action:{
                    self.leftDiceNumber = Int.random(in:1...6)
                    self.rightDiceNumber = Int.random(in:1...6)
                }){
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(Color.red)
                .padding(.bottom)
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}

struct DiceView: View {
    let n:Int
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1,contentMode: .fit)
            .padding()
    }
}
