//
//  ContentView.swift
//  SwiftUiThinking_Bootcamp
//
//  Created by Harsh Mishra on 16/03/23.
//

import SwiftUI

struct ContentView: View {
    var color = #colorLiteral(red: 0.4762643576, green: 0.7602373958, blue: 0.9512003064, alpha: 1)
    private let imageUrl:String="https://res.cloudinary.com/people-matters/image/upload/fl_immutable_cache,w_624,h_351,q_auto,f_auto/v1570504895/1570504893.jpg"
    var body: some View {
       
            VStack{
                AsyncImage(url: URL(string: imageUrl),scale: 2.0).border(Color(UIColor.systemGroupedBackground),width: 2).shadow(radius: 10)
                Spacer()
            }.padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
