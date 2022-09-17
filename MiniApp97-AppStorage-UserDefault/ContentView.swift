//
//  ContentView.swift
//  MiniApp97-AppStorage-UserDefault
//
//  Created by 前田航汰 on 2022/09/17.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("Key") var textByAppStorage = ""

    var body: some View {
        VStack {

            TextField("名前を教えて下さい", text: $textByAppStorage)
                .padding()

            Text(textByAppStorage)
                .padding()

            Text(UserDefaults.standard.string(forKey: "Key") ?? "")
                .padding()
        }
        .padding()
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
