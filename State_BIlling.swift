//
//  State_BIlling.swift
//  HelloSwiftUI
//
//  Created by 水原　樹 on 2023/12/28.
//

import SwiftUI

struct State_BIlling: View {
    // Stateとはその値が変わったらViewを更新する
    @State var isOn = false
    @State var inputText = ""
    
    @State var isShowInputView = false
    
    
    var body: some View {
        Toggle(isOn: $isOn) {
            if isOn {
                Text("ON")
            } else {
                Text("OFF")
            }
        }
        .padding()
        
        VStack {
            Text("あなたの名前は？: \(inputText)")
                .padding()
            InputView(inputText: $inputText)
        }
        VStack {
            Text("あなたの名前は？: \(inputText)")
                .padding()
            Button("名前を入力する") {
                isShowInputView = true
            }
            .sheet(isPresented: $isShowInputView) {
                InputView(inputText: $inputText)
            }
        }
    }
}

struct InputView: View {
    // @Bindingとは、別のViewの値を、扱えるようになるSwiftUIのカスタム属性
    @Binding var inputText: String
    
    var body: some View {
        TextField("",text: $inputText)
            .background(.gray)
            .padding()
    }
}

#Preview {
    State_BIlling()
}
