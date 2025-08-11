//
//  SwiftUIView.swift
//  SwiftUIButtons
//
//  Created by uma atcha on 8/11/25.
//

import Foundation
import SwiftUI

@available(macOS 10.15, *)
@available(iOS 13.0.0, *)

@MainActor
public struct TextPackage {
    
    public static func primaryText(title: String, action: @escaping () -> Void) {
        PrimaryText(title: title, action: action)
    }
    
    public static func secondaryText(title: String, action: @escaping () -> Void) {
        SecondaryText(title: title, action: action)
    }
    
    public static func outlineText(title: String, action: @escaping () -> Void) {
        OutlineText(title: title, action: action)
    }
    
    public static func inlineText(title: String, action: @escaping () -> Void) {
        InlineText(title: title, action: action)
    }
}
