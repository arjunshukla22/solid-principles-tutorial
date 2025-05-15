//
//  OpenClosedPrinciple.swift
//  solid-principles-tutorial
//
//  Created by Arjun Shukla on 12/05/25.
//

import Foundation

//class APIService {
//    func fetch() -> String {
//        return "Data from API"
//    }
//}
//
//class DatabaseService {
//    func fetch() -> String {
//        return "Data from Database"
//    }
//}
//
//// Violation: Adding a new data source requires modifying DataFetcher → breaks OCP.
//
//class DataFetcher {
//    func fetchData(source: String) -> String {
//        if source == "api" {
//            return APIService().fetch()
//        } else if source == "db" {
//            return DatabaseService().fetch()
//        } else {
//            return "Unknown source"
//        }
//    }
//}


// Fix Violation Above OCP

protocol DataSource {
    func fetch() -> String
}

class DatabaseService : DataSource {
    func fetch() -> String {
        return "Data from Database"
    }
}

class APIService : DataSource {
    func fetch() -> String {
        return "Data from API"
    }
}

// get Data Source Without Changing Behaviour of Data Fetcher
class DataFetcher {
    func fetchData(source : DataSource) -> String {
        source.fetch()
    }
}
