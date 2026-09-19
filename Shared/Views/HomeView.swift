import SwiftUI

struct HomeView: View {
    @StateObject private var viewModel = HomeViewModel()

    var body: some View {
        VStack(spacing: 0) {
            TopBar()

            // Pass the selected folder to MessageListView
            MessageListView(folder: viewModel.currentFolder)
                .padding()
        }
    }
}

struct TopBar: View{
    var body: some View{
        HStack{
            
        }
    }
}
