// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let userProfileMode = try? JSONDecoder().decode(UserProfileMode.self, from: jsonData)

import Foundation

// MARK: - UserProfileMode
struct UserProfileMode: Codable {
    let userDetail: [UserDetail]

    enum CodingKeys: String, CodingKey {
        case userDetail = "UserDetail"
    }
}

// MARK: - UserDetail
struct UserDetail: Codable {
    let id: Int
    let name: String
    let imageURL: String
    let status: String
    let userActivityDetail: UserActivityDetail
    let photos: [String]

    enum CodingKeys: String, CodingKey {
        case id, name
        case imageURL = "imageUrl"
        case status, userActivityDetail, photos
    }
}

// MARK: - UserActivityDetail
struct UserActivityDetail: Codable {
    let photos, connections, score: String
}
