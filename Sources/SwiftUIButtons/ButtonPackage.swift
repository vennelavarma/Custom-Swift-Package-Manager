//
//  File.swift
//  SwiftUIButtons
//
//  Created by uma atcha on 8/6/25.
//

import Foundation
import SwiftUI

@available(macOS 10.15, *)
@available(iOS 13.0.0, *)

@MainActor
public struct ButtonPackage {
    
    public static func primaryButton(title: String, action: @escaping () -> Void) {
        PrimaryButton(title: title, action: action)
    }
    
    public static func secondaryButton(title: String, action: @escaping () -> Void) {
        SecondaryButton(title: title, action: action)
    }
    
    public static func outlineButton(title: String, action: @escaping () -> Void) {
        OutlineButton(title: title, action: action)
    }
    
    public static func inlineButton(icon: Image, action: @escaping () -> Void) {
        InlineButton(icon: icon, action: action)
    }
}
