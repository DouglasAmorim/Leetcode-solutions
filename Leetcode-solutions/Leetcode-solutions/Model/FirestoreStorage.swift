//
//  FirestoreStorage.swift
//  Leetcode-solutions
//
//  Created by Douglas Amorim on 14/09/23.
//

import Foundation
import Firebase

class FirestoreStorage {
    static let shared = FirestoreStorage()
    
    private var db: Firestore
    
    init() {
        self.db = Firestore.firestore()
    }
    
    func retrieveLeetcodeSolution() {
        db.collection("solutions").getDocuments() { (query, error) in
            if let error = error {
                // TODO: Error
            } else {
                if let query = query {
                    for document in query.documents {
                        print("document \(document.documentID) \(document.data())")
                    }
                }
            }
        }
    }
}
