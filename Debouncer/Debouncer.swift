//
//  Debouncer.swift
//  Debouncer
//
//  Created by Le Tai on 12/8/15.
//  Copyright © 2015 levantAJ. All rights reserved.
//

public protocol Debouncable {
    func dispatch(_ completion: @escaping (() -> Void))
    func invalidate()
}

public final class Debouncer {
    private let delay: Double
    private var completion: (() -> Void)?
    private var timer: Timer?
    
    public init(delay: Double = 0.25) {
        self.delay = delay
    }

    @objc func callback() {
        self.completion?()
    }
}

// MARK: - Debouncable

extension Debouncer: Debouncable {
    public func dispatch(_ completion: @escaping (() -> Void)) {
        timer?.invalidate()
        self.completion = completion
        timer = Timer.scheduledTimer(timeInterval: delay,
                                     target: self,
                                     selector: #selector(callback),
                                     userInfo: nil,
                                     repeats: false)
    }

    public func invalidate() {
        timer?.invalidate()
    }
}
