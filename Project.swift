import ProjectDescription

let project = Project(
    name: "AmazingStuff",
    targets: [
        .target(
            name: "AmazingStuff",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.AmazingStuff",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["AmazingStuff/Sources/**"],
            resources: ["AmazingStuff/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "AmazingStuffTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.AmazingStuffTests",
            infoPlist: .default,
            sources: ["AmazingStuff/Tests/**"],
            resources: [],
            dependencies: [.target(name: "AmazingStuff")]
        ),
    ]
)
