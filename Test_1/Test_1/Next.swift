//
//  Next.swift
//  Test
//
//  Created by 유영웅 on 2022/06/27.
//

import Foundation
import SwiftUI

struct Navi:View{
    
}
//네비게이션 링크(버튼)
NavigationLink(destination: HStackView()){
    Text("Next")
        .fontWeight(.bold)
        .padding()
        .foregroundColor(.white)
        .font(.system(size: 30))
        .background(Color.blue)
        .cornerRadius(20)
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

