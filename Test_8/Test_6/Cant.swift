//
//  MyBacicCard.swift
//  Test_6
//
//  Created by 유영웅 on 2022/07/08.
//

import Foundation
import SwiftUI

struct Cant:View{
    var body: some View{
        HStack{
            Image(systemName: "flame.fill").font(.system(size: 50)).foregroundColor(.white)
            VStack(alignment:.leading){
                Text("파워").foregroundColor(.white).font(.system(size: 25)).fontWeight(.black)
                Spacer().frame(height:5)
                Text("캔트좌 승리").foregroundColor(.white)
            }
            Spacer()
        }.padding().background(Color.red).cornerRadius(20)
    }
}

struct Cant_Previews: PreviewProvider {
    static var previews: some View {
        Cant()
    }
}
