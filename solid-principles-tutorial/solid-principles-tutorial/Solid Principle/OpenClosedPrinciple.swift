//
//  OpenClosedPrinciple.swift
//  solid-principles-tutorial
//
//  Created by Arjun Shukla on 12/05/25.
//

import Foundation

class APIService {
    func fetch() -> String {
        return "Data from API"
    }
}

class DatabaseService {
    func fetch() -> String {
        return "Data from Database"
    }
}

class DataFetcher {
    func fetchData(source: String) -> String {
        if source == "api" {
            return APIService().fetch()
        } else if source == "db" {
            return DatabaseService().fetch()
        } else {
            return "Unknown source"
        }
    }
}

