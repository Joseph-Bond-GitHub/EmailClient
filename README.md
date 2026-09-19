A work in progress MacOS and iOS compatible email client to interface with email services that support IMAP and SMPT. 

Pictures to be included later

## Requirements
- Swift 5
- Minimum OS: iOS 17.0, macOS 26 Tahoe
- Built with Xcode 27.0

## Roadmap
- Persistent offline storage
- Local index to facilitate search
- Full IMAP and SMTP integration
  
**Purpose of Development**
This is my first attempt at a fully featured swift application intended to tie together the various knowledge gained of swift and Apple native apps from tutorials with my working knowledge of email. 

## Architecture

```
EmailClient/
└── EmailClient/
    ├── App/
    │   ├── ContentView.swift
    │   └── EmailClientApp.swift
    ├── Features/
    │   ├── Inbox/
    │   │   ├── MessageListView.swift
    │   │   └── MessageListViewModel.swift
    │   └── Login/
    │       ├── LoginView.swift
    │       └── LoginViewModel.swift
    ├── Models/
    │   └── Account.swift
    ├── Resources/
    │   └── Assets.xcassets
    ├── Services/
    │   ├── AuthService.swift
    │   ├── MailService.swift
    │   └── SwiftMailService.swift
    └── Shared/
        └── Views/
            ├── HomeView.swift
            ├── HomeViewModel.swift
            ├── MessageDetaillView.swift
            └── MessageRowView.swift
```

Currently IMAP is implemented through SwiftMailService.swift as an instance of the MailService protocol. This will allow future versions of the application to implement the required IMAP and SMPT features without the need for a SwiftMail import whilst still conforming to the MailService protocol. 
