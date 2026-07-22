# TruthTube-simple-and-directly-related-to-YouTube-content-verification
TruthTube SDK is an iOS framework that analyzes YouTube video titles to identify potentially fake, clickbait, or AI-generated content. It uses keyword-based detection and color-coded risk levels to provide clear warnings, reasons, and recommendations, helping users make safer and more informed decisions about digital content.


# TruthTubeSDK

## Overview

TruthTubeSDK is an iOS framework that analyzes YouTube video titles to identify potentially fake, clickbait, or AI-generated content.

--------

# 📱 Project Demo

## Screenshots

![Home](images/home.png)

## Features

- AI content detection
- Deepfake detection
- Risk level indicator

---

# 📦 SDK

## Installation

### CocoaPods

```ruby
pod 'TruthTubeSDK', '~> 1.0.4'
```

### Import

```swift
import TruthTubeSDK
```

## Usage

```swift
let detector = TruthTubeDetector()
let result = detector.analyze(title: "Breaking News!")


# 📊 Example Output

```text
Status
Warning

Reason
Possible AI-generated or clickbait content detected.

Recommendation
Verify the information from trusted sources before sharing.


# 🧠 Detection Categories

The SDK checks for keywords commonly associated with:

- AI-generated content
- Deepfake content
- Fake news
- Clickbait
- Misleading headlines
- Sensational language


-----**----

📱 Requirements
iOS 15.0+
Swift 5.0+
📄 License

# 📄 License

TruthTubeSDK is available under the **MIT License**.

# 🤝 Contributing

Contributions are welcome!

If you'd like to improve the SDK:

1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push to your branch
5. Open a Pull Request

---

# ⭐ Support

If you find this project useful, please consider giving it a ⭐ on GitHub.
It helps others discover the project and supports future improvements.
