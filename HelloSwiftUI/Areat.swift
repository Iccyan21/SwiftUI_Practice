//
//  Areat.swift
//  HelloSwiftUI
//
//  Created by 水原　樹 on 2023/12/27.
//

import SwiftUI

struct Areat: View {
    @State var isShowAlert = false
    @State var isShowDialog = false
    var body: some View {
        VStack{
            Button{
                isShowAlert = true
                
            } label: {
                Text("アラートを表示")
            }
            .alert("タイトル", isPresented: $isShowAlert){
                Button("キャンセル"){
                    
                }
                Button("OK"){
                    
                }
            } message: {
                Text("ここに詳細メッセージを書きます")
            }
            Button{
                isShowDialog = true
            } label: {
                Text("ダイヤログを表示")
            }
            .confirmationDialog("タイトル", isPresented:$isShowDialog,titleVisibility: .visible){
                Button("選択肢１"){
                }
                Button("選択肢2"){
                    
                }
            } message: {
                Text("メッセージ")
            }
        }
        .padding()
    }
}

#Preview {
    Areat()
}
