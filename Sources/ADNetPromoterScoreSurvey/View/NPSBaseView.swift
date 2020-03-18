//
//  NPSBaseView.swift
//  ADNetPromoterScoreSurvey
//
//  Created by Tomer Shalom on 10/10/2017.
//  Copyright © 2017 Autodesk. All rights reserved.
//

import UIKit

class NPSBaseView: UIView {

    let closeButtonContentViewHeightAddition: CGFloat = 30

    var appearance: NPSAppearance = NPSAppearance.default

    init() {
        super.init(frame: .zero)
        setup()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }

    func setup() {
        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipeDownGesture))
        swipeDown.direction = .down
        self.addGestureRecognizer(swipeDown)

        self.setupTexts()
        self.setupFonts()
        self.setupColors()
    }

    func setupTexts() {

        // Should be override
    }

    func setupFonts() {

        // Should be override
    }

    func setupColors() {

        // Should be override
    }

    func isCurrentlyPresented() -> Bool {

        return (self.superview != nil)
    }

    func animateIn(withDuration duration: TimeInterval, completionBlock : (() -> Void)?) {

        completionBlock?()
    }

    func animateOut(withDuration duration: TimeInterval, completionBlock : (() -> Void)?) {

        completionBlock?()
    }

    @objc func handleSwipeDownGesture(gesture: UISwipeGestureRecognizer) {

    }

    deinit {

        debugPrint("deinit \(self.classForCoder)")
    }
}
