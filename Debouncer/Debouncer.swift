//
//  Debouncer.swift
//  Debouncer
//
//  Created by Le Tai on 12/8/15.
//  Copyright © 2015 levantAJ. All rights reserved.
//

public final class Debouncer {
    private let delay: Double
    private var block: (() -> Void)?
    private var timer: NSTimer?
    
    public init(delay: Double = 0.25) {
        self.delay = delay
    }
    
    public func dispatch(block: (() -> Void)) {
        timer?.invalidate()
        self.block = block
        timer = NSTimer.scheduledTimerWithTimeInterval(delay,
            target: self,
            selector: callbackSelector,
            userInfo: nil,
            repeats: false)
    }
    
    private let callbackSelector = Selector("callback")
    
    @objc func callback() {
        self.block?()
    }
    
    public func invalidate() {
        timer?.invalidate()
    }
}
