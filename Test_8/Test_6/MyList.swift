//
//  MyList.swift
//  Test_6
//
//  Created by 유영웅 on 2022/07/13.
//

import Foundation
import SwiftUI

struct MyList : View{
    //구분선 삭제 - ios 버전 13버전에선 없지만 14버전 이후로는 기본값으로 설정 됨
    //init 안에 삽입 내용
    /*
     if #available(iOS 14.0, *){
     }else{
         UITableView.appearance().tableFooterView = UIView()
     }
     UITableView.appearance().separatorStyle = .none
     */
    @Binding var MyListAction : Bool
    
    init(MyListAction: Binding<Bool> = .constant(false)){
        _MyListAction = MyListAction
    }
    
    var body: some View{
        List{
//            ForEach(1...10,id: \.self){
//                Text("퍼킹 \($0)맨")
//            }
            Section(header: Text("왕쓰좌").font(.system(size: 30)).bold().padding(.bottom,10).foregroundColor(Color("blackGreen")) /*,footer: Text("분리수거 완료")*/){
                ForEach(1...3,id: \.self){ i in
                    Sibar(icon: "trash.fill", title: "쓰래기 \(i) 만큼 사랑", content: "왕쓰좌 승리", bgColor: Color.green)
                }
            }
            .listRowSeparator(.hidden)//ios 15 버전 이상 부터 쵸시줄 제거
            .listRowInsets(EdgeInsets.init(top: 10, leading: 50, bottom: 10, trailing: 10))
            Section(header: Text("중딱좌").font(.system(size: 30)).bold().padding(.bottom,10).foregroundColor(Color("blackBlue")) /*,footer : Text("면허정지 완료")*/){
                ForEach(1...10,id: \.self){ i in
                    Sibar(icon: "waveform.path.ecg.rectangle.fill", title: "음주 \(i) 만큼 사랑", content: "중딱좌 승리", bgColor: Color.blue)
                }
            }
            .listRowSeparator(.hidden)
            .listRowInsets(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 50))
            //.listRowBackground(Color.gray)
            
        }//.listStyle(PlainListStyle())
           .listStyle(GroupedListStyle())
            //.navigationTitle("병특행적")
            .navigationBarTitle("병특행적")
            //.navigationBarHidden(self.action)
//            .onAppear{
//                self.action = true
//
//            }
    }
    
}

struct MyList_Previews: PreviewProvider {
    static var previews: some View {
        MyList()
    }
}
