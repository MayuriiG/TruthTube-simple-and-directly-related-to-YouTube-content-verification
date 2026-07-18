# TruthTube-simple-and-directly-related-to-YouTube-content-verification
TruthTube SDK is an iOS framework that analyzes YouTube video titles to identify potentially fake, clickbait, or AI-generated content. It uses keyword-based detection and color-coded risk levels to provide clear warnings, reasons, and recommendations, helping users make safer and more informed decisions about digital content.


# TruthTubeSDK

## Overview

TruthTubeSDK is an iOS framework that analyzes YouTube video titles to identify potentially fake, clickbait, or AI-generated content.

---

# 📱 Project Demo

## Screenshots

![Home](images/home.png)

## Demo Video

https://youtu.be/your-demo-video

## Features

- AI content detection
- Deepfake detection
- Risk level indicator

---

# 📦 SDK

## Installation

### CocoaPods

```ruby
pod 'TruthTubeSDK', '~> 1.0.3'
```

### Import

```swift
import TruthTubeSDK
```

## Usage

```swift
let detector = TruthTubeDetector()
let result = detector.analyze(title: "Breaking News!")
```

## Example Output

```
Status: Warning
Reason: Possible AI-generated content
Recommendation: Verify before sharing.
```

---

## License

MIT
