//
//  Package.swift
//  ADNetPromoterScoreSurvey
//
//  Created by John Ditman on 10/03/2020.
//  Copyright © 2020 Shortcut AS. All rights reserved.
//

import PackageDescription

let package = Package(
    name: "ADNetPromoterScoreSurvey",
    platforms: [.iOS("9.0")],
    products: [
        .library(
            name: "ADNetPromoterScoreSurvey",
            targets: ["ADNetPromoterScoreSurvey"]
        )
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "ADNetPromoterScoreSurvey",
            dependencies: []
        ),
        .testTarget(
            name: "ADNetPromoterScoreSurveyTests",
            dependencies: ["ADNetPromoterScoreSurvey"]
        ),
    ]
)
