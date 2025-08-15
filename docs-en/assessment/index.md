# 工具評估方法

本頁面介紹工具評估的相關方法與文件。

<details>
<summary>Scoring</summary>
# Tool Scoring System

This document outlines how tools are scored and rated in our repository.

## Scoring Metrics

These five categories contribute to the overall tool assessment score. Each category has sub-metrics with assigned weights, and the category score is calculated as a weighted average of its sub-metrics.

### 1. Operational Functionality (Weight: 10%)
| Sub-Metric                       | Data Type | Example Value |
|-----------------------------------------|----------|--------------|
| Functionality     | Integer (1-5) | 3 |
| Localization and Language Support         | Integer (1-5) | 5 |
| Mobile Accessibility      | Integer (1-5) | 2 |

### 2. Usability for Non-Technical Users (Weight: 25%)
| Sub-Metric                      |  Data Type | Example Value |
|---------------------------------|----------|--------------|
| Ease of installation/deployment |  Integer (1-5) | 3 |
| User onboarding experience      |  Integer (1-5) | 4 |
| Technical experience required   |  Integer (1-5) | 2 |

### 3. Security & Privacy Strength (Weight: 30%)
| Sub-Metric                      |  Data Type | Example Value |
|---------------------------------|----------|--------------|
| Encryption standards            | Integer (1-5) | 5 |
| Resilience against known threats| Integer (1-5) | 4 |
| Compliance with security best practices | Integer (1-5) | 3 |
| Data minimization               |  Integer (1-5) | 4 |
| Privacy policy transparency     |  Integer (1-5) | 5 |

### 4. Maintenance & Sustainability (Weight: 15%)
| Sub-Metric                      |  Data Type | Example Value |
|---------------------------------|----------|--------------|
| Active development              |  Integer (1-5) | 5 |
| Community support               |  Integer (1-5) | 3 |
| Funding & sponsorship           |  Integer (1-5) | 2 |

### 5. Performance Efficiency (Weight: 20%)
| Sub-Metric                      |  Data Type | Example Value |
|---------------------------------|----------|--------------|
| CSO Function                      | Integer (1-5)   | 4 |
| Relevance          |  Integer (1-5) | 3 |
| Effectiveness |  Integer (1-5) | 2 |

## Final Scoring Calculation

Each category is scored as a weighted average of its sub-metrics which are just simply added and divided by the number of sub-metrics for that category. The final tool score is then computed as a weighted sum of all five categories:

$$
\text{Final Score} = (0.10 \times \text{Operational Functionality}) + (0.25 \times \text{Usability}) + (0.30 \times \text{Security}) + (0.15 \times \text{Maintenance/Sustainability}) + (0.20 \times \text{Performance})
$$

We are planning to create a system that allows users to adjust weights dynamically on a webpage to find tools that match their specific needs. *Coming Soon!*
</details>

<details>
<summary>Data Structure</summary>
# Data Structure Documentation

This document outlines the data structure used for tool submissions and evaluations in our repository.

## Overview

Tools are stored in a JSON array where each tool is represented by an object containing various fields that describe its features, capabilities, and evaluation results.

## Field Descriptions

### Metadata
- `id` (string): Unique identifier for the tool
- `date_submitted` (integer): Unix timestamp of initial submission
- `date_updated` (integer): Unix timestamp of last update
- `submitted_by` (string): GitHub username of the submitter

### Basic Information
- `tool-name` (string): Name of the tool
- `tool-url` (string): Official website or repository URL
- `category` (string): Tool category (e.g., Browser, Password Management)
- `description` (string): Brief description of the tool\'s purpose
- `status` (string): Current status (Active, Inactive, Experimental)

### Core Features & Compatibility
- `core-features` (string): Comma-separated list of main features
- `os-compatibility` (string): Supported operating systems
- `offline-functionality` (string): "Yes", "No", or "Partially"
- `mobile-friendly` (string): "Yes", "No", or "Partially"
- `languages-supported` (string): Supported languages
- `technical-level` (string): Required technical expertise (Beginner, Intermediate, Advanced)

### Security & Privacy
- `security-privacy-features` (string): Key security and privacy features
- `data-collection-level` (string): "None", "Minimal", or "Extensive"
- `security-privacy-strength-rating` (string): Rating from 1-5

