//
//  ContentView.swift
//  Test
//
//  Created by 유영웅 on 2022/06/27.
//

import SwiftUI

struct ContentView: View {
    
    
    @State      //변수선언전에 해줘야함 (값의 변화를 감지)->View에 적용
    private var isActivated: Bool = false
    
    var body: some View {
        
        NavigationView{
            VStack{     //토글/버튼
                VStack{      //뷰
                    
                    HStackView(isActivated: $isActivated)
                    HStackView(isActivated: $isActivated)
                    HStackView(isActivated: $isActivated)
                }
                .padding(.top, isActivated ? 40 : 10)              //속성
                .padding(.bottom, isActivated ? 40 : 10)
                .padding(.leading, isActivated ? 20 : 5)  //왼쪽
                .padding(.trailing,isActivated ? 20 : 5)  //오른쪽
                .background(isActivated ? Color.blue : Color.yellow)
                .cornerRadius(20)
                
                //탭 제스처 추가      //눌렀을때 속성 변화
                .onTapGesture{
                    if isActivated == false{
                        print("파랑")
                    }
                    else{
                        print("노랑")
                    }
                    withAnimation{          //애니메이션과 함께
                        //toggle() true이면 fasle,false 이면 true 로
                        self.isActivated.toggle()
                    }
                    
                }//뷰
                //네비게이션 링크(버튼)
                NavigationLink(destination: TextView(isActivated: $isActivated)){
                    Text("Next")
                        .fontWeight(.bold)
                        .padding()
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                        .background(isActivated ?  Color.blue : Color.cyan)
                        .cornerRadius(20)
                }
                
                
            }.padding(.all)
                .frame(minWidth: 0, maxWidth: .infinity,minHeight: 0,maxHeight: .infinity)
                .background(Color.white)//토글/버튼
        }       //NavigationView
        
    }//body
    
}
//보여주는 역할
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
