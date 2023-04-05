//
//  GradientBootcamp.swift
//  SwiftUiThinking_Bootcamp
//
//  Created by Harsh Mishra on 21/03/23.
//

import SwiftUI

struct GradientBootcamp: View {
    var color = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    
    var body: some View {
        VStack{
            Spacer()
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    //                Color.red
                    LinearGradient(gradient: Gradient(colors:[Color.red,Color.blue]), startPoint: .top, endPoint: .bottom)
                )
                .frame(width: 300,height: 200)
            Spacer()
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    //                Color.red
                    RadialGradient(colors: [Color(color),Color(#colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1))], center: .center, startRadius: 60, endRadius: 200)
                )
                .frame(width: 300,height: 200)
            Spacer()
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    //                Color.red
                    AngularGradient(gradient: Gradient(colors:[Color(color),Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))]), center: .topLeading,angle: .degrees(180))
                )
                .frame(width: 300,height: 200)
            Spacer()
        }.padding()
    }
}

struct GradientBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientBootcamp()
    }
}
