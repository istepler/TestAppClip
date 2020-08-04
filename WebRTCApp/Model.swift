//
//  Model.swift
//  WebRTCApp
//
//  Created by Andrey Krit on 03.08.2020.
//  Copyright © 2020 Krit. All rights reserved.
//

import Foundation
import Combine

class Model: ObservableObject {
    @Published var title: String = "Boom"
    @Published var details: String = "Booom descriptuino"
}
