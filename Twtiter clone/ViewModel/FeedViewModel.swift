//
//  FeedViewModel.swift
//  Twtiter clone
//
//  Created by Mario Galvan on 04/04/21.
//

import SwiftUI
import Firebase

class FeedViewModel : ObservableObject {
    @Published var tweets = [Tweet]()
    
    init() {
        fetchTweets()
    }
    
    func fetchTweets() {
        COLLECTION_TWEETS.getDocuments { snapshot, _ in
            guard let documents = snapshot?.documents else { return }
            self.tweets = documents.map({ Tweet(dictionary: $0.data()) })
            print("DEBUG: Tweets \(self.tweets)")
        }
    }
}
