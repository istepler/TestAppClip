//
//  ContentView.swift
//  WebRTCAppClip
//
//  Created by Andrey Krit on 03.08.2020.
//  Copyright © 2020 Krit. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("APP CLIP LAUNCHED!").padding()
            .foregroundColor(.white)
            .background(LinearGradient(gradient: Gradient(colors: [.blue, .purple, .pink ]), startPoint: .leading, endPoint: .trailing))
            .onAppear { test() }
    }
    
    func test() {
        #if !APPCLIP
        print("MAIN APP")
        #else
        print("THIS IS AWASPME APPCLIP")
        #endif
        return
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
