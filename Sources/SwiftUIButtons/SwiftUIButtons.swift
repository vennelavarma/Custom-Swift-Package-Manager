// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI


@available(iOS 13.0.0, *)
public struct PrimaryButton: View {
    var title: String
    var action:() -> Void
    
    public init(title: String, action: @escaping () -> Void) {
        self.title = title
        self.action = action
    }
    
    @available(macOS 10.15, *)
    public var body: some View {
        Button(action: action) {
            Text(title).foregroundColor(.white).padding().background(Color.blue).cornerRadius(10)
        }
    }
    
}

@available(iOS 13.0.0, *)
public struct SecondaryButton: View {
    var title: String
    var action:() -> Void
    
    public init(title: String, action: @escaping () -> Void) {
        self.title = title
        self.action = action
    }
    
    @available(macOS 10.15, *)
    public var body: some View {
        Button(action: action) {
            Text(title).foregroundColor(.blue).padding().background(Color.white).cornerRadius(20).overlay(RoundedRectangle(cornerRadius: 8).stroke(lineWidth: 2))
        }
    }
    
}

@available(iOS 13.0.0, *)
public struct OutlineButton: View {
    var title: String
    var action:() -> Void
    
    public init(title: String, action: @escaping () -> Void) {
        self.title = title
        self.action = action
    }
    
    @available(macOS 10.15, *)
    public var body: some View {
        Button(action: action) {
            Text(title).foregroundColor(.red).padding().background(Color.white).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 8).stroke(lineWidth: 1))
        }
    }
    
}

@available(macOS 10.15, *)
@available(iOS 13.0.0, *)
public struct InlineButton: View {
    var icon: Image
    var action:() -> Void
    
    public init(icon: Image, action: @escaping () -> Void) {
        self.icon = icon
        self.action = action
    }
    
    @available(macOS 10.15, *)
    public var body: some View {
        Button(action: action) {
            icon.foregroundColor(.yellow).padding().background(Color.white).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 8).stroke(.blue, lineWidth: 1))
        }
    }
    
}
