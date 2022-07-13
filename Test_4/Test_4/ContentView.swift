//
//  ContentView.swift
//  Test_4
//
//  Created by 유영웅 on 2022/06/30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
               
                Image("UP")
                    .frame(height:60)
                    .offset(y:-100)
                CircleImageView()
                HStack{
                    NavigationLink(destination: MyWebview(url: "https://www.youtube.com")
                        .edgesIgnoringSafeArea(.all)
                    ){
                        Text("유투브")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(20)
                            .padding(.trailing)
                    }
                    NavigationLink(destination: MyWebview(url: "http://www.google.com")
                        .edgesIgnoringSafeArea(.all))
                     {
                        Text("구글")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.orange)
                            .cornerRadius(20)
                    }
                } // Hstack
                .padding(50)
                Spacer()
                    
                

            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
