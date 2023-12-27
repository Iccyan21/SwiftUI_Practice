//
//  Saikoro.swift
//  HelloSwiftUI
//
//  Created by 水原　樹 on 2023/12/27.
//

import SwiftUI

struct Saikoro: View {
    @State var randomNumber = 1
    @State var timer: Timer?
    @State var isRolling = false
    var body: some View {
        VStack{
            // Spacer()は限界までスペースを作ってくれる
            Spacer()
            // Xcodeにあらかじめ登録されている画像
            Image(systemName: "die.face.\(randomNumber)")
                .resizable()
                .scaledToFit()
                .frame(width: UIScreen.main.bounds.width/2)
                .padding()
            Spacer()
            
            Button{
                print("ボタンが押されたよ")
                isRolling = true
                // 0.1秒毎に処理する
                timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { _ in
                    randomNumber = Int.random(in: 1...6)
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                    timer?.invalidate()
                    timer = nil
                    isRolling = false
                }
            } label: {
                Text("サイコロを振る")
                    .padding()
                    .background(Color.orange)
                    .foregroundColor(.black)
                    .cornerRadius(10)
            }
            .disabled(isRolling)
            Spacer()
        }
    }
}

func playDice() {
    
}

#Preview {
    Saikoro()
}