### Deployment & Technical
- `deployment-architecture` (string): How the tool is deployed
- `license` (string): License type (SPDX identifier preferred)
- `cost` (string): "Fully Free", "Free Core", "Subscription Model", "One-time Purchase"

### Maintenance & Support
- `maintenance-sustainability` (string): Description of maintenance status and funding
- `community-support` (string): "Yes", "No", or "Limited"
- `maintenance-sustainability-rating` (string): Rating from 1-5

### Performance & Ratings
- `operational-functionality-rating` (string): Rating from 1-5
- `usability-rating` (string): Rating from 1-5
- `effectiveness-reliability-rating` (string): Rating from 1-5
- `overall-rating` (string): Weighted average of all ratings

### Documentation & Testing
- `full-documentation` (string): URL to complete documentation
- `version-tested` (string): Version number tested
- `date-tested` (string): Date of testing (YYYY-MM-DD)
- `testing-environment` (string): Description of testing environment

### Additional Information
- `limitations-vulnerabilities` (string): Known limitations or security concerns

## Example JSON

```json
{
    "id": "example-id-123",
    "date_submitted": 1744747334,
    "date_updated": 1744750500,
    "submitted_by": "username",
    "tool-name": "Example Tool",
    "tool-url": "https://example.com",
    "category": "Browser",
    "description": "A privacy-focused web browser",
    "status": "Active",
    "core-features": "Feature 1, Feature 2, Feature 3",
    "os-compatibility": "Windows, Linux, macOS",
    "offline-functionality": "Yes",
    "mobile-friendly": "Yes",
    "languages-supported": "English, Spanish, French",
    "technical-level": "Beginner",
    "security-privacy-features": "Feature A, Feature B",
    "data-collection-level": "Minimal",
    "security-privacy-strength-rating": "4.5",
    "deployment-architecture": "Desktop Application",
    "license": "MIT",
    "cost": "Fully Free",
    "maintenance-sustainability": "Regular updates, community-funded",
    "community-support": "Yes",
    "maintenance-sustainability-rating": "4.0",
    "operational-functionality-rating": "4.2",
    "usability-rating": "4.3",
    "effectiveness-reliability-rating": "4.4",
    "overall-rating": "4.3",
    "full-documentation": "https://docs.example.com",
    "version-tested": "1.0.0",
    "date-tested": "2024-03-21",
    "testing-environment": "Windows 11, macOS 14.2",
    "limitations-vulnerabilities": "Limited to specific use cases"
}
```

## Notes

