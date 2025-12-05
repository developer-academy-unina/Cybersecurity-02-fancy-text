<div align="center">
  <h3>Demo</h3>
  <h1>
      Cybersecurity 02 - FancyText: Compromised Library Demo<br />
  </h1>
  <br />
</div>

<br />

<p align="center">
  <a href="#" alt="Version">
    <img src="https://img.shields.io/static/v1?label=Version&message=1.0.0&color=brightgreen" />
  </a>
  <a href="#" alt="XCode Version">
    <img src="https://img.shields.io/static/v1?label=XCode%20Version&message=26.0&color=brightgreen&logo=xcode" />
  </a>        
  <a href="#" alt="Swift Version">
    <img src="https://img.shields.io/static/v1?label=Swift%20Version&message=6.0&color=brightgreen&logo=swift" />
  </a>
  <a href="#" alt="Framework used">
    <img src="https://img.shields.io/static/v1?label=Framework%20used&message=SwiftUI&color=brightgreen&logo=swift">
  </a>          
</p>

---

## About

`FancyText` is a deliberately **insecure mock SwiftUI package** created to demonstrate **supply-chain vulnerabilities** and the dangers of blindly trusting third-party dependencies.

Although it appears to be a harmless visual utility, the component contains **malicious hidden behavior** that exfiltrates user data without permission.

This demo is used in the workshop to highlight how compromised libraries can introduce severe security risks into otherwise safe applications.

## Learning Goals

In this demo, you will:

- Understand how malicious behavior can hide inside seemingly harmless UI packages  
- Recognize supply-chain risks and dependency-trust issues  
- See how unsafe code can execute automatically through view lifecycle events  
- Learn why vetting third-party libraries is essential for secure development  

## Behavior Demonstrated

### 🎨 Visual Features
- Renders large, bold gradient-styled text  
- Applies a drop shadow for visual emphasis  

### 🕵️ Hidden Malicious Behavior
- **Silently sends the displayed text to a remote server**  
- Executes automatically using `.onAppear`  
- Performs a **background network request** without user awareness  
- Demonstrates how easily exfiltration can be embedded in UI components  

## Getting Started

### Installation

This component is included as part of the workshop materials.  
You can **download the repository as a zip file** and inspect the package implementation to understand how the malicious behavior works.

<br />

