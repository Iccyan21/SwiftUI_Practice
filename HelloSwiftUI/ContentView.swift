//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 水原　樹 on 2023/12/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // 縦並び
        VStack {
            Rectangle()
                .foregroundColor(.gray)
                .frame(width: 350,height: 100)
            
            Rectangle()
                .foregroundColor(.purple)
                .frame(width: 350,height: 100)
            // 横並び
            HStack {
                Rectangle()
                    .foregroundColor(.blue)
                    .frame(width: 150,height: 150)
                Rectangle()
                    .foregroundColor(.red)
                    .frame(width: 100,height: 100)
                Rectangle()
                    .foregroundColor(.yellow)
                    .frame(width: 50,height: 50)
            }
            // 重ねる
            ZStack {
                Rectangle()
                    .foregroundColor(.green)
                    .frame(width: 350,height: 200)
                
                HStack {
                    VStack{
                        Rectangle()
                            .foregroundColor(.pink)
                            .frame(width: 150,height: 70)
                        Rectangle()
                            .foregroundColor(.black)
                            .frame(width: 150,height: 70)
                    }
                    VStack{
                        Rectangle()
                            .foregroundColor(.white)
                            .frame(width: 150,height: 70)
                        Rectangle()
                            .foregroundColor(.yellow)
                            .frame(width: 150,height: 70)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
