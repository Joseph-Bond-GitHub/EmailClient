import Combine
import SwiftMail

// This should be a class, not a View
class MessageListViewModel: ObservableObject {
    
    @Published var messages: [Message] = []  // SwiftMail's existing Message model
    
    let folder: String

    init(folder: String) {
        self.folder = folder
        // Load messages for this folder (e.g., from SwiftMailService)
    }
}
