//
//  VideoView.swift
//  WebRTCApp
//
//  Created by Andrey Krit on 03.08.2020.
//  Copyright © 2020 Krit. All rights reserved.
//

import SwiftUI

struct VideoView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @Binding var videoTitle: String
    @Binding var videoDescription: String
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Video title", text: $videoTitle )
                TextField("Video title", text: $videoDescription)
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                } , label: {
                    Text("Dismiss")
                })
            }.padding()
            .navigationTitle("VideoView")
        }
    }
}

//struct VideoView_Previews: PreviewProvider {
//    static var previews: some View {
//        VideoView(videoTitle: "Title", videoDescription: "Description")
//    }
//}
