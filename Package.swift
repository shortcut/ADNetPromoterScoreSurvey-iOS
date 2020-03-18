// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

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
            dependencies: [],
            path: "Sources/ADNetPromoterScoreSurvey"
        ),
        .testTarget(
            name: "ADNetPromoterScoreSurveyTests",
            dependencies: ["ADNetPromoterScoreSurvey"],
            path: "Tests/ADNetPromoterScoreSurveyTests"
        )
    ]
)
