//
//  Navigations2.swift
//  HelloSwiftUI
//
//  Created by 水原　樹 on 2023/12/27.
//

import SwiftUI

struct Navigations2: View {
    var body: some View {
        ZStack{
            Color(.orange)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Text("Second View")
        }
    }
}

#Preview {
    Navigations2()
}
