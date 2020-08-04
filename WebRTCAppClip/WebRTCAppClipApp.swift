//
//  WebRTCAppClipApp.swift
//  WebRTCAppClip
//
//  Created by Andrey Krit on 03.08.2020.
//  Copyright © 2020 Krit. All rights reserved.
//

import SwiftUI

@main
struct WebRTCAppClipApp: App {
    var body: some Scene {
        WindowGroup {
            MenuView().onContinueUserActivity(NSUserActivityTypeBrowsingWeb, perform: handleUserActivity)
        }
    }
    
    func handleUserActivity(_ userActivity: NSUserActivity) {
            print("Handle User Activity")
            guard let incomingURL = userActivity.webpageURL else {
                    print("No incoming URL")
                    return
            }
            print("Incoming URL: \(incomingURL)")
    }
}