1. All ratings are on a scale of 1-5, with higher numbers being better
2. Dates should be in YYYY-MM-DD format
3. URLs should include the protocol (https://)
4. The overall rating is calculated as a weighted average of individual ratings
5. All fields are required unless explicitly marked as optional
</details>

<details>
<summary>Example Assessment</summary>
# Example Assessment: Tor Browser

## Testing & Evaluation Sheet

### Tool Overview
- **Name**: Tor Browser
- **Category**: Privacy & Security
- **Purpose**: A privacy-focused web browser that routes traffic through the Tor network to protect users\' anonymity and privacy online
- **Date Tested**: 2024-03-15
- **Status**: 
  - [x] Deployed / Not Deployed (Launched or not)
  - [x] Operational - Actively running/maintained
  - [ ] In Testing - Currently being evaluated or piloted
  - [ ] Inactive/Deprecated - No longer maintained or functional
- **Deployment Architecture**:
  - [x] A standalone software - Runs entirely locally (e.g., runs on computer and doesn\'t depend on external server)
  - [ ] A locally hosted service with separate server and client component
  - [ ] A service with a local client that\'s hosted by a third party
  - [ ] A service that is hosted by a third party but can also be self-hosted
- **Version**: 13.0.10

### Installation & Setup
- **OS Compatibility**: Windows, macOS, Linux, Android
- **Installation Manual**: Yes
- **Installation Steps**: 
  1. Download the appropriate version for your OS from torproject.org
  2. Extract the downloaded file
  3. Run the browser executable
  4. Configure initial settings (optional)
- **Common Installation Issues & Fixes**: 
  - Issue: Browser fails to connect to Tor network
  - Fix: Check internet connection and firewall settings
  - Issue: Slow initial connection
  - Fix: Wait for network to establish, consider using bridges
- **User Documentation**: Yes
- **Required Technical Knowledge**: Beginner
- **Special Configurations**: None required for basic use

### Testing & Evaluation

#### Operational Functionality
- **Functionality**
  - Test Steps: Verified core features including browsing, private browsing, security settings, and network configuration
  - [ ] The tool is mostly non-functional with many broken features and bugs
  - [ ] Several broken features or bugs
  - [ ] Minor bugs or issues
  - [x] Mostly functional with few bugs or no bugs
  - [ ] Fully functional with no bugs

- **Internet Dependence**:
  - Simulated no internet connection: Browser cannot function without internet
  - Tested on 2G/3G networks: Works but with reduced performance

- **Localization & Language Support**
  - Languages Available: 50+ languages
  - East Asian Languages: Chinese (Simplified and Traditional), Japanese, Korean
  - Community Localization: Yes, active community contributing translations

- **Mobile Accessibility**
  - Mobile App: Available for Android
  - Key Functions: All core browsing features work on mobile
  - Mobile Browser Support: Not available for iOS

#### Usability for Non-Technical Users
- **Ease of Installation & Deployment**
  - How many steps are required to install the tool?
  - Are there one-click installations, or does it require command-line knowledge?
  - Are setup guides, manuals and FAQ\'s regularly updated?
  - Approximately how much times does a typical installation take (e.g., under 10 minutes, 30+ minutes)

- **User Onboarding Experience**
  - Are there any tool-tips or in-app guidance when first using the software?

- **Technical Experience Level Required**
  - Can users with no programming background install and start using the tool?
  - Is the interface visual and menu-driven or does it rely heavily on terminal commands?

#### Security & Privacy Strength
- **Encryption Standards**
  - Verify encryption strength through external tools or expert review
  - Does the tool use E2E encryption? What algorithm is used? (E.g., "AES-256 encryption used; E2E verified in test")

- **Known Strength Resilience**
  - Is the tool usable in regions with heavy censorship or surveillance?
  - Does it include built-in circumvention tools?
  - Any known weaknesses or risks?

- **Comparison with Known Standards**
  - How does the tool measure up against established security/privacy standards?

- **Data Minimization**
  - What user data is collected?

- **Privacy Policy Transparency**
  - What does the privacy policy state about data handling?

#### Maintenance/Sustainability
- **Community Support**
  - Is it easy to get help, ask questions, or find solutions from other users or developers?

- **Development Active Status**
  - How frequently is it updated?
  - How responsive is the development team?

- **Funding and Sponsorship**
  - Who are the main funders? (e.g., NGOs, governments, private donors)
  - Who are the main sponsors?
  - Does the software seem financially sustainable?

#### Performance / Effectiveness & Reliability
- **Testing Environment Setup**:
  - Device: [Device model and specs (CPU, RAM, etc.)]
  - OS: [Operating System version]
  - Network: [Network type and speed (e.g., broadband, 3G/4G, etc.)]

- **User Experience Observations**
  - How smooth does the tool feel?
  - What is the tool\'s responsiveness during normal use?

- **Speed & Responsiveness**:
  - Does it load & work efficiently?
  - Conduct speed tests to measure loading times and responsiveness (e.g., using ping, traceroute, lighthouse)
  - Are there any noticeable delays or lag during use?

- **Resource Usage**:
  - How much CPU & memory does it consume?
  - Measure CPU and memory usage using specific tools like Task Manager (Windows), htop (Linux), or Activity Monitor (macOS)?

- **Network Performance**:
  - How much Latency & Bandwidth Usage?
  - Test network efficiency by monitoring bandwidth consumption with tools like Wireshark.

- **Reliability**
  - Are there independent peer reviews or third-party audits available?
  - Detail if low error rates and specify uptime percentage
  - Run core tests multiple times and log how many attempts fail

### Deployment Considerations
- **Open Source & Transparency**:
  - Is the code open for independent verification?

- **Cloud vs. Local Deployment**:
  - Does the tool require cloud infrastructure like AWS or Azure, or can it be locally run on a private server?

- **Dependencies**:
  - Does it require Docker, Python, databases, etc.?
  - Are dependencies clearly documented?

- **Post-Deployment Maintenance**
  - After deployment, is the tool easy to maintain?
  - If a deployer decides to fork the project, is the code easy to modify?
- **Merge/Sustainability**: 
  - How open is the original project to contributions?
  - Is there a streamlined process for submitting changes back to the main repository?

### Testing Scenarios
#### Scenario 1
- Notes & Documentation

#### Scenario 2
- Notes & Documentation

### Insights & Recommendations
- **Key Findings**
  - What are the key findings?

- **Strengths**:
  - What are the benefits of the tool?

- **Weaknesses**:
  - What are the major drawbacks of the tool?

- **Suggested Improvements**
  - What are some suggestions for improving the tool?

- **Alternative Tools**:
  - Are there better tools available? If so, which tools are they?

- **License**:
  - Which License?

- **Cost/Resource Implications**:
  - **Total Cost of Ownership**:
    - Is the tool free to use?
      - Are there premium tiers or paid features?
    - Are there hidden costs for maintenance, third-party integrations, or updates?
    - [License cost, time, resources to install, maintain and troubleshoot]

### Why is this useful to civil societies in authoritarian environments?
Explain why this tool would be useful to civil society organizations. Include if it is unavailable in certain regions due to firewalls or other blocking systems.
</details>

<details>
<summary>Tool Template</summary>
# Testing Template
Does the tool "prove" to be high-impact?

## Testing & Evaluation Sheet

### Tool Overview
- **Name**: [Tool Name]
- **Category**: [Category, e.g., Secure Communication, Anonymity, Encryption]
- **Purpose**: [What the tool is designed to do]
- **Date Tested**: [Date tested]
- **Status**: 
  - [ ] Deployed / Not Deployed (Launched or not)
  - [ ] Operational - Actively running/maintained
  - [ ] In Testing - Currently being evaluated or piloted
  - [ ] Inactive/Deprecated - No longer maintained or functional
- **Deployment Architecture**:
  - [ ] A standalone software - Runs entirely locally (e.g., runs on computer and doesn\'t depend on external server)
  - [ ] A locally hosted service with separate server and client component - Run both backend/frontend yourself (e.g., backend could be on a local network, or self-hosted on cloud)
  - [ ] A service with a local client that\'s hosted by a third party - You install a client on your device, but it connects to and depends on a remote server (e.g., Signal: install app (client), but Signal\'s servers handle message relaying, etc.)
  - [ ] A service that is hosted by a third party but can also be self-hosted
- **Version**: [Version Tested]

### Installation & Setup
- **OS Compatibility**: What is the OS compatibility of the tool?
- **Installation Manual**: Yes/No
- **Installation Steps**: What is the installation process?
- **Common Installation Issues & Fixes**: List common errors users might face and how to troubleshoot them
- **User Documentation**: Yes/No
- **Required Technical Knowledge**: None, beginner, intermediate, professional
- **Special Configurations**: Mention if command-line setup or special configurations are needed

### Testing & Evaluation

#### Operational Functionality
- **Functionality**
  - Test Steps: Verify the tool\'s core features by using all major functions, tracking any failures or bugs.
  - [ ] The tool is mostly non-functional with many broken features and bugs
  - [ ] Several broken features or bugs
  - [ ] Minor bugs or issues
  - [ ] Mostly functional with few bugs or no bugs
  - [ ] Fully functional with no bugs

- **Internet Dependence**:
  - Simulate no internet connection (e.g., disable Wifi)
  - Test the tool on 2G/3G networks

- **Localization & Language Support**
  - How many languages are available?
  - Which East Asian languages are available?
  - Do they have an active community contributing to localization?

- **Mobile Accessibility**
  - Verify if a mobile app exists and is functional
  - Test key functions (e.g., navigating, uploading data) on mobile browsers

#### Usability for Non-Technical Users
- **Ease of Installation & Deployment**
  - How many steps are required to install the tool?
  - Are there one-click installations, or does it require command-line knowledge?
  - Are setup guides, manuals and FAQ\'s regularly updated?
  - Approximately how much times does a typical installation take (e.g., under 10 minutes, 30+ minutes)

- **User Onboarding Experience**
  - Are there any tool-tips or in-app guidance when first using the software?

- **Technical Experience Level Required**
  - Can users with no programming background install and start using the tool?
  - Is the interface visual and menu-driven or does it rely heavily on terminal commands?

#### Security & Privacy Strength
- **Encryption Standards**
  - Verify encryption strength through external tools or expert review
  - Does the tool use E2E encryption? What algorithm is used? (E.g., "AES-256 encryption used; E2E verified in test")

- **Known Strength Resilience**
  - Is the tool usable in regions with heavy censorship or surveillance?
  - Does it include built-in circumvention tools?
  - Any known weaknesses or risks?

- **Comparison with Known Standards**
  - How does the tool measure up against established security/privacy standards?

- **Data Minimization**
  - What user data is collected?

- **Privacy Policy Transparency**
  - What does the privacy policy state about data handling?

#### Maintenance/Sustainability
- **Community Support**
  - Is it easy to get help, ask questions, or find solutions from other users or developers?

- **Development Active Status**
  - How frequently is it updated?
  - How responsive is the development team?

- **Funding and Sponsorship**
  - Who are the main funders? (e.g., NGOs, governments, private donors)
  - Who are the main sponsors?
  - Does the software seem financially sustainable?

#### Performance / Effectiveness & Reliability
- **Testing Environment Setup**:
  - Device: [Device model and specs (CPU, RAM, etc.)]
  - OS: [Operating System version]
  - Network: [Network type and speed (e.g., broadband, 3G/4G, etc.)]

- **User Experience Observations**
  - How smooth does the tool feel?
  - What is the tool\'s responsiveness during normal use?

- **Speed & Responsiveness**:
  - Does it load & work efficiently?
  - Conduct speed tests to measure loading times and responsiveness (e.g., using ping, traceroute, lighthouse)
  - Are there any noticeable delays or lag during use?

- **Resource Usage**:
  - How much CPU & memory does it consume?
  - Measure CPU and memory usage using specific tools like Task Manager (Windows), htop (Linux), or Activity Monitor (macOS)?

- **Network Performance**:
  - How much Latency & Bandwidth Usage?
  - Test network efficiency by monitoring bandwidth consumption with tools like Wireshark.

- **Reliability**
  - Are there independent peer reviews or third-party audits available?
  - Detail if low error rates and specify uptime percentage
  - Run core tests multiple times and log how many attempts fail

### Deployment Considerations
- **Open Source & Transparency**:
  - Is the code open for independent verification?

- **Cloud vs. Local Deployment**:
  - Does the tool require cloud infrastructure like AWS or Azure, or can it be locally run on a private server?

- **Dependencies**:
  - Does it require Docker, Python, databases, etc.?
  - Are dependencies clearly documented?

- **Post-Deployment Maintenance**
  - After deployment, is the tool easy to maintain?
  - If a deployer decides to fork the project, is the code easy to modify?
- **Merge/Sustainability**: 
  - How open is the original project to contributions?
  - Is there a streamlined process for submitting changes back to the main repository?

### Testing Scenarios
#### Scenario 1
- Notes & Documentation

#### Scenario 2
- Notes & Documentation

### Insights & Recommendations
- **Key Findings**
  - What are the key findings?

- **Strengths**:
  - What are the benefits of the tool?

- **Weaknesses**:
  - What are the major drawbacks of the tool?

- **Suggested Improvements**
  - What are some suggestions for improving the tool?

- **Alternative Tools**:
  - Are there better tools available? If so, which tools are they?

- **License**:
  - Which License?

- **Cost/Resource Implications**:
  - **Total Cost of Ownership**:
    - Is the tool free to use?
      - Are there premium tiers or paid features?
    - Are there hidden costs for maintenance, third-party integrations, or updates?
    - [License cost, time, resources to install, maintain and troubleshoot]

### Why is this useful to civil societies in authoritarian environments?
Explain why this tool would be useful to civil society organizations. Include if it is unavailable in certain regions due to firewalls or other blocking systems.
</details>