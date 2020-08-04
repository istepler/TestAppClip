//
//  MenuView.swift
//  WebRTCApp
//
//  Created by Andrey Krit on 04.08.2020.
//  Copyright © 2020 Krit. All rights reserved.
//

import SwiftUI

struct MenuView: View {
    
    var body: some View {
        NavigationView {
        ZStack {
             Color.init(#colorLiteral(red: 0.2749843752, green: 0.6577655097, blue: 0.4541644646, alpha: 1))
                .edgesIgnoringSafeArea(.all)
                .navigationTitle("My restaurant")
                .background(NavigationConfigurator { nc in
                    print(nc)
                    nc.navigationBar.largeTitleTextAttributes = [.foregroundColor : UIColor.white]
                    nc.navigationBar.tintColor = #colorLiteral(red: 0.2749843752, green: 0.6577655097, blue: 0.4541644646, alpha: 1)
                })
            }
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
