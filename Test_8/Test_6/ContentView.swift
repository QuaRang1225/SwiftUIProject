//
//  ContentView.swift
//  Test_6
//
//  Created by 유영웅 on 2022/07/08.
//

import SwiftUI

struct ContentView: View {
    
    @State private var MyListAction: Bool = false
    @State private var ProfileAction: Bool = false
    
    var body: some View {
        NavigationView{
            ZStack(alignment: .bottomTrailing){
                VStack(alignment: .leading){
                    HStack{
                        NavigationLink(destination: MyList(MyListAction: self.$MyListAction)){
                            Image(systemName: "line.3.horizontal").font(.largeTitle).foregroundColor(.gray)
                        }
                        
                        Spacer()
                        NavigationLink(destination: ProfileView(ProfileAction: self.$ProfileAction)){
                            Image(systemName: "person.crop.circle.fill").font(.largeTitle).foregroundColor(.gray)
                        }
                        
                    }
                    Text("병특도감").font(.system(size: 40)).fontWeight(.black).padding(.top,15)
                    Spacer().frame(height: 10)
                    ScrollView{
                        VStack{
                            MyProjectCard()
                            Sibar(icon: "trash.fill", title: "쓰래기 사랑", content: "왕쓰좌 승리", bgColor: Color.green)
                            Lee()
                            Cant()
                            Kind()
                            
                            
                        }
                    }
                }
                
                Circle().frame(width:70,height: 70).foregroundColor(.yellow).overlay(Image(systemName: "plus").font(.system(size: 35)).foregroundColor(.white)).padding(.trailing,20).shadow(radius: 20)
            }.padding(10)
                .navigationBarTitle("메인 화면")
                .navigationBarHidden(self.MyListAction)
                .navigationBarHidden(self.ProfileAction)
                .onAppear{
                    self.MyListAction = true
                    self.ProfileAction = true
                }
        }
    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
