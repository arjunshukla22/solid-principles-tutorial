//
//  SingleResponsibilty.swift
//  solid-principles-tutorial
//
//  Created by Arjun Shukla on 12/05/25.
//

import Foundation
import UIKit

// Pure Networking logic
class NetworkService {
    
    func request(endPoint: String, completion : @escaping (Result<UserData,Error>) -> Void) {
        // Perform actual network call
        
        let userData : UserData = UserData(name: "Arjun Shukla")
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            completion(.success(userData))
        }
       
    }
    
}

class EmailService {
    
    func validEmail(email:String) -> Bool {
        // Check email is valid or not
        let regix = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let predicate = NSPredicate(format: "SELF MATCHES %@", regix)
        return predicate.evaluate(with: email)
    }
}



struct User {
    
    let email : String
    let password : String
    
}


struct UserData : Codable {
    
    let name : String
}
