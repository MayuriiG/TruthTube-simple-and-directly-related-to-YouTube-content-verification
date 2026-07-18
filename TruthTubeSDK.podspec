Pod::Spec.new do |spec|

  spec.name         = "TruthTubeSDK"
  spec.version      = "1.0.0"
  spec.summary      = "A lightweight iOS SDK for YouTube content risk analysis."

  spec.description  = <<-DESC
  TruthTubeSDK analyzes YouTube video titles to identify keywords
  associated with potentially fake, clickbait, or AI-generated content.
  DESC

  spec.homepage     = "https://github.com/MayuriiG/TruthTube-simple-and-directly-related-to-YouTube-content-verification"

  spec.license      = { :type => "MIT" }

  spec.author       = { "MayuriiG" => "Mayuriig10@outlook.com" }

  spec.source       = {
    :git => "https://github.com/MayuriiG/TruthTube-simple-and-directly-related-to-YouTube-content-verification.git",
    :tag => "v#{spec.version}"
  }

  spec.platform     = :ios, "15.0"
  spec.swift_version = "5.0"

spec.source_files = "Sources/TruthTubeSDK/**/*.swift"

end