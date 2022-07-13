//
//  MyZstack.swift
//  Test_5
//
//  Created by 유영웅 on 2022/07/05.
//

import SwiftUI

struct MyZstack : View{
    var body: some View{
        VStack{
            Divider()
            Spacer()
            Text("").font(.system(size: 50)).foregroundColor(.white).fontWeight(.black)
            ZStack(){
                Rectangle().frame(width: 200, height: 200).foregroundColor(.black)
                Circle().frame(width: 150, height: 150).foregroundColor(.white)
                Image(systemName: "triangle.fill").font(.system(size: 100)).foregroundColor(.black).offset(y:-7)
            }
            Spacer()
        }.background(Color.gray)
    }
}

struct MyZstack_Previews: PreviewProvider {
    static var previews: some View {
        MyZstack()
    }
}
