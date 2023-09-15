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
    
    func retrieveLeetcodeSolution(callback: @escaping ([LeetcodeProblems]) -> Void) {
        var leetCodeProblems: [LeetcodeProblems] = []
        
        db.collection("solutions").getDocuments() { (query, error) in
            if let query = query {
                for document in query.documents {
                    document.data()
                    
                    if let jsonData = try? JSONSerialization.data(withJSONObject: document.data(), options: .prettyPrinted) {
                        if let leetcodeProblem = try? JSONDecoder().decode(LeetcodeProblems.self, from: jsonData) {
                            leetCodeProblems.append(leetcodeProblem)
                        }
                    }
                    
                    print("document \(document.documentID) \(document.data())")
                }
                callback(leetCodeProblems)
            } else if let error = error {
                // TODO: Error
            } else {
                // TODO: Someting went wrong
            }
        }
        
        
    }
}
