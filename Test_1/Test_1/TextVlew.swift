//
//  TextVlew.swift
//  Test
//
//  Created by 유영웅 on 2022/06/27.
//

import Foundation
import SwiftUI

struct TextView : View {
    
    //데이터 연동
    @Binding
    var isActivated : Bool
    
    //생성자
    init(isActivated : Binding<Bool> = .constant(true)){
        _isActivated = isActivated
    }
    
    @State      //변수선언전에 해줘야함 (값의 변화를 감지)->View에 적용
    private var index: Int = 0
    
    //배경색 배열 쭌비
    private let backgroundColor = [
        Color.red,
        Color.orange,
        Color.yellow,
        Color.green,
        Color.blue,
        Color.indigo,
        Color.purple
    ]
    
    var body: some View{
        VStack{
            Spacer()    //빈공간 삽입
            Text("TYPE : \(self.index+1)")
                .font(.system(size: 40))
                .foregroundColor(Color.white)
                .bold()
                .frame(minWidth:0,maxWidth: .infinity,minHeight: 0 ,maxHeight: 50)
            Text("활성화 상태: \(String(isActivated))")
                .font(.system(size: 20))
                .foregroundColor(Color.white)
               
                
            Spacer()
        }
        .background(backgroundColor[index])
        .edgesIgnoringSafeArea(.all)
        .onTapGesture {
            print("색변경\(self.index+1)")
            self.index += 1
            if self.index == self.backgroundColor.count{
                self.index = 0
            }
        }
    }
}
struct TextView_PreView :PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
