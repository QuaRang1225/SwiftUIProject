//
//  ContentView.swift
//  Test_3
//
//  Created by 유영웅 on 2022/06/29.
//

import SwiftUI

struct ContentView: View {
    
    
    static let dataFormat: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "YYYY년 M월 d일 hh:mm:ss"
        //formatter.dateStyle = .long//날짜 출력형태
        return formatter
    }()
    
    var today = Date()
    var trueOrFasle : Bool = false
    var number : Int = 123
    var body: some View {
        VStack{
            Text("이것은 하는 미묘한 수 얼음에 풀밭에 있다. 보이는 천지는 하는 말이다. 같지 끝까지 따뜻한 간에 이 방지하는 있는가? 위하여서 뼈 이것이야말로 대고, 청춘을 자신과 얼마나 간에 봄바람이다. 위하여서 것이다.보라, 실로 보라. 고동을 듣기만 장식하는 소금이라 것이다.보라, 현저하게 그들은 것이다. 기관과 더운지라 그들의 목숨을 인도하겠다는 구하지 말이다. 거친 굳세게 웅대한 자신과 미묘한 인간에 봄날의 힘있다. 수 되려니와, 끓는 석가는 구하지 피에 수 것이다. 구하지 뭇 사랑의 밝은 끓는다. 예가 인생의 사람은 역사를 군영과 밝은 이상이 못할 풀이 철환하였는가? 미인을 속에서 온갖 주며, 봄바람이다. 인생에 황금시대의 모래뿐일 미묘한 소금이라 살 있으며, 있으랴? 피고 거친 하는 칼이다. ")
                .tracking(0)//글자사이 간격
                .font(.system(.body,design:  .rounded))
                .fontWeight(.black)//body일 경우 글의 몸통부분 지정,폰트디자인,폰트 굵기정도
                .multilineTextAlignment(.center)//leading : 왼쪽 정렬,triling : 오른쪽 정렬, center : 가운데 정렬
                .lineLimit(nil)//줄 2줄로 간략화 //nil로 할경우 멀티라인임(줄수에 따라서)
                .lineSpacing(20)//라인과 라인 사이 간격
                .truncationMode(.head)//긴 문자열 자르기 head:앞쪽
                .shadow(color: .white, radius: 4, x: 0, y: 10)//글씨 흐림 색깔,정도,위치
                .padding(.all)
                .background(Color.pink)
                .cornerRadius(20) //코너링
                .padding()
                .background(Color.red)
                .cornerRadius(20)
            Text("안녕하십니까")
                .font(.system(size: 20))
                .fontWeight(.black)
                .padding()
                .background(Color.red)
                .cornerRadius(20)
                .padding()  //기본값 10
            Text("오늘의 날짜입니다 : \(today, formatter: ContentView.dataFormat)")
                Text("참 혹은 거짓 : \(String(trueOrFasle))")
            Text("숫자입니다 : \(number)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
