// swift-tools-version: 5.9
import PackageDescription
let package = Package(name: "agent-herdr", platforms: [.iOS(.v17), .macOS(.v14)],
    products: [.library(name: "WhisperaHerdr", targets: ["WhisperaHerdr"])],
    dependencies: [.package(url: "https://github.com/sapoepsilon/agent-tui-protocol", from: "0.2.0")],
    targets: [.target(name: "WhisperaHerdr", dependencies: [.product(name: "WhisperaAgents", package: "agent-tui-protocol")]),
              .testTarget(name: "WhisperaHerdrTests", dependencies: ["WhisperaHerdr"])])
