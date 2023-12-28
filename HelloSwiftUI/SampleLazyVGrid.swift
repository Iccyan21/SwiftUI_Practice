//
//  SampleLazyVGrid.swift
//  HelloSwiftUI
//
//  Created by 水原　樹 on 2023/12/28.
//

import SwiftUI

struct SampleLazyVGrid: View {
    let symbols = [
        "pencil",
        "pencil.circle",
        "pencil.circle.fill",
        "pencil.slash",
        "square.and.pencil",
        "rectangle.and.pencil.and.ellipsis",
        "highlighter",
        "pencil.and.outline",
        "pencil.tip",
        "pencil.tip.crop.circle",
        "pencil.tip.crop.circle.badge.plus",
        "pencil.tip.crop.circle.badge.minus",
        "pencil.tip.crop.circle.badge.arrow.forward",
        "lasso",
        "lasso.and.sparkles",
        "trash",
        "trash.fill",
        "trash.circle",
        "trash.circle.fill",
        "trash.square",
        "trash.square.fill",
        "trash.slash"
    ]
    // countは列の数
    // 縦のやつ
    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 3)
    // 横のやつ
    let rows: [GridItem] = Array(repeating: .init(.flexible()), count: 1)
    
    var body: some View {
        ScrollView{
            // 横並び
            ScrollView(.horizontal){
                LazyHGrid(rows: rows){
                    ForEach(symbols,id:\.self){ symbol in
                        Image(systemName: symbol)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                            .padding(20)
                            .background(.white)
                            .foregroundColor(.black)
                            .cornerRadius(10)
                        
                    }
                }
                .padding()
            }
            .frame(height: 130)
            .background(.gray)
            .cornerRadius(10)
            .padding()
            
            // 縦で並べる方法
            LazyVGrid(columns: columns, spacing:20){
                ForEach(symbols,id:\.self){ symbol in
                    Image(systemName: symbol)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .padding(20)
                        .background(.black)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                    
                }
            }
        }    }
}

#Preview {
    SampleLazyVGrid()
}
