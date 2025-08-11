//
//  File.swift
//  SwiftUIButtons
//
//  Created by uma atcha on 8/7/25.
//

import Foundation
import SwiftUI

@available(iOS 13.0.0, *)
public struct PrimaryText: View {
    
    var title: String
    var action:() -> Void
    
    public init(title: String, action: @escaping () -> Void) {
        self.title = title
        self.action = action
    }

    @available(macOS 10.15, *)
    public var body: some View {
        Text(title).font(.title).foregroundColor(.primary).onTapGesture {
            action()
        }
    }
}

@available(iOS 13.0.0, *)
public struct SecondaryText: View {
    
    var title: String
    var action:() -> Void
    
    public init(title: String, action: @escaping () -> Void) {
        self.title = title
        self.action = action
    }

    @available(macOS 10.15, *)
    public var body: some View {
        Text(title).font(.largeTitle).foregroundColor(.secondary).onTapGesture(count: 2) {
            action()
        }
    }
}

@available(iOS 13.0.0, *)
public struct OutlineText: View {
    
    var title: String
    var action:() -> Void
    
    public init(title: String, action: @escaping () -> Void) {
        self.title = title
        self.action = action
    }

    @available(macOS 10.15, *)
    public var body: some View {
        Text(title).font(.subheadline).foregroundColor(.accentColor).onTapGesture(count: 3) {
            action()
        }
    }
}

@available(iOS 13.0.0, *)
public struct InlineText: View {
    
    var title: String
    var action:() -> Void
    
    public init(title: String, action: @escaping () -> Void) {
        self.title = title
        self.action = action
    }
    
    @available(macOS 10.15, *)
    public var body: some View {
        Text(title).font(.headline).foregroundColor(.black).onTapGesture(count: 4) {
            action()
        }
    }
}

