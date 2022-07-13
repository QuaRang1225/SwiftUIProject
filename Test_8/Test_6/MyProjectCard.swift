//
//  MyProjectCard.swift
//  Test_6
//
//  Created by 유영웅 on 2022/07/08.
//

import Foundation
import SwiftUI


struct MyProjectCard:View{
    @State var shouldShoiwAlert: Bool = false
    //클래스 - 참조형, 구조체 - 값
    //state를 붙이면 구조체 안에서 변수를 선언 할 수 있게 됨
    var body: some View{
        VStack(alignment: .leading,spacing: 10){
            //Rectangle().frame(height:0)
            Text("콰랑 모음집").font(.system(size: 30)).fontWeight(.black)
            Text("병특 4대장")
                .padding(.bottom)//Spacer().frame(height:20)
                .foregroundColor(.secondary)
            HStack(){
                Image("sibar").resizable().frame(width:50,height:50).clipShape(Circle()).overlay(Circle().stroke(lineWidth: 3).foregroundColor(.green))
                Image("lee").resizable().frame(width:50,height:50).clipShape(Circle()).overlay(Circle().stroke(lineWidth: 3).foregroundColor(.blue))
                Image("cant").resizable().frame(width:50,height:50).clipShape(Circle()).overlay(Circle().stroke(lineWidth: 3).foregroundColor(.red))
                Image("kind").resizable().frame(width:50,height:50).clipShape(Circle()).overlay(Circle().stroke(lineWidth: 3).foregroundColor(.gray))
                Spacer()
                //버튼 액션
                Button(action: {
                    print("병특이 되었습니다")
                    self.shouldShoiwAlert = true
                }){//버튼 속성
                    Text("버튼").fontWeight(.black).padding(15).frame(width:80).background(Color.blue).cornerRadius(15).foregroundColor(.white)
                }.alert(isPresented: $shouldShoiwAlert){
                    Alert(title: Text("병특이 되었습니다."))
                }
                
            }
                
        }.padding().background(Color.yellow).cornerRadius(20)
    }
}

struct MyProjectCard_Previews: PreviewProvider {
    static var previews: some View {
        MyProjectCard()
    }
}
