//
//  MyVstack.swift
//  Test_5
//
//  Created by 유영웅 on 2022/07/04.
//

import SwiftUI

struct MyVstack : View{
    var body : some View{
        VStack(alignment: .center, spacing: 10){        //Vstack 전체에 규격 성정 가능
            Divider()//.opacity(100)
            Spacer()
            Text("apple")
                .font(.system(size: 40))
                .foregroundColor(.white)
                .fontWeight(.bold)
                
            
            Rectangle().frame(width: 100, height: 100, alignment: .center).padding()
            Circle().frame(width: 100, height: 100, alignment: .center)
            Image(systemName: "triangle.fill").font(.system(size: 100))
            Spacer()
            
            
        }
        //.frame(width: 450, height: 900.0)
        .background(Color.gray)
        //.edgesIgnoringSafeArea(.all)
        
    }
}


struct MyVstack_Previews: PreviewProvider {
    static var previews: some View {
        MyVstack()
    }
}
