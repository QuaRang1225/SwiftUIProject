//
//  Sibar.swift
//  Test_6
//
//  Created by 유영웅 on 2022/07/08.
//

import Foundation
import SwiftUI

struct Sibar:View{
    
    var icon:String
    var title:String
    var content: String
    var bgColor : Color
    
    var body: some View{
        HStack{
            Image(systemName: icon).font(.system(size: 50)).foregroundColor(.white)
            VStack(alignment:.leading){
                Text(title).foregroundColor(.white).font(.system(size: 25)).fontWeight(.black)
                Spacer().frame(height:5)
                Text(content).foregroundColor(.white)
            }
            Spacer()
        }.padding().background(bgColor).cornerRadius(20)
    }
}

struct Sibar_Previews: PreviewProvider {
    static var previews: some View {
        Sibar(icon: "trash.fill", title: "쓰래기 사랑", content: "왕쓰좌 승리", bgColor: Color.green)
    }
}
