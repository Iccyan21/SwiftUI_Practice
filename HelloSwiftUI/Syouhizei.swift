//
//  Syouhizei.swift
//  HelloSwiftUI
//
//  Created by 水原　樹 on 2023/12/27.
//

import SwiftUI

struct Syouhizei: View {
    @State var inputText = ""
    @State var tax8 = 0.0
    @State var tax10 = 0.0
    var body: some View {
        TextField("ここに文字を入力",text:$inputText)
        VStack(spacing:20){
            Button("計算"){
                tax8 = Double(inputText)! * 0.08
                tax10 = Double(inputText)! * 0.1
            }
            Text("価格：\(inputText)")
            Text("消費税8%:\(tax8)")
            Text("消費税10%\(tax10)")
        }
        .padding()
    }
}

#Preview {
    Syouhizei()
}
