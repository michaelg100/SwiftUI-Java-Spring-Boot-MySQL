//
//  ContentView.swift
//  Whats Trending
//
//  Created by Michael on 7/26/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var books = [Book]()
    
    var body: some View {
        List(books) { book in
            
            VStack(alignment: .leading) {
                
                Text("\(book.title)")
                    .font(.title)
                    .foregroundColor(.red)
                    .padding(.bottom)
                
                
                HStack{
                    Text("\(book.author)")
                        .font(.body)
                        .fontWeight(.bold)
                        
                    Text("\(book.email)")
                        .font(.body)
                        .fontWeight(.semibold)
                }
                Spacer()
            }
            
        }
            .onAppear() {
                Api().loadData { (books) in
                    self.books = books
                }
            }.navigationTitle("Book List")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
