//
//  RootPresentationMode.swift
//  plazm_swift
//
//  Created by Edward Han on 5/2/22.
//

import Foundation
import SwiftUI

//https://github.com/Whiffer/SwiftUI-PopToRootExample/blob/master/SwiftUI-PopToRootExample/ContentView.swift

struct RootPresentationModeKey: EnvironmentKey {
    static let defaultValue: Binding<RootPresentationMode> = .constant(RootPresentationMode())
}

extension EnvironmentValues {
    var rootPresentationMode: Binding<RootPresentationMode> {
        get { return self[RootPresentationModeKey.self] }
        set { self[RootPresentationModeKey.self] = newValue }
    }
}

typealias RootPresentationMode = Bool

extension RootPresentationMode {
    
    public mutating func dismiss() {
        self.toggle()
    }
}
