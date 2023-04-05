//
//  overlay.swift
//  SwiftUiThinking_Bootcamp
//
//  Created by Harsh Mishra on 26/03/23.
//

import SwiftUI

struct overlay: View {
   
    var body: some View {
        VStack{
            Spacer()
            Rectangle().frame(width: 100,height: 100)
                .overlay (
                    Rectangle().frame(width: 50,height: 50).foregroundColor(.pink).cornerRadius(50)
                    
                    , alignment:.center
                ).background(
                    Rectangle().fill(Color.blue)
                        .frame(width: 150,height:150)
                    ,alignment: .center
                )
            Spacer()
            
            Image(systemName: "heart.fill").font(.title).foregroundColor(.white)
                .background(
                    Circle().fill(
                        LinearGradient(gradient: Gradient(colors: [Color.indigo,Color.orange]), startPoint: .leading, endPoint: .trailing))
                    .shadow(radius: 40)
                        .frame(width: 80,height: 80)
                        .overlay(
                            Circle().fill(Color.blue).frame(width: 30,height: 30)
                            .overlay(
                            Text("5")
                                .foregroundColor(.white)
                            ),alignment: .bottomTrailing
                        )
            )
            Spacer()
            
            Image(systemName: "trash.fill").foregroundColor(.white).font(.title2)
                .background(
                Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)),Color(#colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1))]), startPoint: .leading, endPoint: .bottomTrailing))
                    .shadow(radius: 40)
                    .frame(width: 80,height: 80)
                    .overlay(
                        Circle().fill(Color.blue).frame(width: 30,height: 30)
                            .overlay(Text("5").foregroundColor(.white))
                    ,alignment: .bottomTrailing)
            )
            
            Spacer()
        }
    }
}

struct overlay_Previews: PreviewProvider {
    static var previews: some View {
        overlay()
    }
}
