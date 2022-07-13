//
//  MyBacicCard.swift
//  Test_6
//
//  Created by 유영웅 on 2022/07/08.
//

import Foundation
import SwiftUI

struct Kind:View{
    var body: some View{
        HStack{
            Image(systemName: "heart.fill").font(.system(size: 50)).foregroundColor(.white)
            VStack(alignment:.leading){
                Text("동료애").foregroundColor(.white).font(.system(size: 25)).fontWeight(.black)
                Spacer().frame(height:5)
                Text("고모좌 승리").foregroundColor(.white)
            }
            Spacer()
        }.padding().background(Color.gray).cornerRadius(20)
    }
}

struct Kind_Previews: PreviewProvider {
    static var previews: some View {
        Kind()
    }
}
