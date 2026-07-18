import Foundation

public enum TruthTubeRiskLevel: String {
    case warning
    case possibleAI
    case clear
}

public struct TruthTubeAnalysisResult: Equatable {
    public let riskLevel: TruthTubeRiskLevel
    public let symbol: String
    public let label: String
    public let title: String
    public let reason: String?
    public let recommendation: String?

    public var formattedMessage: String {
        var lines = [
            "\(symbol) \(label)",
            "",
            "🎥 Video",
            title
        ]

        if let reason = reason {
            lines.append("")
            lines.append("🔍 Reason")
            lines.append(reason)
        }

        if let recommendation = recommendation {
            lines.append("")
            lines.append("💡 Recommendation")
            lines.append(recommendation)
        }

        return lines.joined(separator: "\n")
    }
}

public final class TruthTubeAnalyzer {

    public static let shared = TruthTubeAnalyzer()

    private let fakeWords = [
        "deepfake", "fake", "scam", "hoax", "clickbait",
        "exposed", "banned", "hidden truth", "miracle cure", "100% real"
    ]

    private let aiWords = [
        "ai", "chatgpt", "generated", "midjourney", "synthetic",
        "voice clone", "ai voice", "ai image", "ai video",
        "artificial intelligence"
    ]

    private init() {}

    public func analyze(title: String) -> TruthTubeAnalysisResult {
        let lowerTitle = title.lowercased()

        if let word = fakeWords.first(where: { lowerTitle.contains($0) }) {
            return TruthTubeAnalysisResult(
                riskLevel: .warning,
                symbol: "🔴",
                label: "Potential Fake / Clickbait",
                title: title,
                reason: "Detected keyword: \"\(word)\"",
                recommendation: "Verify the source before sharing."
            )
        }

        if let word = aiWords.first(where: { lowerTitle.contains($0) }) {
            return TruthTubeAnalysisResult(
                riskLevel: .possibleAI,
                symbol: "🟡",
                label: "Possible AI Generated Content",
                title: title,
                reason: "Detected keyword: \"\(word)\"",
                recommendation: "This content may contain AI-generated media."
            )
        }

        return TruthTubeAnalysisResult(
            riskLevel: .clear,
            symbol: "🟢",
            label: "No Obvious Warning",
            title: title,
            reason: nil,
            recommendation: nil
        )
    }
}