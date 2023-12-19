//
//  University.swift
//  SampleSearchBar
//
//  Created by Gany Ganesh on 13/12/23.
//


import Foundation

// MARK: - WelcomeElement
struct University: Codable {
    let name, country: String
    let stateProvince: String?
    let alphaTwoCode: String
    let domains: [String]
    let webPages: [String]

    enum CodingKeys: String, CodingKey {
        case name, country
        case stateProvince = "state-province"
        case alphaTwoCode = "alpha_two_code"
        case domains
        case webPages = "web_pages"
    }
}

typealias UniversityOBJ = [University]


