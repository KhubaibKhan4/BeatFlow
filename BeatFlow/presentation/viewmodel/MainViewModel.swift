//
//  MainViewModel.swift
//  BeatFlow
//
//  Created by Muhammad Khubaib Imtiaz on 01/02/2025.
//
import SwiftUI
import Combine


class MainViewModel: ObservableObject {
    
    @Published var userList: [UserItem] = []
    
    
    func fetchUserList() async {
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return }
        
          print("Fetch Users Called")
            do {
                let (data, _) = try await URLSession.shared.data(from: url)
                if let  decodedData = try? JSONDecoder().decode([UserItem].self, from: data) {
                    DispatchQueue.main.async {
                        self.userList = decodedData
                        print("\(self.userList)")
                    }
                    
                }
            } catch {
                
                print(error.localizedDescription)
                
            }
    }
    
}
