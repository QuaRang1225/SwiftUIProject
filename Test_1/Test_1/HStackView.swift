//
//  HStackView.swift
//  Test
//
//  Created by 유영웅 on 2022/06/27.
//

import Foundation
import SwiftUI



struct HStackView:View{

    //데이터 연동
    @Binding
    var isActivated : Bool
    
    //생성자
    init(isActivated : Binding<Bool> = .constant(true)){
        _isActivated = isActivated
    }
    
    var body: some View{
        HStack{         //가로,세로는 V
            Text("3")
                .fontWeight(.bold)
                .padding(self .isActivated ? 20:10)
                .font(.system(size: 30))   //글씨 크기
                .background(self  .isActivated ? Color("whitepink"):Color.red)  //글씨 배경 색깔
                .cornerRadius(self . isActivated ? 20:10)
                
            Text("6")
                .fontWeight(.bold)
                .padding(self .isActivated ? 20:10)
                .font(.system(size: 30))   //글씨 크기
                .background(self  .isActivated ? Color("whitepink"):Color.red)  //글씨 배경 색깔
                .cornerRadius(self . isActivated ? 20:10)
             Text("9")
                .fontWeight(.bold)
                .padding(self .isActivated ? 20:10)
                .font(.system(size: 30))   //글씨 크기
                .background(self  .isActivated ? Color("whitepink"):Color.red)  //글씨 배경 색깔
                .cornerRadius(self . isActivated ? 20:10)
            
        }
        .padding(self .isActivated ? 10:0)
    }
}
struct HStackView_PreView :PreviewProvider {
    static var previews: some View {
        HStackView()
    }
}

