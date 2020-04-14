//
//  PasswordStrengthView.swift
//  SwiftUIKB
//
//  Created by Sage_seVen on 08/04/20.
//  Copyright © 2020 Sage_seVen. All rights reserved.
//

import SwiftUI

struct PasswordStrengthView: View {
    var level: PasswordLevel
    var body: some View {
        HStack {
            RoundedRectangle(cornerRadius: 8).foregroundColor(self.getColors()[0]).frame(height: 10)
            RoundedRectangle(cornerRadius: 8).foregroundColor(self.getColors()[1]).frame(height: 10)
            RoundedRectangle(cornerRadius: 8).foregroundColor(self.getColors()[2]).frame(height: 10)
        }
    }
    
    func getColors() -> [Color] {
        switch self.level {
        case .none:
            return [.clear, .clear, .clear]
        case .weak:
            return [.red, .clear, .clear]
        case .ok:
            return [.red, .orange, .clear]
        case .strong:
            return [.red, .orange, .green]
        }
    }
}

struct PasswordStrengthView_Previews: PreviewProvider {
    static var previews: some View {
        PasswordStrengthView(level: .strong).previewLayout(.sizeThatFits)
    }
}
