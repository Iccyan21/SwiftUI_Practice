//
//  MInion.swift
//  HelloSwiftUI
//
//  Created by 水原　樹 on 2023/12/27.
//

import SwiftUI

struct MInion: View {
    var body: some View {
        VStack {
            FaceView()
            PantsView()
            FootView()
        }
    }
}

struct FaceView: View{
    var body: some View{
        ZStack {
            Rectangle()
                .foregroundColor(.yellow)
                .frame(width: 300, height: 300)
            VStack {
                HStack {
                    Rectangle()
                        .foregroundColor(.black)
                        .frame(width: 60, height: 20)
                    ZStack {
                        Rectangle()
                            .foregroundColor(.gray)
                            .frame(width: 90, height: 90)
                        Rectangle()
                            .foregroundColor(.white)
                            .frame(width: 70, height: 70)
                        Rectangle()
                            .foregroundColor(.black)
                            .frame(width: 20, height: 20)
                    }
                    ZStack {
                        Rectangle()
                            .foregroundColor(.gray)
                            .frame(width: 90, height: 90)
                        Rectangle()
                            .foregroundColor(.white)
                            .frame(width: 70, height: 70)
                        Rectangle()
                            .foregroundColor(.black)
                            .frame(width: 20, height: 20)
                    }
                    Rectangle()
                        .foregroundColor(.black)
                        .frame(width: 60, height: 20)
                }
                ZStack {
                    Rectangle()
                        .foregroundColor(.black)
                        .frame(width: 70, height: 40)
                    VStack {
                        Rectangle()
                            .foregroundColor(.white)
                            .frame(width: 60, height: 10)
                        Rectangle()
                            .foregroundColor(.red)
                            .frame(width: 60, height: 10)
                    }
                }
            }
        }
        
    }
}

struct PantsView: View {
    var body: some View {
        Rectangle()
            .foregroundColor(.blue)
            .frame(width: 300, height: 100)
    }
}

struct FootView: View {
    var body: some View{
        RectangleView(color: .black, width: 70, height: 30)
        RectangleView(color: .black, width: 70, height: 30)
    }
}

struct RectangleView: View {
    let color: Color
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        Rectangle()
            .foregroundColor(.red)
            .frame(width: 30,height: 30)
    }
}

#Preview {
    MInion()
}
