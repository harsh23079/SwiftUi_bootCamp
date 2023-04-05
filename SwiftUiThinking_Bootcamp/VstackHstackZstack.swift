//
//  VstackHstackZstack.swift
//  SwiftUiThinking_Bootcamp
//
//  Created by Harsh Mishra on 04/04/23.
//

import SwiftUI

struct VstackHstackZstack: View {
    let count:Int
    let title:String
    let background:Color
    
//    init(count:Int,title:String){
//        self.count = count
//        self.title = title
//
//        if title == "Apple"{
//            background = .red
//        }
//        else{
//            background = .orange
//        }
//
//    }
    
    init(count:Int,fruits:Fruits){
        self.count = count
        
        
        if fruits == .apple{
            self.title = "Apple"
            background = .red
        }
        else {
            self.title = "Orange"
            background = .orange
        }
        
    }
    
    enum Fruits {
    case apple
    case orange
    }
    
    var body: some View {
        VStack(alignment: .center){
            Spacer()
            VStack{
                Rectangle().frame(width:80,height: 80).foregroundColor(.red)
                Rectangle().frame(width:80,height: 80).foregroundColor(.yellow)
                Rectangle().frame(width:80,height: 80).foregroundColor(.green)
            }
            Spacer()
            VStack{
                Text("\(count)").font(.title).foregroundColor(.white).underline()
                Text(title).font(.title2).foregroundColor(.white)
                
                
            }.frame(width: 150,height: 150).background(background).cornerRadius(10)
            Spacer()
        }
    }
}

struct VstackHstackZstack_Previews: PreviewProvider {
    static var previews: some View {
        HStack{
            VstackHstackZstack(count: 34, fruits:.apple)
            VstackHstackZstack(count: 66, fruits:.orange)
        }
    }
}
