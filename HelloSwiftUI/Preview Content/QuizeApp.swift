//
//  QuizeApp.swift
//  HelloSwiftUI
//
//  Created by 水原　樹 on 2023/12/29.
//

import SwiftUI

struct QuizeApp: View {
    @State var judgeImageName = "circlebadge"
    @State var judgeImageColor = Color.red
    @State var isShowJudgeImage = false
    
    let choice = ["かめ", "ウサギ", "うし", "キリン"]
    let answer = "うし"
    
    var body: some View {
        ZStack {
            VStack {
                Text("第1問")
                    .font(.largeTitle)
                    .padding()
                Text("ぼうしの中に入っている動物はなに？")
                    .font(.title)
                    .padding()
                Spacer()
                ForEach(0..<choice.count, id: \.self) { num in
                    Button {
                        choiceButtonAction(selectAnswer: choice[num])
                    } label: {
                        Text(choice[num])
                            .padding()
                            .frame(width: UIScreen.main.bounds.width*0.9)
                            .background(.green)
                            .foregroundColor(.white)
                            .padding(5)
                    }
                }
            }
            .padding()
            if isShowJudgeImage {
                Image(systemName: judgeImageName)
                    .foregroundColor(judgeImageColor)
                    .font(.system(size: 400, weight: .bold))
            }
        }
    }
    
    func choiceButtonAction(selectAnswer: String) {
        isShowJudgeImage = true
        judgeImageName = selectAnswer == answer ? "circlebadge" : "multiply"
        judgeImageColor = selectAnswer == answer ? .red : .blue
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            isShowJudgeImage = false
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        QuizeApp()
    }
}
