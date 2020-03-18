//
//  NPSSurveyViewMock.swift
//  ADNetPromoterScoreSurvey
//
//  Created by Tomer Shalom on 22/10/2017.
//  Copyright © 2017 Autodesk. All rights reserved.
//

import UIKit
@testable import ADNetPromoterScoreSurvey

class NPSSurveyViewMock: NPSSurveyViewProtocol {

    var showSurveyExecutionCounter                  = 0
    var closeSurveyExecutionCounter                 = 0
    var continueToSendDetailsViewExecutionCounter   = 0
    var backToSendScoreViewExecutionCounter         = 0
    var showThankYouViewExecutionCounter            = 0

    var showSurveyCustomAction: ((UIViewController) -> Void)?
    var closeSurveyCustomAction                 : (() -> Void)?
    var continueToSendDetailsViewCustomAction: ((NetPromoterType) -> Void)?
    var backToSendScoreViewCustomAction         : (() -> Void)?
    var showThankYouViewCustomAction            : (() -> Void)?

    weak var delegate: NPSSurveyViewDelegate?

    func showSurvey(onViewController viewController: UIViewController) {

        self.showSurveyExecutionCounter += 1
        self.showSurveyCustomAction?(viewController)
    }

    func closeSurvey() {

        self.closeSurveyExecutionCounter += 1
        self.closeSurveyCustomAction?()
    }

    func continueToSendDetailsView(promoterType: NetPromoterType) {

        self.continueToSendDetailsViewExecutionCounter += 1
        self.continueToSendDetailsViewCustomAction?(promoterType)
    }

    func backToSendScoreView() {

        self.backToSendScoreViewExecutionCounter += 1
        self.backToSendScoreViewCustomAction?()
    }

    func showThankYouView() {

        self.showThankYouViewExecutionCounter += 1
        self.showThankYouViewCustomAction?()
    }
}
