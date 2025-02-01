//
//  ContentView.swift
//  BeatFlow
//
//  Created by Muhammad Khubaib Imtiaz on 01/02/2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel: MainViewModel = MainViewModel()
    var body: some View {
        VStack {
                List {
                    ForEach(viewModel.userList, id: \.id) { users in
                        Text(users.title)
                    }
                }.task {
                    await viewModel.fetchUserList()
                }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
