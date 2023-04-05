//
//  ForEachStatement.swift
//  SwiftUiThinking_Bootcamp
//
//  Created by Harsh Mishra on 05/04/23.
//

import SwiftUI

struct ForEachStatement: View {
    let message:String = "Hello"
    let data:[String] = ["Hi","Hello","How are you"]
    var body: some View {
        VStack(alignment: .center,spacing: 10, content: {
//            ForEach(0..<10) { index in
//                HStack {
//                    Circle().frame(width: 30,height: 30)
//                    Text("Hello:- \(index)").font(.title)
//                }
//            }
            ForEach(data.indices) { index in
                Text("\(data[index]):- \(index)")
            }
            
        })
    }
}

struct ForEachStatement_Previews: PreviewProvider {
    static var previews: some View {
        ForEachStatement()
    }
}
