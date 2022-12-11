//
//  ContentView.swift
//  H4X0R
//
//  Created by Swapnil Dhiman on 29/11/22.
//

import SwiftUI

struct ContentView: View {
    
    //listener property
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        //navigation view/stack allows us to navigate between screens and gives us ability to go backwards as well
        NavigationView{
            //Table view or list view
            //for every single post in networkManager.posts array we are using Text() function
            List(networkManager.posts){ post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
               
            }
            .navigationBarTitle("H4X0R NEWS")
        }
        .navigationViewStyle(.stack)
        .onAppear {
            //print(networkManager.posts[0].title)
            //similar to view didload func
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//protocol identifiable allows list to recognise order of post object based on id property
/*
struct Post:Identifiable{
    let id : String
    let title : String
}

let posts = [
    Post(id: "1", title: "Hello"),
    Post(id: "2", title: "Hello_2"),
    Post(id: "3", title: "Hello_3")
]
*/
