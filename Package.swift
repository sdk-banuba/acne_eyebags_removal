// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.12.1-39-g03310be29"

let package = Package(
    name: "acne_eyebags_removal",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "acne_eyebags_removal",
            targets: [
                "acne_eyebags_removal",
                "acne_eyebags_removal_sdk_core",
                "acne_eyebags_removal_effect_player",
                "acne_eyebags_removal_scripting",
                "acne_eyebags_removal_face_tracker"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/sdk-banuba/sdk_core.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/effect_player.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/scripting.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/face_tracker.git",
            .exact(bnbPackageVersion)
        ),
    ],
    targets: [
        .binaryTarget(
            name: "acne_eyebags_removal",
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.12.1-39-g03310be29/acne_eyebags_removal.zip",
            checksum: "5d11523768247ebab750c839c6a3d2d9e24e9af03c4175a8da7761a4bab1e6c8"
        ),
        .target(
            name: "acne_eyebags_removal_sdk_core",
            dependencies: [
                .product(
                    name: "sdk_core",
                    package: "sdk_core"
                ),
            ]
        ),
        .target(
            name: "acne_eyebags_removal_effect_player",
            dependencies: [
                .product(
                    name: "effect_player",
                    package: "effect_player"
                ),
            ]
        ),
        .target(
            name: "acne_eyebags_removal_scripting",
            dependencies: [
                .product(
                    name: "scripting",
                    package: "scripting"
                ),
            ]
        ),
        .target(
            name: "acne_eyebags_removal_face_tracker",
            dependencies: [
                .product(
                    name: "face_tracker",
                    package: "face_tracker"
                ),
            ]
        ),
    ]
)
