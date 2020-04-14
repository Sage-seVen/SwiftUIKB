//
//  PasswordChecker.swift
//  SwiftUIKB
//
//  Created by Sage_seVen on 08/04/20.
//  Copyright © 2020 Sage_seVen. All rights reserved.
//

import Foundation
import Combine
import SwiftUI

enum PasswordLevel: Int {
    case none = 0
    case weak = 1
    case ok = 2
    case strong = 3
}

class PasswordChecker: ObservableObject {
    
    public let didChange = PassthroughSubject<PasswordChecker, Never>()
    @Published var password: String = "" {
        didSet {
            self.checkForPassword(password: self.password)
        }
    }
    
    var level: PasswordLevel = .none {
        didSet {
            self.didChange.send(self)
        }
    }
    
    
    func checkForPassword(password: String) {
        if password.count == 0 {
            self.level = .none
        } else if password.count < 2 {
            self.level = .weak
        } else if password.count < 6 {
            self.level = .ok
        } else {
            self.level = .strong
        }
    }
}
