//
//  Lee.swift
//  Test_6
//
//  Created by 유영웅 on 2022/07/08.
//

import Foundation
import SwiftUI

struct Lee:View{
    var body: some View{
        HStack{
            Image(systemName: "waveform.path.ecg.rectangle.fill").font(.system(size: 40)).foregroundColor(.white)
            VStack(alignment:.leading){
                Text("음주운전").foregroundColor(.white).font(.system(size: 25)).fontWeight(.black)
                Spacer().frame(height:5)
                Text("중딱좌 승리").foregroundColor(.white)
            }
            Spacer()
        }.padding().background(Color.blue).cornerRadius(20)
    }
}

struct Lee_Previews: PreviewProvider {
    static var previews: some View {
        Lee()
    }
}
