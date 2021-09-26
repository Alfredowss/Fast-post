//
//  AppDelegate.swift
//  Fast post
//
//  Created by Alfredo Gonzalez Galicia on 21/09/21.
//

import Cocoa
import SwiftUI

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    var window: NSWindow!


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Create the SwiftUI view that provides the window contents.
        let contentView = ContentView()

        // Create the window and set the content view.
        window = NSWindow(
            contentRect: NSRect(x: 0, y: 0, width: 480, height: 300),
            styleMask: [.titled,.borderless, .closable, .miniaturizable, .fullSizeContentView],
            backing: .buffered, defer: false)
        window.isReleasedWhenClosed = false
        window.center()
        window.setFrameAutosaveName("Main Window")
        window.contentView = NSHostingView(rootView: contentView)
        window.makeKeyAndOrderFront(nil)
        window.isOpaque = false
        window.backgroundColor = NSColor(red: 0, green: 0, blue: 0, alpha: 0)
        //window!.standardWindowButton(NSWindow.ButtonType.closeButton)?.isHidden = true
        window!.standardWindowButton(NSWindow.ButtonType.miniaturizeButton)?.isHidden = true
        window!.standardWindowButton(NSWindow.ButtonType.zoomButton
        )?.isHidden = true
        window.titleVisibility = NSWindow.TitleVisibility.hidden
        window.titlebarAppearsTransparent = true;
        window.isMovableByWindowBackground = true
        window.hasShadow = true
    }
    
    

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

