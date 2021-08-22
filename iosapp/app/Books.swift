//
//  Books.swift
//  Whats Trending
//
//  Created by Michael on 8/22/21.
//

import Foundation

struct Book: Codable, Identifiable {
    let id = UUID()
    var author: String
    var title: String
    var email: String
}

// https://medium.com/@nutanbhogendrasharma/consume-rest-api-in-swiftui-ios-mobile-app-b3c5d6ecf401
class Api : ObservableObject{
    @Published var books = [Book]()
    
    func loadData(completion:@escaping ([Book]) -> ()) {
        guard let url = URL(string: "http://localhost:8080/all") else {
            print("Invalid url...")
            return
        }
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                if let jsonString = String(data: data, encoding: .utf8) {
                    print(jsonString)
                    
                    let books = try! JSONDecoder().decode([Book].self, from: data)
                    DispatchQueue.main.async {
                        completion(books)
                    }
                    
                }
                
            }
            
        }.resume()
        
    }
}
