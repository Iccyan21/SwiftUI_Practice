//
//  CounterView.swift
//  HelloSwiftUI
//
//  Created by 水原　樹 on 2023/12/29.
//

import SwiftUI

struct CounterView: View {
    @State var count = 0
    @State var isShowAlert = false
    var body: some View {
        ZStack {
            Color.yellow
                .ignoresSafeArea()
            VStack {
                Text("\(count)")
                    .font(.system(size: 130, weight: .bold, design: .default))
                HStack {
                    Button {
                        count -= 1
                    } label: {
                        Text("-")
                            .frame(height: UIScreen.main.bounds.height/2.5)
                            .frame(maxWidth: .infinity)
                            .background(.red)
                            .foregroundColor(.white)
                            .font(.system(size: 130, weight: .bold, design: .default))
                            .cornerRadius(10)
                    }
                    Button {
                        count += 1
                    } label: {
                        Text("+")
                            .frame(height: UIScreen.main.bounds.height/2.5)
                            .frame(maxWidth: .infinity)
                            .background(.green)
                            .foregroundColor(.white)
                            .font(.system(size: 130, weight: .bold, design: .default))
                            .cornerRadius(10)
                    }
                }
                Spacer()
                Button {
                    isShowAlert = true
                } label: {
                    Text("リセットする")
                        .bold()
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(.white)
                        .foregroundColor(.red)
                        .cornerRadius(10)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(.red, lineWidth: 1))
                }
                .alert("注意", isPresented: $isShowAlert) {
                    Button("リセットする", role: .destructive) {
                        count = 0
                    }
                    Button("キャンセル", role: .cancel) {}
                } message: {
                    Text("現在のカウントをリセットしますが、本当によろしいでしょうか？")
                }
            }
            .padding()
        }
    }
}

#Preview {
    CounterView()
}
