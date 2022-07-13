//
//  CircleImageView.swift
//  Test_4
//
//  Created by 유영웅 on 2022/06/30.
//

import Foundation
import SwiftUI

struct CircleImageView : View {
    var body : some View{
       /* Image(systemName: "sun.min")
            .font(.system(size: 100))
            .foregroundColor(.orange )
            .shadow(color: .gray, radius: 2, x: 2, y: 10)*/
        Image("PCYSB")
            .resizable()    //화면에 맞춤
            .scaledToFill()  //아래명령어와 같음
            .aspectRatio(contentMode: .fill) //화면조정정도 .fill : 모두 채움 fit :부분만 채움
            .frame(width:300,height: 300)//실제 이미지 크기
            .clipShape(Circle())    //사진 둥글게
            .shadow(color: .gray, radius: 10, x: 0, y: 40)  //그림 그림자
           // .overlay(Circle().foregroundColor(.black)).opacity(0.6)//투명도
            .overlay(Circle().stroke(Color.pink,lineWidth: 10).padding())
            .overlay(Circle().stroke(Color.yellow,lineWidth: 10).padding(-10))
            //사진의 오버레이를 씌움 .stroke는 윤곽선
            // 색깔과 두께 지정 가능
            //.clipped()//선택한 부분 이외 자르기
            .edgesIgnoringSafeArea(.all)    //모서리채움
            .overlay{
                Text("내 동료가 되라")
                    .foregroundColor(.white)
                    .font(.system(size: 30))
                    .fontWeight(.black)
            }
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}
