//
//  Part4.swift
//  HelloSwiftUI
//
//  Created by 水原　樹 on 2023/12/27.
//

import SwiftUI

struct Part4: View {
    @State var inputText = ""
    var body: some View {
        VStack{
            List{
                Text("りんご")
                Text("みかん")
                Text("スイカ")
            }
            .foregroundColor(.red)
            TextField("ここに文字を入力します",text: $inputText)
        }
        
        
    }
}

#Preview {
    Part4()
}
