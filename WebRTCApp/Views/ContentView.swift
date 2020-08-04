//
//  ContentView.swift
//  WebRTCApp
//
//  Created by Andrey Krit on 7/29/20.
//  Copyright © 2020 Krit. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    private var showingVideoView: Bool = false
    
    @ObservedObject var model: Model = Model()
    @EnvironmentObject var data: ChannelData
    
    init() {
        UINavigationBar.appearance().backgroundColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1).withAlphaComponent(0.5)
    }
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading){
                ButtonsView(isShowing: showingVideoView, modeling: model)
                Divider()
                HStack {
                    Image("mic_icon")
                        .renderingMode(.template)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 120, height: 120)
                        .foregroundColor(.red)
                    VStack(alignment: .leading) {
                        Text("Title: \(model.title)")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.black)
                        Text("Details: \(model.details)")
                            .foregroundColor(.gray)
                    }
                }
                Spacer()
            }
            .navigationBarTitle(data.name)
        }
    }
}

struct ButtonsView: View {
    
    @State private var showingVideoView: Bool = false
    
    @ObservedObject var model: Model
    
    init(isShowing: Bool, modeling: Model) {
        self.model = modeling
        self.showingVideoView = isShowing
    }
    
    var body: some View {
        GeometryReader { geometry in
            HStack(alignment: .center, spacing: 10) {
                NavigationLink(destination: SecondView(), label: { Text("Link to view") })
                    .frame(width: geometry.size.width/3 - 10, height: 50)
                    .accentColor(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.purple, lineWidth: 2))
                
                Button(action: {
                    showingVideoView.toggle()
                }, label: {
                    Text("First button")
                })
                .sheet(isPresented: $showingVideoView, content: { VideoView(videoTitle: $model.title, videoDescription: $model.details) })
                .frame(width: geometry.size.width/3 - 10, height: 50)
                .accentColor(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.purple, lineWidth: 2))
                
                Button(action: {
                    print("Button 2 action")
                }, label: {
                    Text("Second button")
                })
                .frame(width: geometry.size.width/3 - 10, height: 50)
                .accentColor(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.purple, lineWidth: 2))
            }.padding()
            .frame(width: geometry.size.width, height: 100)
        }.frame(height: 80)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
