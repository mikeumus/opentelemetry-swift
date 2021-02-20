// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "opentelemetry-swift-mikeumus",
    platforms: [.macOS(.v10_13),
                .iOS(.v11),
                .tvOS(.v11),
                .watchOS(.v3)],
    products: [
//        .library(name: "OpenTelemetryApi", type: .dynamic, targets: ["OpenTelemetryApi"]),
//        .library(name: "libOpenTelemetryApi", type: .static, targets: ["OpenTelemetryApi"]),
//        .library(name: "OpenTelemetrySdk-mikeumus", type: .dynamic, targets: ["OpenTelemetrySdk-mikeumus"]),
//        .library(name: "libOpenTelemetrySdk-mikeumus", type: .static, targets: ["OpenTelemetrySdk-mikeumus"]),
//        .library(name: "OpenTracingShim-mikeumus", type: .dynamic, targets: ["OpenTracingShim-mikeumus"]),
//        .library(name: "libOpenTracingShim-mikeumus-mikeumus", type: .static, targets: ["OpenTracingShim-mikeumus"]),
        .library(name: "JaegerExporterMikeumus", type: .dynamic, targets: ["JaegerExporterMikeumus"]),
        .library(name: "libJaegerExporterMikeumus", type: .static, targets: ["JaegerExporterMikeumus"]),
//        .library(name: "ZipkinExporter-mikeumus", type: .dynamic, targets: ["ZipkinExporter-mikeumus"]),
//        .library(name: "libZipkinExporter-mikeumus", type: .static, targets: ["ZipkinExporter-mikeumus"]),
//        .library(name: "StdoutExporter-mikeumus", type: .dynamic, targets: ["StdoutExporter-mikeumus"]),
//        .library(name: "libStdoutExporter-mikeumus", type: .static, targets: ["StdoutExporter-mikeumus"]),
//        .library(name: "PrometheusExporter-mikeumus", type: .dynamic, targets: ["PrometheusExporter-mikeumus"]),
//        .library(name: "libPrometheusExporter-mikeumus", type: .static, targets: ["PrometheusExporter-mikeumus"]),
//        .library(name: "OpenTelemetryProtocolExporter-mikeumus", type: .dynamic, targets: ["OpenTelemetryProtocolExporter-mikeumus"]),
//        .library(name: "libOpenTelemetryProtocolExporter-mikeumus", type: .static, targets: ["OpenTelemetryProtocolExporter-mikeumus"]),
//        .library(name: "InMemoryExporter-mikeumus", type: .dynamic, targets: ["InMemoryExporter-mikeumus"]),
//        .library(name: "libInMemoryExporter-mikeumus", type: .static, targets: ["InMemoryExporter-mikeumus"]),
//        .library(name: "DatadogExporter-mikeumus", type: .dynamic, targets: ["DatadogExporter-mikeumus"]),
//        .library(name: "libDatadogExporter-mikeumus", type: .static, targets: ["DatadogExporter-mikeumus"]),
//        .executable(name: "simpleExporter-mikeumus", targets: ["SimpleExporter"]),
//        .executable(name: "loggingTracer-mikeumus", targets: ["LoggingTracer"]),
    ],
    dependencies: [
        .package(name: "Opentracing", url: "https://github.com/undefinedlabs/opentracing-objc", from: "0.5.2"),
        .package(name: "Thrift", url: "https://github.com/undefinedlabs/Thrift-Swift", from: "1.1.1"),
        .package(name: "swift-nio", url: "https://github.com/apple/swift-nio.git", from: "2.0.0"),
        .package(name: "grpc-swift", url: "https://github.com/grpc/grpc-swift.git", .exact("1.0.0-alpha.12")),
        .package(name: "SwiftProtobuf", url: "https://github.com/apple/swift-protobuf.git", from: "1.6.0"),
        .package(name: "swift-atomics", url: "https://github.com/apple/swift-atomics.git", from: "0.0.1")
    ],
    targets: [
//        .target(name: "OpenTelemetryApi",
//                dependencies: []
//        ),
//        .target(name: "OpenTelemetrySdk-mikeumus",
//                dependencies: ["OpenTelemetryApi",
//                               .product(name: "Atomics", package: "swift-atomics")]
//        ),
//        .target(name: "OpenTracingShim-mikeumus",
//                dependencies: ["OpenTelemetrySdk-mikeumus",
//                               "Opentracing"]
//        ),
//        .target(name: "JaegerExporterMikeumus",
//                dependencies: ["OpenTelemetrySdk-mikeumus",
//                               .product(name: "Thrift", package: "Thrift")],
//                path: "Sources/Exporters/Jaeger"
//        ),
//        .target(name: "ZipkinExporter-mikeumus",
//                dependencies: ["OpenTelemetrySdk-mikeumus"],
//                path: "Sources/Exporters/Zipkin"
//        ),
//        .target(name: "PrometheusExporter-mikeumus",
//                dependencies: ["OpenTelemetrySdk-mikeumus",
//                               .product(name: "NIO", package: "swift-nio"),
//                               .product(name: "NIOHTTP1", package: "swift-nio")],
//                path: "Sources/Exporters/Prometheus"
//        ),
//        .target(name: "OpenTelemetryProtocolExporter-mikeumus",
//                dependencies: ["OpenTelemetrySdk-mikeumus",
//                               .product(name: "GRPC", package: "grpc-swift")],
//                path: "Sources/Exporters/OpenTelemetryProtocol"
//        ),
//        .target(name: "StdoutExporter-mikeumus",
//                dependencies: ["OpenTelemetrySdk-mikeumus"],
//                path: "Sources/Exporters/Stdout"
//        ),
//        .target(name: "InMemoryExporter-mikeumus",
//                dependencies: ["OpenTelemetrySdk-mikeumus"],
//                path: "Sources/Exporters/InMemory"
//        ),
//        .target(name: "DatadogExporter-mikeumus",
//                dependencies: ["OpenTelemetrySdk-mikeumus"],
//                path: "Sources/Exporters/DatadogExporter-mikeumus",
//                exclude: ["NOTICE", "README.md"]
//        ),
//        .testTarget(name: "OpenTelemetryApiTests",
//                    dependencies: ["OpenTelemetryApi"],
//                    path: "Tests/OpenTelemetryApiTests"
//        ),
//        .testTarget(name: "OpenTracingShim-mikeumusTests",
//                    dependencies: ["OpenTracingShim-mikeumus",
//                                   "OpenTelemetrySdk-mikeumus"],
//                    path: "Tests/OpenTracingShim-mikeumus"
//        ),
//        .testTarget(name: "OpenTelemetrySdk-mikeumusTests",
//                    dependencies: ["OpenTelemetryApi",
//                                   "OpenTelemetrySdk-mikeumus"],
//                    path: "Tests/OpenTelemetrySdk-mikeumusTests"
//        ),
        .testTarget(name: "JaegerExporterMikeumusTests",
                    dependencies: ["JaegerExporterMikeumus"],
                    path: "Tests/ExportersTests/Jaeger"
        ),
//        .testTarget(name: "ZipkinExporter-mikeumusTests",
//                    dependencies: ["ZipkinExporter-mikeumus"],
//                    path: "Tests/ExportersTests/Zipkin"
//        ),
//        .testTarget(name: "PrometheusExporter-mikeumusTests",
//                    dependencies: ["PrometheusExporter-mikeumus"],
//                    path: "Tests/ExportersTests/Prometheus"
//        ),
//        .testTarget(name: "OpenTelemetryProtocolExporter-mikeumusTests",
//                    dependencies: ["OpenTelemetryProtocolExporter-mikeumus"],
//                    path: "Tests/ExportersTests/OpenTelemetryProtocol"
//        ),
//        .testTarget(name: "InMemoryExporter-mikeumusTests",
//                    dependencies: ["InMemoryExporter-mikeumus"],
//                    path: "Tests/ExportersTests/InMemory"
//        ),
//        .testTarget(name: "DatadogExporter-mikeumusTests",
//                    dependencies: ["DatadogExporter-mikeumus",
//                                   .product(name: "NIO", package: "swift-nio"),
//                                   .product(name: "NIOHTTP1", package: "swift-nio")],
//                    path: "Tests/ExportersTests/DatadogExporter-mikeumus"
//        ),
//        .target(name: "loggingTracer-mikeumus",
//                dependencies: ["OpenTelemetryApi"],
//                path: "Examples/Logging Tracer"
//        ),
//        .target(name: "simpleExporter-mikeumus",
//                dependencies: ["OpenTelemetrySdk-mikeumus", "JaegerExporterMikeumus", "StdoutExporter-mikeumus", "ZipkinExporter-mikeumus"],
//                path: "Examples/Simple Exporter",
//                exclude: ["README.md"]
//        ),
//        .target(name: "PrometheusSample",
//                dependencies: ["OpenTelemetrySdk-mikeumus", "PrometheusExporter-mikeumus"],
//                path: "Examples/Prometheus Sample",
//                exclude: ["README.md"]
//        ),
//        .target(name: "DatadogSample",
//                dependencies: ["DatadogExporter-mikeumus"],
//                path: "Examples/Datadog Sample",
//                exclude: ["README.md"]
//        ),
    ]
)
