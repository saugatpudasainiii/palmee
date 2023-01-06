
import Foundation

// MARK: - Welcome
struct FriendsData: Codable {
   var friendsList: [FriendsList]
    enum CodingKeys: String, CodingKey {
        case friendsList = "FriendsList"
    }
    
    static let allFriends: FriendsData = Bundle.main.decode(file: ApisName.friendAps)
}

// MARK: - FriendsList
struct FriendsList: Codable {
    var id: Int
    var name: String
    var imageURL: String
    var status: String

    enum CodingKeys: String, CodingKey {
        case id, name
        case imageURL = "imageUrl"
        case status = "status"
    }
}
