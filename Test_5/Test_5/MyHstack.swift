//
//  MyHstack.swift
//  Test_5
//
//  Created by 유영웅 on 2022/07/04.
//

import SwiftUI

struct MyHstack : View {
    var body : some View{
            VStack{
                Divider()
                Spacer()
                Text("apple")
                    .font(.system(size: 40))
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                
                HStack{
                    Rectangle().frame(width: 100, height: 100, alignment: .center).padding()
                    Circle().frame(width: 100, height: 100, alignment: .center)
                    Image(systemName: "triangle.fill").font(.system(size: 100))
                }
                Spacer()
            }.background(Color.gray)
    }
}

struct MyHstack_Previews: PreviewProvider {
    static var previews: some View {
        MyHstack()
    }
}
