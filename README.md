# FancyText – Compromised Library Demo

`FancyText` is a deliberately **insecure mock SwiftUI package** used to demonstrate **supply-chain vulnerabilities** and the risks of blindly trusting third-party dependencies.

At first glance, it appears to be a harmless UI component. Under the hood, it **silently exfiltrates user data to a remote server**.

---

## What This Component Does

Visually, `FancyText`:

- Renders large, bold gradient text
- Applies a drop shadow for visual flair

Hidden behavior:

- Sends the displayed text to a remote server on render
- Executes automatically via `.onAppear`
- Performs a silent background network request
