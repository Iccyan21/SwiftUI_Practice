//
//  Navigations.swift
//  HelloSwiftUI
//
//  Created by 水原　樹 on 2023/12/27.
//

import SwiftUI

struct Navigations: View {
    @State var isShowThirdView = false
    var body: some View {
        NavigationStack{
            VStack {
                // 横スクロール
                NavigationLink(destination: SecondView().navigationTitle("画面2")) {
                    Text("SecondViewへ")
                }
                // モーダル遷移はしたからスクロール
                Button{
                    isShowThirdView = true
                } label: {
                    Text("モーダル遷移")
                        .padding()
                }
                .sheet(isPresented: $isShowThirdView) {
                    Navigations3()
                }
               
            }
            
            .padding()
            .navigationTitle("画面１")
        }
    }
}

#Preview {
    Navigations()
}
