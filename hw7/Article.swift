//
//  Article.swift
//  newsfeedSkeleton
//
//  Created by Bob Lin on 4/8/22.
//

import Foundation

struct ArticleResponse: Codable {
    let articles: [Article]
}

struct Article: Codable, Identifiable {
    let id: UUID = UUID()
    let author: String?
    let url: String?
    let source, title, welcomeDescription: String?
    let image: String?
    let date: Date?

    enum CodingKeys: String, CodingKey {
        case author, url, source, title
        case welcomeDescription = "description"
        case image, date
    }
}
