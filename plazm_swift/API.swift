// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public struct homeSearchFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - closest
  ///   - updated
  public init(closest: Bool, updated: Bool) {
    graphQLMap = ["closest": closest, "updated": updated]
  }

  public var closest: Bool {
    get {
      return graphQLMap["closest"] as! Bool
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "closest")
    }
  }

  public var updated: Bool {
    get {
      return graphQLMap["updated"] as! Bool
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "updated")
    }
  }
}

public struct filterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - business
  ///   - postsByMe
  ///   - mySubscriptions
  ///   - others
  public init(business: Swift.Optional<Bool?> = nil, postsByMe: Swift.Optional<Bool?> = nil, mySubscriptions: Swift.Optional<Bool?> = nil, others: Swift.Optional<Bool?> = nil) {
    graphQLMap = ["Business": business, "PostsByMe": postsByMe, "MySubscriptions": mySubscriptions, "Others": others]
  }

  public var business: Swift.Optional<Bool?> {
    get {
      return graphQLMap["Business"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Business")
    }
  }

  public var postsByMe: Swift.Optional<Bool?> {
    get {
      return graphQLMap["PostsByMe"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "PostsByMe")
    }
  }

  public var mySubscriptions: Swift.Optional<Bool?> {
    get {
      return graphQLMap["MySubscriptions"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "MySubscriptions")
    }
  }

  public var others: Swift.Optional<Bool?> {
    get {
      return graphQLMap["Others"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Others")
    }
  }
}

public struct sideFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - likes
  ///   - recent
  public init(likes: Swift.Optional<Bool?> = nil, recent: Swift.Optional<Bool?> = nil) {
    graphQLMap = ["likes": likes, "recent": recent]
  }

  public var likes: Swift.Optional<Bool?> {
    get {
      return graphQLMap["likes"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "likes")
    }
  }

  public var recent: Swift.Optional<Bool?> {
    get {
      return graphQLMap["recent"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "recent")
    }
  }
}

public struct media: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - image
  ///   - thumbnail
  public init(image: Swift.Optional<String?> = nil, thumbnail: Swift.Optional<String?> = nil) {
    graphQLMap = ["image": image, "thumbnail": thumbnail]
  }

  public var image: Swift.Optional<String?> {
    get {
      return graphQLMap["image"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "image")
    }
  }

  public var thumbnail: Swift.Optional<String?> {
    get {
      return graphQLMap["thumbnail"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "thumbnail")
    }
  }
}

public struct eventScheduleInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - startTime
  ///   - endTime
  public init(startTime: Swift.Optional<String?> = nil, endTime: Swift.Optional<String?> = nil) {
    graphQLMap = ["start_time": startTime, "end_time": endTime]
  }

  public var startTime: Swift.Optional<String?> {
    get {
      return graphQLMap["start_time"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "start_time")
    }
  }

  public var endTime: Swift.Optional<String?> {
    get {
      return graphQLMap["end_time"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "end_time")
    }
  }
}

public final class GetAllUserQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GetAllUser {
      getAllUser {
        __typename
        message
        success
        user {
          __typename
          name
          email
          userSub
          phoneNumber
          photo
          lockProfile
          _id
        }
      }
    }
    """

  public let operationName: String = "GetAllUser"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("getAllUser", type: .nonNull(.object(GetAllUser.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(getAllUser: GetAllUser) {
      self.init(unsafeResultMap: ["__typename": "Query", "getAllUser": getAllUser.resultMap])
    }

    public var getAllUser: GetAllUser {
      get {
        return GetAllUser(unsafeResultMap: resultMap["getAllUser"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "getAllUser")
      }
    }

    public struct GetAllUser: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["getAllUserResponse"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message", type: .nonNull(.scalar(String.self))),
          GraphQLField("success", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("user", type: .list(.object(User.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(message: String, success: Bool, user: [User?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "getAllUserResponse", "message": message, "success": success, "user": user.flatMap { (value: [User?]) -> [ResultMap?] in value.map { (value: User?) -> ResultMap? in value.flatMap { (value: User) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var message: String {
        get {
          return resultMap["message"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "message")
        }
      }

      public var success: Bool {
        get {
          return resultMap["success"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "success")
        }
      }

      public var user: [User?]? {
        get {
          return (resultMap["user"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [User?] in value.map { (value: ResultMap?) -> User? in value.flatMap { (value: ResultMap) -> User in User(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [User?]) -> [ResultMap?] in value.map { (value: User?) -> ResultMap? in value.flatMap { (value: User) -> ResultMap in value.resultMap } } }, forKey: "user")
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["userProfileRef"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("email", type: .scalar(String.self)),
            GraphQLField("userSub", type: .scalar(String.self)),
            GraphQLField("phoneNumber", type: .scalar(String.self)),
            GraphQLField("photo", type: .scalar(String.self)),
            GraphQLField("lockProfile", type: .scalar(Int.self)),
            GraphQLField("_id", type: .scalar(GraphQLID.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(name: String? = nil, email: String? = nil, userSub: String? = nil, phoneNumber: String? = nil, photo: String? = nil, lockProfile: Int? = nil, _id: GraphQLID? = nil) {
          self.init(unsafeResultMap: ["__typename": "userProfileRef", "name": name, "email": email, "userSub": userSub, "phoneNumber": phoneNumber, "photo": photo, "lockProfile": lockProfile, "_id": _id])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var email: String? {
          get {
            return resultMap["email"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "email")
          }
        }

        public var userSub: String? {
          get {
            return resultMap["userSub"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "userSub")
          }
        }

        public var phoneNumber: String? {
          get {
            return resultMap["phoneNumber"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "phoneNumber")
          }
        }

        public var photo: String? {
          get {
            return resultMap["photo"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "photo")
          }
        }

        public var lockProfile: Int? {
          get {
            return resultMap["lockProfile"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "lockProfile")
          }
        }

        public var _id: GraphQLID? {
          get {
            return resultMap["_id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "_id")
          }
        }
      }
    }
  }
}

public final class GetUserQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GetUser($userSub: String, $value: Int, $limit: Int) {
      getUser: getUser(input: {userSub: $userSub}) {
        __typename
        message
        success
        user {
          __typename
          name
          email
          userSub
          phoneNumber
          photo
          lockProfile
          _id
          favorites
          listFollowed
        }
      }
      userCreateAndFollowList: getUserSubCreatedAndFollowedLists(
        input: {userSub: $userSub, value: $value, limit: $limit}
      ) {
        __typename
        message
        success
        totalLists
        list {
          __typename
          _id
          isPublic
          ownerId
          subscribers {
            __typename
            name
            photo
            _id
          }
          name
          description
          type
          media {
            __typename
            image
          }
          createdAt
          updatedAt
        }
      }
    }
    """

  public let operationName: String = "GetUser"

  public var userSub: String?
  public var value: Int?
  public var limit: Int?

  public init(userSub: String? = nil, value: Int? = nil, limit: Int? = nil) {
    self.userSub = userSub
    self.value = value
    self.limit = limit
  }

  public var variables: GraphQLMap? {
    return ["userSub": userSub, "value": value, "limit": limit]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("getUser", alias: "getUser", arguments: ["input": ["userSub": GraphQLVariable("userSub")]], type: .nonNull(.object(GetUser.selections))),
        GraphQLField("getUserSubCreatedAndFollowedLists", alias: "userCreateAndFollowList", arguments: ["input": ["userSub": GraphQLVariable("userSub"), "value": GraphQLVariable("value"), "limit": GraphQLVariable("limit")]], type: .nonNull(.object(UserCreateAndFollowList.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(getUser: GetUser, userCreateAndFollowList: UserCreateAndFollowList) {
      self.init(unsafeResultMap: ["__typename": "Query", "getUser": getUser.resultMap, "userCreateAndFollowList": userCreateAndFollowList.resultMap])
    }

    public var getUser: GetUser {
      get {
        return GetUser(unsafeResultMap: resultMap["getUser"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "getUser")
      }
    }

    public var userCreateAndFollowList: UserCreateAndFollowList {
      get {
        return UserCreateAndFollowList(unsafeResultMap: resultMap["userCreateAndFollowList"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "userCreateAndFollowList")
      }
    }

    public struct GetUser: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["addUserResponse"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message", type: .nonNull(.scalar(String.self))),
          GraphQLField("success", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("user", type: .object(User.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(message: String, success: Bool, user: User? = nil) {
        self.init(unsafeResultMap: ["__typename": "addUserResponse", "message": message, "success": success, "user": user.flatMap { (value: User) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var message: String {
        get {
          return resultMap["message"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "message")
        }
      }

      public var success: Bool {
        get {
          return resultMap["success"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "success")
        }
      }

      public var user: User? {
        get {
          return (resultMap["user"] as? ResultMap).flatMap { User(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "user")
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["userProfileRef"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("email", type: .scalar(String.self)),
            GraphQLField("userSub", type: .scalar(String.self)),
            GraphQLField("phoneNumber", type: .scalar(String.self)),
            GraphQLField("photo", type: .scalar(String.self)),
            GraphQLField("lockProfile", type: .scalar(Int.self)),
            GraphQLField("_id", type: .scalar(GraphQLID.self)),
            GraphQLField("favorites", type: .list(.scalar(GraphQLID.self))),
            GraphQLField("listFollowed", type: .list(.scalar(GraphQLID.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(name: String? = nil, email: String? = nil, userSub: String? = nil, phoneNumber: String? = nil, photo: String? = nil, lockProfile: Int? = nil, _id: GraphQLID? = nil, favorites: [GraphQLID?]? = nil, listFollowed: [GraphQLID?]? = nil) {
          self.init(unsafeResultMap: ["__typename": "userProfileRef", "name": name, "email": email, "userSub": userSub, "phoneNumber": phoneNumber, "photo": photo, "lockProfile": lockProfile, "_id": _id, "favorites": favorites, "listFollowed": listFollowed])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var email: String? {
          get {
            return resultMap["email"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "email")
          }
        }

        public var userSub: String? {
          get {
            return resultMap["userSub"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "userSub")
          }
        }

        public var phoneNumber: String? {
          get {
            return resultMap["phoneNumber"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "phoneNumber")
          }
        }

        public var photo: String? {
          get {
            return resultMap["photo"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "photo")
          }
        }

        public var lockProfile: Int? {
          get {
            return resultMap["lockProfile"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "lockProfile")
          }
        }

        public var _id: GraphQLID? {
          get {
            return resultMap["_id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "_id")
          }
        }

        public var favorites: [GraphQLID?]? {
          get {
            return resultMap["favorites"] as? [GraphQLID?]
          }
          set {
            resultMap.updateValue(newValue, forKey: "favorites")
          }
        }

        public var listFollowed: [GraphQLID?]? {
          get {
            return resultMap["listFollowed"] as? [GraphQLID?]
          }
          set {
            resultMap.updateValue(newValue, forKey: "listFollowed")
          }
        }
      }
    }

    public struct UserCreateAndFollowList: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["listUserResponse"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message", type: .nonNull(.scalar(String.self))),
          GraphQLField("success", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("totalLists", type: .scalar(Int.self)),
          GraphQLField("list", type: .list(.object(List.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(message: String, success: Bool, totalLists: Int? = nil, list: [List?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "listUserResponse", "message": message, "success": success, "totalLists": totalLists, "list": list.flatMap { (value: [List?]) -> [ResultMap?] in value.map { (value: List?) -> ResultMap? in value.flatMap { (value: List) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var message: String {
        get {
          return resultMap["message"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "message")
        }
      }

      public var success: Bool {
        get {
          return resultMap["success"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "success")
        }
      }

      public var totalLists: Int? {
        get {
          return resultMap["totalLists"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "totalLists")
        }
      }

      public var list: [List?]? {
        get {
          return (resultMap["list"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [List?] in value.map { (value: ResultMap?) -> List? in value.flatMap { (value: ResultMap) -> List in List(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [List?]) -> [ResultMap?] in value.map { (value: List?) -> ResultMap? in value.flatMap { (value: List) -> ResultMap in value.resultMap } } }, forKey: "list")
        }
      }

      public struct List: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["listUserRef"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("_id", type: .scalar(GraphQLID.self)),
            GraphQLField("isPublic", type: .scalar(Bool.self)),
            GraphQLField("ownerId", type: .scalar(GraphQLID.self)),
            GraphQLField("subscribers", type: .list(.object(Subscriber.selections))),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("description", type: .scalar(String.self)),
            GraphQLField("type", type: .scalar(String.self)),
            GraphQLField("media", type: .list(.object(Medium.selections))),
            GraphQLField("createdAt", type: .scalar(String.self)),
            GraphQLField("updatedAt", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(_id: GraphQLID? = nil, isPublic: Bool? = nil, ownerId: GraphQLID? = nil, subscribers: [Subscriber?]? = nil, name: String? = nil, description: String? = nil, type: String? = nil, media: [Medium?]? = nil, createdAt: String? = nil, updatedAt: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "listUserRef", "_id": _id, "isPublic": isPublic, "ownerId": ownerId, "subscribers": subscribers.flatMap { (value: [Subscriber?]) -> [ResultMap?] in value.map { (value: Subscriber?) -> ResultMap? in value.flatMap { (value: Subscriber) -> ResultMap in value.resultMap } } }, "name": name, "description": description, "type": type, "media": media.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var _id: GraphQLID? {
          get {
            return resultMap["_id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "_id")
          }
        }

        public var isPublic: Bool? {
          get {
            return resultMap["isPublic"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "isPublic")
          }
        }

        public var ownerId: GraphQLID? {
          get {
            return resultMap["ownerId"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "ownerId")
          }
        }

        public var subscribers: [Subscriber?]? {
          get {
            return (resultMap["subscribers"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Subscriber?] in value.map { (value: ResultMap?) -> Subscriber? in value.flatMap { (value: ResultMap) -> Subscriber in Subscriber(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [Subscriber?]) -> [ResultMap?] in value.map { (value: Subscriber?) -> ResultMap? in value.flatMap { (value: Subscriber) -> ResultMap in value.resultMap } } }, forKey: "subscribers")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var description: String? {
          get {
            return resultMap["description"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "description")
          }
        }

        public var type: String? {
          get {
            return resultMap["type"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "type")
          }
        }

        public var media: [Medium?]? {
          get {
            return (resultMap["media"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Medium?] in value.map { (value: ResultMap?) -> Medium? in value.flatMap { (value: ResultMap) -> Medium in Medium(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }, forKey: "media")
          }
        }

        public var createdAt: String? {
          get {
            return resultMap["createdAt"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String? {
          get {
            return resultMap["updatedAt"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Subscriber: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["userRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("name", type: .scalar(String.self)),
              GraphQLField("photo", type: .scalar(String.self)),
              GraphQLField("_id", type: .scalar(GraphQLID.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(name: String? = nil, photo: String? = nil, _id: GraphQLID? = nil) {
            self.init(unsafeResultMap: ["__typename": "userRef", "name": name, "photo": photo, "_id": _id])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }

          public var photo: String? {
            get {
              return resultMap["photo"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "photo")
            }
          }

          public var _id: GraphQLID? {
            get {
              return resultMap["_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }
        }

        public struct Medium: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["outputMedia"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("image", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(image: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "outputMedia", "image": image])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var image: String? {
            get {
              return resultMap["image"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "image")
            }
          }
        }
      }
    }
  }
}

public final class GetFavoritesQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GetFavorites($id: ID!, $value: Int, $filters: homeSearchFilterInput!, $latitude: Float!, $longitude: Float!) {
      getFavorites(
        input: {id: $id, value: $value, filters: $filters, latitude: $latitude, longitude: $longitude}
      ) {
        __typename
        message
        success
        totalPlaces
        data {
          __typename
          _id
          data
          businessLocation {
            __typename
            type
            coordinates
          }
          business {
            __typename
            _id
            company_name
            favorites
            filter_tags
            hours_format {
              __typename
              Start
              End
              StartDay
              EndDay
            }
            default_image_url
          }
          taggedUsers {
            __typename
            _id
            name
          }
          taggedLists {
            __typename
            _id
            name
          }
          ownerId {
            __typename
            _id
            name
            photo
          }
          listId {
            __typename
            _id
            name
            media {
              __typename
              image
            }
          }
          title
          description
          type
          eventSchedule {
            __typename
            start_time
            end_time
          }
          user {
            __typename
            name
            photo
          }
          likes
          media
          location {
            __typename
            type
            coordinates
          }
          totalPosts {
            __typename
            totalPosts
          }
          totalComments {
            __typename
            totalCount
          }
          createdAt
        }
      }
    }
    """

  public let operationName: String = "GetFavorites"

  public var id: GraphQLID
  public var value: Int?
  public var filters: homeSearchFilterInput
  public var latitude: Double
  public var longitude: Double

  public init(id: GraphQLID, value: Int? = nil, filters: homeSearchFilterInput, latitude: Double, longitude: Double) {
    self.id = id
    self.value = value
    self.filters = filters
    self.latitude = latitude
    self.longitude = longitude
  }

  public var variables: GraphQLMap? {
    return ["id": id, "value": value, "filters": filters, "latitude": latitude, "longitude": longitude]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("getFavorites", arguments: ["input": ["id": GraphQLVariable("id"), "value": GraphQLVariable("value"), "filters": GraphQLVariable("filters"), "latitude": GraphQLVariable("latitude"), "longitude": GraphQLVariable("longitude")]], type: .nonNull(.object(GetFavorite.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(getFavorites: GetFavorite) {
      self.init(unsafeResultMap: ["__typename": "Query", "getFavorites": getFavorites.resultMap])
    }

    public var getFavorites: GetFavorite {
      get {
        return GetFavorite(unsafeResultMap: resultMap["getFavorites"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "getFavorites")
      }
    }

    public struct GetFavorite: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["homeSearchResponse"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message", type: .nonNull(.scalar(String.self))),
          GraphQLField("success", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("totalPlaces", type: .scalar(Int.self)),
          GraphQLField("data", type: .list(.object(Datum.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(message: String, success: Bool, totalPlaces: Int? = nil, data: [Datum?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "homeSearchResponse", "message": message, "success": success, "totalPlaces": totalPlaces, "data": data.flatMap { (value: [Datum?]) -> [ResultMap?] in value.map { (value: Datum?) -> ResultMap? in value.flatMap { (value: Datum) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var message: String {
        get {
          return resultMap["message"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "message")
        }
      }

      public var success: Bool {
        get {
          return resultMap["success"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "success")
        }
      }

      public var totalPlaces: Int? {
        get {
          return resultMap["totalPlaces"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "totalPlaces")
        }
      }

      public var data: [Datum?]? {
        get {
          return (resultMap["data"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Datum?] in value.map { (value: ResultMap?) -> Datum? in value.flatMap { (value: ResultMap) -> Datum in Datum(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Datum?]) -> [ResultMap?] in value.map { (value: Datum?) -> ResultMap? in value.flatMap { (value: Datum) -> ResultMap in value.resultMap } } }, forKey: "data")
        }
      }

      public struct Datum: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["combineAllData"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("_id", type: .scalar(GraphQLID.self)),
            GraphQLField("data", type: .scalar(String.self)),
            GraphQLField("businessLocation", type: .object(BusinessLocation.selections)),
            GraphQLField("business", type: .list(.object(Business.selections))),
            GraphQLField("taggedUsers", type: .list(.object(TaggedUser.selections))),
            GraphQLField("taggedLists", type: .list(.object(TaggedList.selections))),
            GraphQLField("ownerId", type: .list(.object(OwnerId.selections))),
            GraphQLField("listId", type: .list(.object(ListId.selections))),
            GraphQLField("title", type: .scalar(String.self)),
            GraphQLField("description", type: .scalar(String.self)),
            GraphQLField("type", type: .scalar(String.self)),
            GraphQLField("eventSchedule", type: .object(EventSchedule.selections)),
            GraphQLField("user", type: .list(.object(User.selections))),
            GraphQLField("likes", type: .list(.scalar(GraphQLID.self))),
            GraphQLField("media", type: .list(.scalar(String.self))),
            GraphQLField("location", type: .object(Location.selections)),
            GraphQLField("totalPosts", type: .list(.object(TotalPost.selections))),
            GraphQLField("totalComments", type: .list(.object(TotalComment.selections))),
            GraphQLField("createdAt", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(_id: GraphQLID? = nil, data: String? = nil, businessLocation: BusinessLocation? = nil, business: [Business?]? = nil, taggedUsers: [TaggedUser?]? = nil, taggedLists: [TaggedList?]? = nil, ownerId: [OwnerId?]? = nil, listId: [ListId?]? = nil, title: String? = nil, description: String? = nil, type: String? = nil, eventSchedule: EventSchedule? = nil, user: [User?]? = nil, likes: [GraphQLID?]? = nil, media: [String?]? = nil, location: Location? = nil, totalPosts: [TotalPost?]? = nil, totalComments: [TotalComment?]? = nil, createdAt: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "combineAllData", "_id": _id, "data": data, "businessLocation": businessLocation.flatMap { (value: BusinessLocation) -> ResultMap in value.resultMap }, "business": business.flatMap { (value: [Business?]) -> [ResultMap?] in value.map { (value: Business?) -> ResultMap? in value.flatMap { (value: Business) -> ResultMap in value.resultMap } } }, "taggedUsers": taggedUsers.flatMap { (value: [TaggedUser?]) -> [ResultMap?] in value.map { (value: TaggedUser?) -> ResultMap? in value.flatMap { (value: TaggedUser) -> ResultMap in value.resultMap } } }, "taggedLists": taggedLists.flatMap { (value: [TaggedList?]) -> [ResultMap?] in value.map { (value: TaggedList?) -> ResultMap? in value.flatMap { (value: TaggedList) -> ResultMap in value.resultMap } } }, "ownerId": ownerId.flatMap { (value: [OwnerId?]) -> [ResultMap?] in value.map { (value: OwnerId?) -> ResultMap? in value.flatMap { (value: OwnerId) -> ResultMap in value.resultMap } } }, "listId": listId.flatMap { (value: [ListId?]) -> [ResultMap?] in value.map { (value: ListId?) -> ResultMap? in value.flatMap { (value: ListId) -> ResultMap in value.resultMap } } }, "title": title, "description": description, "type": type, "eventSchedule": eventSchedule.flatMap { (value: EventSchedule) -> ResultMap in value.resultMap }, "user": user.flatMap { (value: [User?]) -> [ResultMap?] in value.map { (value: User?) -> ResultMap? in value.flatMap { (value: User) -> ResultMap in value.resultMap } } }, "likes": likes, "media": media, "location": location.flatMap { (value: Location) -> ResultMap in value.resultMap }, "totalPosts": totalPosts.flatMap { (value: [TotalPost?]) -> [ResultMap?] in value.map { (value: TotalPost?) -> ResultMap? in value.flatMap { (value: TotalPost) -> ResultMap in value.resultMap } } }, "totalComments": totalComments.flatMap { (value: [TotalComment?]) -> [ResultMap?] in value.map { (value: TotalComment?) -> ResultMap? in value.flatMap { (value: TotalComment) -> ResultMap in value.resultMap } } }, "createdAt": createdAt])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var _id: GraphQLID? {
          get {
            return resultMap["_id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "_id")
          }
        }

        public var data: String? {
          get {
            return resultMap["data"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "data")
          }
        }

        public var businessLocation: BusinessLocation? {
          get {
            return (resultMap["businessLocation"] as? ResultMap).flatMap { BusinessLocation(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "businessLocation")
          }
        }

        public var business: [Business?]? {
          get {
            return (resultMap["business"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Business?] in value.map { (value: ResultMap?) -> Business? in value.flatMap { (value: ResultMap) -> Business in Business(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [Business?]) -> [ResultMap?] in value.map { (value: Business?) -> ResultMap? in value.flatMap { (value: Business) -> ResultMap in value.resultMap } } }, forKey: "business")
          }
        }

        public var taggedUsers: [TaggedUser?]? {
          get {
            return (resultMap["taggedUsers"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [TaggedUser?] in value.map { (value: ResultMap?) -> TaggedUser? in value.flatMap { (value: ResultMap) -> TaggedUser in TaggedUser(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [TaggedUser?]) -> [ResultMap?] in value.map { (value: TaggedUser?) -> ResultMap? in value.flatMap { (value: TaggedUser) -> ResultMap in value.resultMap } } }, forKey: "taggedUsers")
          }
        }

        public var taggedLists: [TaggedList?]? {
          get {
            return (resultMap["taggedLists"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [TaggedList?] in value.map { (value: ResultMap?) -> TaggedList? in value.flatMap { (value: ResultMap) -> TaggedList in TaggedList(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [TaggedList?]) -> [ResultMap?] in value.map { (value: TaggedList?) -> ResultMap? in value.flatMap { (value: TaggedList) -> ResultMap in value.resultMap } } }, forKey: "taggedLists")
          }
        }

        public var ownerId: [OwnerId?]? {
          get {
            return (resultMap["ownerId"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [OwnerId?] in value.map { (value: ResultMap?) -> OwnerId? in value.flatMap { (value: ResultMap) -> OwnerId in OwnerId(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [OwnerId?]) -> [ResultMap?] in value.map { (value: OwnerId?) -> ResultMap? in value.flatMap { (value: OwnerId) -> ResultMap in value.resultMap } } }, forKey: "ownerId")
          }
        }

        public var listId: [ListId?]? {
          get {
            return (resultMap["listId"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [ListId?] in value.map { (value: ResultMap?) -> ListId? in value.flatMap { (value: ResultMap) -> ListId in ListId(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [ListId?]) -> [ResultMap?] in value.map { (value: ListId?) -> ResultMap? in value.flatMap { (value: ListId) -> ResultMap in value.resultMap } } }, forKey: "listId")
          }
        }

        public var title: String? {
          get {
            return resultMap["title"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "title")
          }
        }

        public var description: String? {
          get {
            return resultMap["description"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "description")
          }
        }

        public var type: String? {
          get {
            return resultMap["type"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "type")
          }
        }

        public var eventSchedule: EventSchedule? {
          get {
            return (resultMap["eventSchedule"] as? ResultMap).flatMap { EventSchedule(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "eventSchedule")
          }
        }

        public var user: [User?]? {
          get {
            return (resultMap["user"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [User?] in value.map { (value: ResultMap?) -> User? in value.flatMap { (value: ResultMap) -> User in User(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [User?]) -> [ResultMap?] in value.map { (value: User?) -> ResultMap? in value.flatMap { (value: User) -> ResultMap in value.resultMap } } }, forKey: "user")
          }
        }

        public var likes: [GraphQLID?]? {
          get {
            return resultMap["likes"] as? [GraphQLID?]
          }
          set {
            resultMap.updateValue(newValue, forKey: "likes")
          }
        }

        public var media: [String?]? {
          get {
            return resultMap["media"] as? [String?]
          }
          set {
            resultMap.updateValue(newValue, forKey: "media")
          }
        }

        public var location: Location? {
          get {
            return (resultMap["location"] as? ResultMap).flatMap { Location(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "location")
          }
        }

        public var totalPosts: [TotalPost?]? {
          get {
            return (resultMap["totalPosts"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [TotalPost?] in value.map { (value: ResultMap?) -> TotalPost? in value.flatMap { (value: ResultMap) -> TotalPost in TotalPost(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [TotalPost?]) -> [ResultMap?] in value.map { (value: TotalPost?) -> ResultMap? in value.flatMap { (value: TotalPost) -> ResultMap in value.resultMap } } }, forKey: "totalPosts")
          }
        }

        public var totalComments: [TotalComment?]? {
          get {
            return (resultMap["totalComments"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [TotalComment?] in value.map { (value: ResultMap?) -> TotalComment? in value.flatMap { (value: ResultMap) -> TotalComment in TotalComment(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [TotalComment?]) -> [ResultMap?] in value.map { (value: TotalComment?) -> ResultMap? in value.flatMap { (value: TotalComment) -> ResultMap in value.resultMap } } }, forKey: "totalComments")
          }
        }

        public var createdAt: String? {
          get {
            return resultMap["createdAt"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "createdAt")
          }
        }

        public struct BusinessLocation: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["locationRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("type", type: .scalar(String.self)),
              GraphQLField("coordinates", type: .list(.scalar(Double.self))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(type: String? = nil, coordinates: [Double?]? = nil) {
            self.init(unsafeResultMap: ["__typename": "locationRef", "type": type, "coordinates": coordinates])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var type: String? {
            get {
              return resultMap["type"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "type")
            }
          }

          public var coordinates: [Double?]? {
            get {
              return resultMap["coordinates"] as? [Double?]
            }
            set {
              resultMap.updateValue(newValue, forKey: "coordinates")
            }
          }
        }

        public struct Business: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["businessRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("_id", type: .scalar(GraphQLID.self)),
              GraphQLField("company_name", type: .scalar(String.self)),
              GraphQLField("favorites", type: .list(.scalar(GraphQLID.self))),
              GraphQLField("filter_tags", type: .list(.scalar(String.self))),
              GraphQLField("hours_format", type: .list(.object(HoursFormat.selections))),
              GraphQLField("default_image_url", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(_id: GraphQLID? = nil, companyName: String? = nil, favorites: [GraphQLID?]? = nil, filterTags: [String?]? = nil, hoursFormat: [HoursFormat?]? = nil, defaultImageUrl: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "businessRef", "_id": _id, "company_name": companyName, "favorites": favorites, "filter_tags": filterTags, "hours_format": hoursFormat.flatMap { (value: [HoursFormat?]) -> [ResultMap?] in value.map { (value: HoursFormat?) -> ResultMap? in value.flatMap { (value: HoursFormat) -> ResultMap in value.resultMap } } }, "default_image_url": defaultImageUrl])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var _id: GraphQLID? {
            get {
              return resultMap["_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }

          public var companyName: String? {
            get {
              return resultMap["company_name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "company_name")
            }
          }

          public var favorites: [GraphQLID?]? {
            get {
              return resultMap["favorites"] as? [GraphQLID?]
            }
            set {
              resultMap.updateValue(newValue, forKey: "favorites")
            }
          }

          public var filterTags: [String?]? {
            get {
              return resultMap["filter_tags"] as? [String?]
            }
            set {
              resultMap.updateValue(newValue, forKey: "filter_tags")
            }
          }

          public var hoursFormat: [HoursFormat?]? {
            get {
              return (resultMap["hours_format"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [HoursFormat?] in value.map { (value: ResultMap?) -> HoursFormat? in value.flatMap { (value: ResultMap) -> HoursFormat in HoursFormat(unsafeResultMap: value) } } }
            }
            set {
              resultMap.updateValue(newValue.flatMap { (value: [HoursFormat?]) -> [ResultMap?] in value.map { (value: HoursFormat?) -> ResultMap? in value.flatMap { (value: HoursFormat) -> ResultMap in value.resultMap } } }, forKey: "hours_format")
            }
          }

          public var defaultImageUrl: String? {
            get {
              return resultMap["default_image_url"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "default_image_url")
            }
          }

          public struct HoursFormat: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["hoursFormatRef"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("Start", type: .scalar(String.self)),
                GraphQLField("End", type: .scalar(String.self)),
                GraphQLField("StartDay", type: .scalar(String.self)),
                GraphQLField("EndDay", type: .scalar(String.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(start: String? = nil, end: String? = nil, startDay: String? = nil, endDay: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "hoursFormatRef", "Start": start, "End": end, "StartDay": startDay, "EndDay": endDay])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var start: String? {
              get {
                return resultMap["Start"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "Start")
              }
            }

            public var end: String? {
              get {
                return resultMap["End"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "End")
              }
            }

            public var startDay: String? {
              get {
                return resultMap["StartDay"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "StartDay")
              }
            }

            public var endDay: String? {
              get {
                return resultMap["EndDay"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "EndDay")
              }
            }
          }
        }

        public struct TaggedUser: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["userDataRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("_id", type: .scalar(GraphQLID.self)),
              GraphQLField("name", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(_id: GraphQLID? = nil, name: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "userDataRef", "_id": _id, "name": name])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var _id: GraphQLID? {
            get {
              return resultMap["_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }
        }

        public struct TaggedList: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["listRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("_id", type: .scalar(GraphQLID.self)),
              GraphQLField("name", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(_id: GraphQLID? = nil, name: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "listRef", "_id": _id, "name": name])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var _id: GraphQLID? {
            get {
              return resultMap["_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }
        }

        public struct OwnerId: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["userProfileRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("_id", type: .scalar(GraphQLID.self)),
              GraphQLField("name", type: .scalar(String.self)),
              GraphQLField("photo", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(_id: GraphQLID? = nil, name: String? = nil, photo: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "userProfileRef", "_id": _id, "name": name, "photo": photo])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var _id: GraphQLID? {
            get {
              return resultMap["_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }

          public var photo: String? {
            get {
              return resultMap["photo"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "photo")
            }
          }
        }

        public struct ListId: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["listRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("_id", type: .scalar(GraphQLID.self)),
              GraphQLField("name", type: .scalar(String.self)),
              GraphQLField("media", type: .list(.object(Medium.selections))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(_id: GraphQLID? = nil, name: String? = nil, media: [Medium?]? = nil) {
            self.init(unsafeResultMap: ["__typename": "listRef", "_id": _id, "name": name, "media": media.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var _id: GraphQLID? {
            get {
              return resultMap["_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }

          public var media: [Medium?]? {
            get {
              return (resultMap["media"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Medium?] in value.map { (value: ResultMap?) -> Medium? in value.flatMap { (value: ResultMap) -> Medium in Medium(unsafeResultMap: value) } } }
            }
            set {
              resultMap.updateValue(newValue.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }, forKey: "media")
            }
          }

          public struct Medium: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["outputMedia"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("image", type: .scalar(String.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(image: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "outputMedia", "image": image])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var image: String? {
              get {
                return resultMap["image"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "image")
              }
            }
          }
        }

        public struct EventSchedule: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["eventScheduleRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("start_time", type: .scalar(String.self)),
              GraphQLField("end_time", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(startTime: String? = nil, endTime: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "eventScheduleRef", "start_time": startTime, "end_time": endTime])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var startTime: String? {
            get {
              return resultMap["start_time"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "start_time")
            }
          }

          public var endTime: String? {
            get {
              return resultMap["end_time"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "end_time")
            }
          }
        }

        public struct User: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["userProfileRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("name", type: .scalar(String.self)),
              GraphQLField("photo", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(name: String? = nil, photo: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "userProfileRef", "name": name, "photo": photo])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }

          public var photo: String? {
            get {
              return resultMap["photo"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "photo")
            }
          }
        }

        public struct Location: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["locationRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("type", type: .scalar(String.self)),
              GraphQLField("coordinates", type: .list(.scalar(Double.self))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(type: String? = nil, coordinates: [Double?]? = nil) {
            self.init(unsafeResultMap: ["__typename": "locationRef", "type": type, "coordinates": coordinates])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var type: String? {
            get {
              return resultMap["type"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "type")
            }
          }

          public var coordinates: [Double?]? {
            get {
              return resultMap["coordinates"] as? [Double?]
            }
            set {
              resultMap.updateValue(newValue, forKey: "coordinates")
            }
          }
        }

        public struct TotalPost: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["totalPostsRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("totalPosts", type: .scalar(Int.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(totalPosts: Int? = nil) {
            self.init(unsafeResultMap: ["__typename": "totalPostsRef", "totalPosts": totalPosts])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var totalPosts: Int? {
            get {
              return resultMap["totalPosts"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "totalPosts")
            }
          }
        }

        public struct TotalComment: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["homeSearchTotalCommentsRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("totalCount", type: .scalar(Int.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(totalCount: Int? = nil) {
            self.init(unsafeResultMap: ["__typename": "homeSearchTotalCommentsRef", "totalCount": totalCount])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var totalCount: Int? {
            get {
              return resultMap["totalCount"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "totalCount")
            }
          }
        }
      }
    }
  }
}

public final class GetMyFeedDataQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GetMyFeedData($id: ID!, $value: Int, $filters: homeSearchFilterInput!, $longitude: Float!, $latitude: Float!, $search: String) {
      getMyFeedData(
        input: {id: $id, value: $value, filters: $filters, longitude: $longitude, latitude: $latitude, search: $search}
      ) {
        __typename
        message
        success
        totalPlaces
        data {
          __typename
          _id
          data
          businessLocation {
            __typename
            type
            coordinates
          }
          business {
            __typename
            _id
            company_name
            favorites
            filter_tags
            hours_format {
              __typename
              Start
              End
              StartDay
              EndDay
            }
            default_image_url
          }
          taggedUsers {
            __typename
            _id
            name
          }
          taggedLists {
            __typename
            _id
            name
          }
          ownerId {
            __typename
            _id
            name
            photo
          }
          listId {
            __typename
            _id
            name
            media {
              __typename
              image
            }
          }
          title
          description
          type
          eventSchedule {
            __typename
            start_time
            end_time
          }
          recurring
          user {
            __typename
            name
            photo
          }
          likes
          media
          location {
            __typename
            type
            coordinates
          }
          totalPosts {
            __typename
            totalPosts
          }
          totalComments {
            __typename
            totalCount
          }
          createdAt
        }
      }
    }
    """

  public let operationName: String = "GetMyFeedData"

  public var id: GraphQLID
  public var value: Int?
  public var filters: homeSearchFilterInput
  public var longitude: Double
  public var latitude: Double
  public var search: String?

  public init(id: GraphQLID, value: Int? = nil, filters: homeSearchFilterInput, longitude: Double, latitude: Double, search: String? = nil) {
    self.id = id
    self.value = value
    self.filters = filters
    self.longitude = longitude
    self.latitude = latitude
    self.search = search
  }

  public var variables: GraphQLMap? {
    return ["id": id, "value": value, "filters": filters, "longitude": longitude, "latitude": latitude, "search": search]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("getMyFeedData", arguments: ["input": ["id": GraphQLVariable("id"), "value": GraphQLVariable("value"), "filters": GraphQLVariable("filters"), "longitude": GraphQLVariable("longitude"), "latitude": GraphQLVariable("latitude"), "search": GraphQLVariable("search")]], type: .nonNull(.object(GetMyFeedDatum.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(getMyFeedData: GetMyFeedDatum) {
      self.init(unsafeResultMap: ["__typename": "Query", "getMyFeedData": getMyFeedData.resultMap])
    }

    public var getMyFeedData: GetMyFeedDatum {
      get {
        return GetMyFeedDatum(unsafeResultMap: resultMap["getMyFeedData"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "getMyFeedData")
      }
    }

    public struct GetMyFeedDatum: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["homeSearchResponse"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message", type: .nonNull(.scalar(String.self))),
          GraphQLField("success", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("totalPlaces", type: .scalar(Int.self)),
          GraphQLField("data", type: .list(.object(Datum.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(message: String, success: Bool, totalPlaces: Int? = nil, data: [Datum?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "homeSearchResponse", "message": message, "success": success, "totalPlaces": totalPlaces, "data": data.flatMap { (value: [Datum?]) -> [ResultMap?] in value.map { (value: Datum?) -> ResultMap? in value.flatMap { (value: Datum) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var message: String {
        get {
          return resultMap["message"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "message")
        }
      }

      public var success: Bool {
        get {
          return resultMap["success"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "success")
        }
      }

      public var totalPlaces: Int? {
        get {
          return resultMap["totalPlaces"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "totalPlaces")
        }
      }

      public var data: [Datum?]? {
        get {
          return (resultMap["data"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Datum?] in value.map { (value: ResultMap?) -> Datum? in value.flatMap { (value: ResultMap) -> Datum in Datum(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Datum?]) -> [ResultMap?] in value.map { (value: Datum?) -> ResultMap? in value.flatMap { (value: Datum) -> ResultMap in value.resultMap } } }, forKey: "data")
        }
      }

      public struct Datum: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["combineAllData"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("_id", type: .scalar(GraphQLID.self)),
            GraphQLField("data", type: .scalar(String.self)),
            GraphQLField("businessLocation", type: .object(BusinessLocation.selections)),
            GraphQLField("business", type: .list(.object(Business.selections))),
            GraphQLField("taggedUsers", type: .list(.object(TaggedUser.selections))),
            GraphQLField("taggedLists", type: .list(.object(TaggedList.selections))),
            GraphQLField("ownerId", type: .list(.object(OwnerId.selections))),
            GraphQLField("listId", type: .list(.object(ListId.selections))),
            GraphQLField("title", type: .scalar(String.self)),
            GraphQLField("description", type: .scalar(String.self)),
            GraphQLField("type", type: .scalar(String.self)),
            GraphQLField("eventSchedule", type: .object(EventSchedule.selections)),
            GraphQLField("recurring", type: .list(.scalar(Int.self))),
            GraphQLField("user", type: .list(.object(User.selections))),
            GraphQLField("likes", type: .list(.scalar(GraphQLID.self))),
            GraphQLField("media", type: .list(.scalar(String.self))),
            GraphQLField("location", type: .object(Location.selections)),
            GraphQLField("totalPosts", type: .list(.object(TotalPost.selections))),
            GraphQLField("totalComments", type: .list(.object(TotalComment.selections))),
            GraphQLField("createdAt", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(_id: GraphQLID? = nil, data: String? = nil, businessLocation: BusinessLocation? = nil, business: [Business?]? = nil, taggedUsers: [TaggedUser?]? = nil, taggedLists: [TaggedList?]? = nil, ownerId: [OwnerId?]? = nil, listId: [ListId?]? = nil, title: String? = nil, description: String? = nil, type: String? = nil, eventSchedule: EventSchedule? = nil, recurring: [Int?]? = nil, user: [User?]? = nil, likes: [GraphQLID?]? = nil, media: [String?]? = nil, location: Location? = nil, totalPosts: [TotalPost?]? = nil, totalComments: [TotalComment?]? = nil, createdAt: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "combineAllData", "_id": _id, "data": data, "businessLocation": businessLocation.flatMap { (value: BusinessLocation) -> ResultMap in value.resultMap }, "business": business.flatMap { (value: [Business?]) -> [ResultMap?] in value.map { (value: Business?) -> ResultMap? in value.flatMap { (value: Business) -> ResultMap in value.resultMap } } }, "taggedUsers": taggedUsers.flatMap { (value: [TaggedUser?]) -> [ResultMap?] in value.map { (value: TaggedUser?) -> ResultMap? in value.flatMap { (value: TaggedUser) -> ResultMap in value.resultMap } } }, "taggedLists": taggedLists.flatMap { (value: [TaggedList?]) -> [ResultMap?] in value.map { (value: TaggedList?) -> ResultMap? in value.flatMap { (value: TaggedList) -> ResultMap in value.resultMap } } }, "ownerId": ownerId.flatMap { (value: [OwnerId?]) -> [ResultMap?] in value.map { (value: OwnerId?) -> ResultMap? in value.flatMap { (value: OwnerId) -> ResultMap in value.resultMap } } }, "listId": listId.flatMap { (value: [ListId?]) -> [ResultMap?] in value.map { (value: ListId?) -> ResultMap? in value.flatMap { (value: ListId) -> ResultMap in value.resultMap } } }, "title": title, "description": description, "type": type, "eventSchedule": eventSchedule.flatMap { (value: EventSchedule) -> ResultMap in value.resultMap }, "recurring": recurring, "user": user.flatMap { (value: [User?]) -> [ResultMap?] in value.map { (value: User?) -> ResultMap? in value.flatMap { (value: User) -> ResultMap in value.resultMap } } }, "likes": likes, "media": media, "location": location.flatMap { (value: Location) -> ResultMap in value.resultMap }, "totalPosts": totalPosts.flatMap { (value: [TotalPost?]) -> [ResultMap?] in value.map { (value: TotalPost?) -> ResultMap? in value.flatMap { (value: TotalPost) -> ResultMap in value.resultMap } } }, "totalComments": totalComments.flatMap { (value: [TotalComment?]) -> [ResultMap?] in value.map { (value: TotalComment?) -> ResultMap? in value.flatMap { (value: TotalComment) -> ResultMap in value.resultMap } } }, "createdAt": createdAt])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var _id: GraphQLID? {
          get {
            return resultMap["_id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "_id")
          }
        }

        public var data: String? {
          get {
            return resultMap["data"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "data")
          }
        }

        public var businessLocation: BusinessLocation? {
          get {
            return (resultMap["businessLocation"] as? ResultMap).flatMap { BusinessLocation(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "businessLocation")
          }
        }

        public var business: [Business?]? {
          get {
            return (resultMap["business"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Business?] in value.map { (value: ResultMap?) -> Business? in value.flatMap { (value: ResultMap) -> Business in Business(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [Business?]) -> [ResultMap?] in value.map { (value: Business?) -> ResultMap? in value.flatMap { (value: Business) -> ResultMap in value.resultMap } } }, forKey: "business")
          }
        }

        public var taggedUsers: [TaggedUser?]? {
          get {
            return (resultMap["taggedUsers"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [TaggedUser?] in value.map { (value: ResultMap?) -> TaggedUser? in value.flatMap { (value: ResultMap) -> TaggedUser in TaggedUser(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [TaggedUser?]) -> [ResultMap?] in value.map { (value: TaggedUser?) -> ResultMap? in value.flatMap { (value: TaggedUser) -> ResultMap in value.resultMap } } }, forKey: "taggedUsers")
          }
        }

        public var taggedLists: [TaggedList?]? {
          get {
            return (resultMap["taggedLists"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [TaggedList?] in value.map { (value: ResultMap?) -> TaggedList? in value.flatMap { (value: ResultMap) -> TaggedList in TaggedList(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [TaggedList?]) -> [ResultMap?] in value.map { (value: TaggedList?) -> ResultMap? in value.flatMap { (value: TaggedList) -> ResultMap in value.resultMap } } }, forKey: "taggedLists")
          }
        }

        public var ownerId: [OwnerId?]? {
          get {
            return (resultMap["ownerId"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [OwnerId?] in value.map { (value: ResultMap?) -> OwnerId? in value.flatMap { (value: ResultMap) -> OwnerId in OwnerId(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [OwnerId?]) -> [ResultMap?] in value.map { (value: OwnerId?) -> ResultMap? in value.flatMap { (value: OwnerId) -> ResultMap in value.resultMap } } }, forKey: "ownerId")
          }
        }

        public var listId: [ListId?]? {
          get {
            return (resultMap["listId"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [ListId?] in value.map { (value: ResultMap?) -> ListId? in value.flatMap { (value: ResultMap) -> ListId in ListId(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [ListId?]) -> [ResultMap?] in value.map { (value: ListId?) -> ResultMap? in value.flatMap { (value: ListId) -> ResultMap in value.resultMap } } }, forKey: "listId")
          }
        }

        public var title: String? {
          get {
            return resultMap["title"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "title")
          }
        }

        public var description: String? {
          get {
            return resultMap["description"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "description")
          }
        }

        public var type: String? {
          get {
            return resultMap["type"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "type")
          }
        }

        public var eventSchedule: EventSchedule? {
          get {
            return (resultMap["eventSchedule"] as? ResultMap).flatMap { EventSchedule(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "eventSchedule")
          }
        }

        public var recurring: [Int?]? {
          get {
            return resultMap["recurring"] as? [Int?]
          }
          set {
            resultMap.updateValue(newValue, forKey: "recurring")
          }
        }

        public var user: [User?]? {
          get {
            return (resultMap["user"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [User?] in value.map { (value: ResultMap?) -> User? in value.flatMap { (value: ResultMap) -> User in User(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [User?]) -> [ResultMap?] in value.map { (value: User?) -> ResultMap? in value.flatMap { (value: User) -> ResultMap in value.resultMap } } }, forKey: "user")
          }
        }

        public var likes: [GraphQLID?]? {
          get {
            return resultMap["likes"] as? [GraphQLID?]
          }
          set {
            resultMap.updateValue(newValue, forKey: "likes")
          }
        }

        public var media: [String?]? {
          get {
            return resultMap["media"] as? [String?]
          }
          set {
            resultMap.updateValue(newValue, forKey: "media")
          }
        }

        public var location: Location? {
          get {
            return (resultMap["location"] as? ResultMap).flatMap { Location(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "location")
          }
        }

        public var totalPosts: [TotalPost?]? {
          get {
            return (resultMap["totalPosts"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [TotalPost?] in value.map { (value: ResultMap?) -> TotalPost? in value.flatMap { (value: ResultMap) -> TotalPost in TotalPost(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [TotalPost?]) -> [ResultMap?] in value.map { (value: TotalPost?) -> ResultMap? in value.flatMap { (value: TotalPost) -> ResultMap in value.resultMap } } }, forKey: "totalPosts")
          }
        }

        public var totalComments: [TotalComment?]? {
          get {
            return (resultMap["totalComments"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [TotalComment?] in value.map { (value: ResultMap?) -> TotalComment? in value.flatMap { (value: ResultMap) -> TotalComment in TotalComment(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [TotalComment?]) -> [ResultMap?] in value.map { (value: TotalComment?) -> ResultMap? in value.flatMap { (value: TotalComment) -> ResultMap in value.resultMap } } }, forKey: "totalComments")
          }
        }

        public var createdAt: String? {
          get {
            return resultMap["createdAt"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "createdAt")
          }
        }

        public struct BusinessLocation: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["locationRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("type", type: .scalar(String.self)),
              GraphQLField("coordinates", type: .list(.scalar(Double.self))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(type: String? = nil, coordinates: [Double?]? = nil) {
            self.init(unsafeResultMap: ["__typename": "locationRef", "type": type, "coordinates": coordinates])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var type: String? {
            get {
              return resultMap["type"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "type")
            }
          }

          public var coordinates: [Double?]? {
            get {
              return resultMap["coordinates"] as? [Double?]
            }
            set {
              resultMap.updateValue(newValue, forKey: "coordinates")
            }
          }
        }

        public struct Business: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["businessRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("_id", type: .scalar(GraphQLID.self)),
              GraphQLField("company_name", type: .scalar(String.self)),
              GraphQLField("favorites", type: .list(.scalar(GraphQLID.self))),
              GraphQLField("filter_tags", type: .list(.scalar(String.self))),
              GraphQLField("hours_format", type: .list(.object(HoursFormat.selections))),
              GraphQLField("default_image_url", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(_id: GraphQLID? = nil, companyName: String? = nil, favorites: [GraphQLID?]? = nil, filterTags: [String?]? = nil, hoursFormat: [HoursFormat?]? = nil, defaultImageUrl: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "businessRef", "_id": _id, "company_name": companyName, "favorites": favorites, "filter_tags": filterTags, "hours_format": hoursFormat.flatMap { (value: [HoursFormat?]) -> [ResultMap?] in value.map { (value: HoursFormat?) -> ResultMap? in value.flatMap { (value: HoursFormat) -> ResultMap in value.resultMap } } }, "default_image_url": defaultImageUrl])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var _id: GraphQLID? {
            get {
              return resultMap["_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }

          public var companyName: String? {
            get {
              return resultMap["company_name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "company_name")
            }
          }

          public var favorites: [GraphQLID?]? {
            get {
              return resultMap["favorites"] as? [GraphQLID?]
            }
            set {
              resultMap.updateValue(newValue, forKey: "favorites")
            }
          }

          public var filterTags: [String?]? {
            get {
              return resultMap["filter_tags"] as? [String?]
            }
            set {
              resultMap.updateValue(newValue, forKey: "filter_tags")
            }
          }

          public var hoursFormat: [HoursFormat?]? {
            get {
              return (resultMap["hours_format"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [HoursFormat?] in value.map { (value: ResultMap?) -> HoursFormat? in value.flatMap { (value: ResultMap) -> HoursFormat in HoursFormat(unsafeResultMap: value) } } }
            }
            set {
              resultMap.updateValue(newValue.flatMap { (value: [HoursFormat?]) -> [ResultMap?] in value.map { (value: HoursFormat?) -> ResultMap? in value.flatMap { (value: HoursFormat) -> ResultMap in value.resultMap } } }, forKey: "hours_format")
            }
          }

          public var defaultImageUrl: String? {
            get {
              return resultMap["default_image_url"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "default_image_url")
            }
          }

          public struct HoursFormat: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["hoursFormatRef"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("Start", type: .scalar(String.self)),
                GraphQLField("End", type: .scalar(String.self)),
                GraphQLField("StartDay", type: .scalar(String.self)),
                GraphQLField("EndDay", type: .scalar(String.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(start: String? = nil, end: String? = nil, startDay: String? = nil, endDay: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "hoursFormatRef", "Start": start, "End": end, "StartDay": startDay, "EndDay": endDay])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var start: String? {
              get {
                return resultMap["Start"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "Start")
              }
            }

            public var end: String? {
              get {
                return resultMap["End"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "End")
              }
            }

            public var startDay: String? {
              get {
                return resultMap["StartDay"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "StartDay")
              }
            }

            public var endDay: String? {
              get {
                return resultMap["EndDay"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "EndDay")
              }
            }
          }
        }

        public struct TaggedUser: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["userDataRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("_id", type: .scalar(GraphQLID.self)),
              GraphQLField("name", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(_id: GraphQLID? = nil, name: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "userDataRef", "_id": _id, "name": name])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var _id: GraphQLID? {
            get {
              return resultMap["_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }
        }

        public struct TaggedList: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["listRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("_id", type: .scalar(GraphQLID.self)),
              GraphQLField("name", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(_id: GraphQLID? = nil, name: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "listRef", "_id": _id, "name": name])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var _id: GraphQLID? {
            get {
              return resultMap["_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }
        }

        public struct OwnerId: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["userProfileRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("_id", type: .scalar(GraphQLID.self)),
              GraphQLField("name", type: .scalar(String.self)),
              GraphQLField("photo", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(_id: GraphQLID? = nil, name: String? = nil, photo: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "userProfileRef", "_id": _id, "name": name, "photo": photo])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var _id: GraphQLID? {
            get {
              return resultMap["_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }

          public var photo: String? {
            get {
              return resultMap["photo"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "photo")
            }
          }
        }

        public struct ListId: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["listRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("_id", type: .scalar(GraphQLID.self)),
              GraphQLField("name", type: .scalar(String.self)),
              GraphQLField("media", type: .list(.object(Medium.selections))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(_id: GraphQLID? = nil, name: String? = nil, media: [Medium?]? = nil) {
            self.init(unsafeResultMap: ["__typename": "listRef", "_id": _id, "name": name, "media": media.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var _id: GraphQLID? {
            get {
              return resultMap["_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }

          public var media: [Medium?]? {
            get {
              return (resultMap["media"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Medium?] in value.map { (value: ResultMap?) -> Medium? in value.flatMap { (value: ResultMap) -> Medium in Medium(unsafeResultMap: value) } } }
            }
            set {
              resultMap.updateValue(newValue.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }, forKey: "media")
            }
          }

          public struct Medium: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["outputMedia"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("image", type: .scalar(String.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(image: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "outputMedia", "image": image])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var image: String? {
              get {
                return resultMap["image"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "image")
              }
            }
          }
        }

        public struct EventSchedule: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["eventScheduleRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("start_time", type: .scalar(String.self)),
              GraphQLField("end_time", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(startTime: String? = nil, endTime: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "eventScheduleRef", "start_time": startTime, "end_time": endTime])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var startTime: String? {
            get {
              return resultMap["start_time"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "start_time")
            }
          }

          public var endTime: String? {
            get {
              return resultMap["end_time"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "end_time")
            }
          }
        }

        public struct User: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["userProfileRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("name", type: .scalar(String.self)),
              GraphQLField("photo", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(name: String? = nil, photo: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "userProfileRef", "name": name, "photo": photo])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }

          public var photo: String? {
            get {
              return resultMap["photo"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "photo")
            }
          }
        }

        public struct Location: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["locationRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("type", type: .scalar(String.self)),
              GraphQLField("coordinates", type: .list(.scalar(Double.self))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(type: String? = nil, coordinates: [Double?]? = nil) {
            self.init(unsafeResultMap: ["__typename": "locationRef", "type": type, "coordinates": coordinates])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var type: String? {
            get {
              return resultMap["type"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "type")
            }
          }

          public var coordinates: [Double?]? {
            get {
              return resultMap["coordinates"] as? [Double?]
            }
            set {
              resultMap.updateValue(newValue, forKey: "coordinates")
            }
          }
        }

        public struct TotalPost: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["totalPostsRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("totalPosts", type: .scalar(Int.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(totalPosts: Int? = nil) {
            self.init(unsafeResultMap: ["__typename": "totalPostsRef", "totalPosts": totalPosts])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var totalPosts: Int? {
            get {
              return resultMap["totalPosts"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "totalPosts")
            }
          }
        }

        public struct TotalComment: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["homeSearchTotalCommentsRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("totalCount", type: .scalar(Int.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(totalCount: Int? = nil) {
            self.init(unsafeResultMap: ["__typename": "homeSearchTotalCommentsRef", "totalCount": totalCount])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var totalCount: Int? {
            get {
              return resultMap["totalCount"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "totalCount")
            }
          }
        }
      }
    }
  }
}

public final class GetUserProfileDataQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GetUserProfileData($id: ID!) {
      getUserProfileData(input: {id: $id}) {
        __typename
        success
        message
        findTotalPostByUser
        listCreatedByUser
        user {
          __typename
          name
          photo
          listFollowed
        }
      }
    }
    """

  public let operationName: String = "GetUserProfileData"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("getUserProfileData", arguments: ["input": ["id": GraphQLVariable("id")]], type: .nonNull(.object(GetUserProfileDatum.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(getUserProfileData: GetUserProfileDatum) {
      self.init(unsafeResultMap: ["__typename": "Query", "getUserProfileData": getUserProfileData.resultMap])
    }

    public var getUserProfileData: GetUserProfileDatum {
      get {
        return GetUserProfileDatum(unsafeResultMap: resultMap["getUserProfileData"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "getUserProfileData")
      }
    }

    public struct GetUserProfileDatum: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["addUserResponse"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("success", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("message", type: .nonNull(.scalar(String.self))),
          GraphQLField("findTotalPostByUser", type: .scalar(Int.self)),
          GraphQLField("listCreatedByUser", type: .scalar(Int.self)),
          GraphQLField("user", type: .object(User.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(success: Bool, message: String, findTotalPostByUser: Int? = nil, listCreatedByUser: Int? = nil, user: User? = nil) {
        self.init(unsafeResultMap: ["__typename": "addUserResponse", "success": success, "message": message, "findTotalPostByUser": findTotalPostByUser, "listCreatedByUser": listCreatedByUser, "user": user.flatMap { (value: User) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var success: Bool {
        get {
          return resultMap["success"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "success")
        }
      }

      public var message: String {
        get {
          return resultMap["message"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "message")
        }
      }

      public var findTotalPostByUser: Int? {
        get {
          return resultMap["findTotalPostByUser"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "findTotalPostByUser")
        }
      }

      public var listCreatedByUser: Int? {
        get {
          return resultMap["listCreatedByUser"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "listCreatedByUser")
        }
      }

      public var user: User? {
        get {
          return (resultMap["user"] as? ResultMap).flatMap { User(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "user")
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["userProfileRef"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("photo", type: .scalar(String.self)),
            GraphQLField("listFollowed", type: .list(.scalar(GraphQLID.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(name: String? = nil, photo: String? = nil, listFollowed: [GraphQLID?]? = nil) {
          self.init(unsafeResultMap: ["__typename": "userProfileRef", "name": name, "photo": photo, "listFollowed": listFollowed])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var photo: String? {
          get {
            return resultMap["photo"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "photo")
          }
        }

        public var listFollowed: [GraphQLID?]? {
          get {
            return resultMap["listFollowed"] as? [GraphQLID?]
          }
          set {
            resultMap.updateValue(newValue, forKey: "listFollowed")
          }
        }
      }
    }
  }
}

public final class GetPostImagesQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GetPostImages($id: ID!) {
      getPostImages(input: {id: $id}) {
        __typename
        message
        success
        post
      }
    }
    """

  public let operationName: String = "GetPostImages"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("getPostImages", arguments: ["input": ["id": GraphQLVariable("id")]], type: .nonNull(.object(GetPostImage.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(getPostImages: GetPostImage) {
      self.init(unsafeResultMap: ["__typename": "Query", "getPostImages": getPostImages.resultMap])
    }

    public var getPostImages: GetPostImage {
      get {
        return GetPostImage(unsafeResultMap: resultMap["getPostImages"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "getPostImages")
      }
    }

    public struct GetPostImage: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["getPostImagesResponse"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message", type: .nonNull(.scalar(String.self))),
          GraphQLField("success", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("post", type: .list(.scalar(String.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(message: String, success: Bool, post: [String?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "getPostImagesResponse", "message": message, "success": success, "post": post])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var message: String {
        get {
          return resultMap["message"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "message")
        }
      }

      public var success: Bool {
        get {
          return resultMap["success"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "success")
        }
      }

      public var post: [String?]? {
        get {
          return resultMap["post"] as? [String?]
        }
        set {
          resultMap.updateValue(newValue, forKey: "post")
        }
      }
    }
  }
}

public final class SearchPlacesByUserIdQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query SearchPlacesByUserId($id: ID!, $value: Int, $filters: filterInput, $ownerId: ID, $sideFilters: sideFilterInput, $search: String) {
      searchPlacesByUserId(
        input: {id: $id, value: $value, filters: $filters, ownerId: $ownerId, sideFilters: $sideFilters, search: $search}
      ) {
        __typename
        message
        success
        totalPosts
        place {
          __typename
          _id
          userSub
          hours_format {
            __typename
            StartDay
            EndDay
            Start
            End
          }
          favorites
          additional_media
          filter_tags
          company_name
          location {
            __typename
            type
            coordinates
          }
          address
          telephone
          handles {
            __typename
            twitter
            facebook
            instagram
            linkedin
          }
          default_image_url
        }
        posts {
          __typename
          postId
          totalLikes
          totalComments
          postDetails {
            __typename
            _id
            data
            title
            eventSchedule {
              __typename
              start_time
              end_time
            }
            businessLocation {
              __typename
              type
              coordinates
            }
            list {
              __typename
              _id
              name
              image
            }
            taggedUsers {
              __typename
              list_ids
              _id
              name
              blurb
              photo
              createdAt
              updatedAt
            }
            taggedLists {
              __typename
              _id
              name
              description
              items
              type
              photo
              account_id
              createdAt
            }
            ownerId {
              __typename
              _id
              name
              email
              photo
            }
            likes {
              __typename
              name
              _id
            }
            recurring
            media
            location {
              __typename
              type
              coordinates
            }
            createdAt
            updatedAt
          }
          comments {
            __typename
            userId {
              __typename
              _id
              name
            }
            body
            replies {
              __typename
              userId {
                __typename
                _id
                name
              }
              body
              created_on
            }
            createdAt
            updatedAt
          }
        }
      }
    }
    """

  public let operationName: String = "SearchPlacesByUserId"

  public var id: GraphQLID
  public var value: Int?
  public var filters: filterInput?
  public var ownerId: GraphQLID?
  public var sideFilters: sideFilterInput?
  public var search: String?

  public init(id: GraphQLID, value: Int? = nil, filters: filterInput? = nil, ownerId: GraphQLID? = nil, sideFilters: sideFilterInput? = nil, search: String? = nil) {
    self.id = id
    self.value = value
    self.filters = filters
    self.ownerId = ownerId
    self.sideFilters = sideFilters
    self.search = search
  }

  public var variables: GraphQLMap? {
    return ["id": id, "value": value, "filters": filters, "ownerId": ownerId, "sideFilters": sideFilters, "search": search]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("searchPlacesByUserId", arguments: ["input": ["id": GraphQLVariable("id"), "value": GraphQLVariable("value"), "filters": GraphQLVariable("filters"), "ownerId": GraphQLVariable("ownerId"), "sideFilters": GraphQLVariable("sideFilters"), "search": GraphQLVariable("search")]], type: .nonNull(.object(SearchPlacesByUserId.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(searchPlacesByUserId: SearchPlacesByUserId) {
      self.init(unsafeResultMap: ["__typename": "Query", "searchPlacesByUserId": searchPlacesByUserId.resultMap])
    }

    public var searchPlacesByUserId: SearchPlacesByUserId {
      get {
        return SearchPlacesByUserId(unsafeResultMap: resultMap["searchPlacesByUserId"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "searchPlacesByUserId")
      }
    }

    public struct SearchPlacesByUserId: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["getPlaceDataResponse"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message", type: .nonNull(.scalar(String.self))),
          GraphQLField("success", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("totalPosts", type: .scalar(Int.self)),
          GraphQLField("place", type: .list(.object(Place.selections))),
          GraphQLField("posts", type: .list(.object(Post.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(message: String, success: Bool, totalPosts: Int? = nil, place: [Place?]? = nil, posts: [Post?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "getPlaceDataResponse", "message": message, "success": success, "totalPosts": totalPosts, "place": place.flatMap { (value: [Place?]) -> [ResultMap?] in value.map { (value: Place?) -> ResultMap? in value.flatMap { (value: Place) -> ResultMap in value.resultMap } } }, "posts": posts.flatMap { (value: [Post?]) -> [ResultMap?] in value.map { (value: Post?) -> ResultMap? in value.flatMap { (value: Post) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var message: String {
        get {
          return resultMap["message"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "message")
        }
      }

      public var success: Bool {
        get {
          return resultMap["success"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "success")
        }
      }

      public var totalPosts: Int? {
        get {
          return resultMap["totalPosts"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "totalPosts")
        }
      }

      public var place: [Place?]? {
        get {
          return (resultMap["place"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Place?] in value.map { (value: ResultMap?) -> Place? in value.flatMap { (value: ResultMap) -> Place in Place(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Place?]) -> [ResultMap?] in value.map { (value: Place?) -> ResultMap? in value.flatMap { (value: Place) -> ResultMap in value.resultMap } } }, forKey: "place")
        }
      }

      public var posts: [Post?]? {
        get {
          return (resultMap["posts"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Post?] in value.map { (value: ResultMap?) -> Post? in value.flatMap { (value: ResultMap) -> Post in Post(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Post?]) -> [ResultMap?] in value.map { (value: Post?) -> ResultMap? in value.flatMap { (value: Post) -> ResultMap in value.resultMap } } }, forKey: "posts")
        }
      }

      public struct Place: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["placeRef"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("_id", type: .scalar(GraphQLID.self)),
            GraphQLField("userSub", type: .scalar(String.self)),
            GraphQLField("hours_format", type: .list(.object(HoursFormat.selections))),
            GraphQLField("favorites", type: .list(.scalar(GraphQLID.self))),
            GraphQLField("additional_media", type: .list(.scalar(String.self))),
            GraphQLField("filter_tags", type: .list(.scalar(String.self))),
            GraphQLField("company_name", type: .scalar(String.self)),
            GraphQLField("location", type: .object(Location.selections)),
            GraphQLField("address", type: .scalar(String.self)),
            GraphQLField("telephone", type: .scalar(String.self)),
            GraphQLField("handles", type: .object(Handle.selections)),
            GraphQLField("default_image_url", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(_id: GraphQLID? = nil, userSub: String? = nil, hoursFormat: [HoursFormat?]? = nil, favorites: [GraphQLID?]? = nil, additionalMedia: [String?]? = nil, filterTags: [String?]? = nil, companyName: String? = nil, location: Location? = nil, address: String? = nil, telephone: String? = nil, handles: Handle? = nil, defaultImageUrl: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "placeRef", "_id": _id, "userSub": userSub, "hours_format": hoursFormat.flatMap { (value: [HoursFormat?]) -> [ResultMap?] in value.map { (value: HoursFormat?) -> ResultMap? in value.flatMap { (value: HoursFormat) -> ResultMap in value.resultMap } } }, "favorites": favorites, "additional_media": additionalMedia, "filter_tags": filterTags, "company_name": companyName, "location": location.flatMap { (value: Location) -> ResultMap in value.resultMap }, "address": address, "telephone": telephone, "handles": handles.flatMap { (value: Handle) -> ResultMap in value.resultMap }, "default_image_url": defaultImageUrl])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var _id: GraphQLID? {
          get {
            return resultMap["_id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "_id")
          }
        }

        public var userSub: String? {
          get {
            return resultMap["userSub"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "userSub")
          }
        }

        public var hoursFormat: [HoursFormat?]? {
          get {
            return (resultMap["hours_format"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [HoursFormat?] in value.map { (value: ResultMap?) -> HoursFormat? in value.flatMap { (value: ResultMap) -> HoursFormat in HoursFormat(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [HoursFormat?]) -> [ResultMap?] in value.map { (value: HoursFormat?) -> ResultMap? in value.flatMap { (value: HoursFormat) -> ResultMap in value.resultMap } } }, forKey: "hours_format")
          }
        }

        public var favorites: [GraphQLID?]? {
          get {
            return resultMap["favorites"] as? [GraphQLID?]
          }
          set {
            resultMap.updateValue(newValue, forKey: "favorites")
          }
        }

        public var additionalMedia: [String?]? {
          get {
            return resultMap["additional_media"] as? [String?]
          }
          set {
            resultMap.updateValue(newValue, forKey: "additional_media")
          }
        }

        public var filterTags: [String?]? {
          get {
            return resultMap["filter_tags"] as? [String?]
          }
          set {
            resultMap.updateValue(newValue, forKey: "filter_tags")
          }
        }

        public var companyName: String? {
          get {
            return resultMap["company_name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "company_name")
          }
        }

        public var location: Location? {
          get {
            return (resultMap["location"] as? ResultMap).flatMap { Location(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "location")
          }
        }

        public var address: String? {
          get {
            return resultMap["address"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "address")
          }
        }

        public var telephone: String? {
          get {
            return resultMap["telephone"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "telephone")
          }
        }

        public var handles: Handle? {
          get {
            return (resultMap["handles"] as? ResultMap).flatMap { Handle(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "handles")
          }
        }

        public var defaultImageUrl: String? {
          get {
            return resultMap["default_image_url"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "default_image_url")
          }
        }

        public struct HoursFormat: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["hoursFormatRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("StartDay", type: .scalar(String.self)),
              GraphQLField("EndDay", type: .scalar(String.self)),
              GraphQLField("Start", type: .scalar(String.self)),
              GraphQLField("End", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(startDay: String? = nil, endDay: String? = nil, start: String? = nil, end: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "hoursFormatRef", "StartDay": startDay, "EndDay": endDay, "Start": start, "End": end])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var startDay: String? {
            get {
              return resultMap["StartDay"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "StartDay")
            }
          }

          public var endDay: String? {
            get {
              return resultMap["EndDay"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "EndDay")
            }
          }

          public var start: String? {
            get {
              return resultMap["Start"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "Start")
            }
          }

          public var end: String? {
            get {
              return resultMap["End"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "End")
            }
          }
        }

        public struct Location: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["locationRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("type", type: .scalar(String.self)),
              GraphQLField("coordinates", type: .list(.scalar(Double.self))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(type: String? = nil, coordinates: [Double?]? = nil) {
            self.init(unsafeResultMap: ["__typename": "locationRef", "type": type, "coordinates": coordinates])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var type: String? {
            get {
              return resultMap["type"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "type")
            }
          }

          public var coordinates: [Double?]? {
            get {
              return resultMap["coordinates"] as? [Double?]
            }
            set {
              resultMap.updateValue(newValue, forKey: "coordinates")
            }
          }
        }

        public struct Handle: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["handlesRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("twitter", type: .scalar(String.self)),
              GraphQLField("facebook", type: .scalar(String.self)),
              GraphQLField("instagram", type: .scalar(String.self)),
              GraphQLField("linkedin", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(twitter: String? = nil, facebook: String? = nil, instagram: String? = nil, linkedin: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "handlesRef", "twitter": twitter, "facebook": facebook, "instagram": instagram, "linkedin": linkedin])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var twitter: String? {
            get {
              return resultMap["twitter"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "twitter")
            }
          }

          public var facebook: String? {
            get {
              return resultMap["facebook"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "facebook")
            }
          }

          public var instagram: String? {
            get {
              return resultMap["instagram"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "instagram")
            }
          }

          public var linkedin: String? {
            get {
              return resultMap["linkedin"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "linkedin")
            }
          }
        }
      }

      public struct Post: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["businessPostsRef"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("postId", type: .scalar(GraphQLID.self)),
            GraphQLField("totalLikes", type: .scalar(Int.self)),
            GraphQLField("totalComments", type: .scalar(Int.self)),
            GraphQLField("postDetails", type: .object(PostDetail.selections)),
            GraphQLField("comments", type: .list(.object(Comment.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(postId: GraphQLID? = nil, totalLikes: Int? = nil, totalComments: Int? = nil, postDetails: PostDetail? = nil, comments: [Comment?]? = nil) {
          self.init(unsafeResultMap: ["__typename": "businessPostsRef", "postId": postId, "totalLikes": totalLikes, "totalComments": totalComments, "postDetails": postDetails.flatMap { (value: PostDetail) -> ResultMap in value.resultMap }, "comments": comments.flatMap { (value: [Comment?]) -> [ResultMap?] in value.map { (value: Comment?) -> ResultMap? in value.flatMap { (value: Comment) -> ResultMap in value.resultMap } } }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var postId: GraphQLID? {
          get {
            return resultMap["postId"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "postId")
          }
        }

        public var totalLikes: Int? {
          get {
            return resultMap["totalLikes"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "totalLikes")
          }
        }

        public var totalComments: Int? {
          get {
            return resultMap["totalComments"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "totalComments")
          }
        }

        public var postDetails: PostDetail? {
          get {
            return (resultMap["postDetails"] as? ResultMap).flatMap { PostDetail(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "postDetails")
          }
        }

        public var comments: [Comment?]? {
          get {
            return (resultMap["comments"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Comment?] in value.map { (value: ResultMap?) -> Comment? in value.flatMap { (value: ResultMap) -> Comment in Comment(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [Comment?]) -> [ResultMap?] in value.map { (value: Comment?) -> ResultMap? in value.flatMap { (value: Comment) -> ResultMap in value.resultMap } } }, forKey: "comments")
          }
        }

        public struct PostDetail: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["getPostDataRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("_id", type: .scalar(GraphQLID.self)),
              GraphQLField("data", type: .scalar(String.self)),
              GraphQLField("title", type: .scalar(String.self)),
              GraphQLField("eventSchedule", type: .object(EventSchedule.selections)),
              GraphQLField("businessLocation", type: .object(BusinessLocation.selections)),
              GraphQLField("list", type: .object(List.selections)),
              GraphQLField("taggedUsers", type: .list(.object(TaggedUser.selections))),
              GraphQLField("taggedLists", type: .list(.object(TaggedList.selections))),
              GraphQLField("ownerId", type: .object(OwnerId.selections)),
              GraphQLField("likes", type: .list(.object(Like.selections))),
              GraphQLField("recurring", type: .list(.scalar(Int.self))),
              GraphQLField("media", type: .list(.scalar(String.self))),
              GraphQLField("location", type: .object(Location.selections)),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(_id: GraphQLID? = nil, data: String? = nil, title: String? = nil, eventSchedule: EventSchedule? = nil, businessLocation: BusinessLocation? = nil, list: List? = nil, taggedUsers: [TaggedUser?]? = nil, taggedLists: [TaggedList?]? = nil, ownerId: OwnerId? = nil, likes: [Like?]? = nil, recurring: [Int?]? = nil, media: [String?]? = nil, location: Location? = nil, createdAt: String? = nil, updatedAt: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "getPostDataRef", "_id": _id, "data": data, "title": title, "eventSchedule": eventSchedule.flatMap { (value: EventSchedule) -> ResultMap in value.resultMap }, "businessLocation": businessLocation.flatMap { (value: BusinessLocation) -> ResultMap in value.resultMap }, "list": list.flatMap { (value: List) -> ResultMap in value.resultMap }, "taggedUsers": taggedUsers.flatMap { (value: [TaggedUser?]) -> [ResultMap?] in value.map { (value: TaggedUser?) -> ResultMap? in value.flatMap { (value: TaggedUser) -> ResultMap in value.resultMap } } }, "taggedLists": taggedLists.flatMap { (value: [TaggedList?]) -> [ResultMap?] in value.map { (value: TaggedList?) -> ResultMap? in value.flatMap { (value: TaggedList) -> ResultMap in value.resultMap } } }, "ownerId": ownerId.flatMap { (value: OwnerId) -> ResultMap in value.resultMap }, "likes": likes.flatMap { (value: [Like?]) -> [ResultMap?] in value.map { (value: Like?) -> ResultMap? in value.flatMap { (value: Like) -> ResultMap in value.resultMap } } }, "recurring": recurring, "media": media, "location": location.flatMap { (value: Location) -> ResultMap in value.resultMap }, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var _id: GraphQLID? {
            get {
              return resultMap["_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }

          public var data: String? {
            get {
              return resultMap["data"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "data")
            }
          }

          public var title: String? {
            get {
              return resultMap["title"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "title")
            }
          }

          public var eventSchedule: EventSchedule? {
            get {
              return (resultMap["eventSchedule"] as? ResultMap).flatMap { EventSchedule(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "eventSchedule")
            }
          }

          public var businessLocation: BusinessLocation? {
            get {
              return (resultMap["businessLocation"] as? ResultMap).flatMap { BusinessLocation(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "businessLocation")
            }
          }

          public var list: List? {
            get {
              return (resultMap["list"] as? ResultMap).flatMap { List(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "list")
            }
          }

          public var taggedUsers: [TaggedUser?]? {
            get {
              return (resultMap["taggedUsers"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [TaggedUser?] in value.map { (value: ResultMap?) -> TaggedUser? in value.flatMap { (value: ResultMap) -> TaggedUser in TaggedUser(unsafeResultMap: value) } } }
            }
            set {
              resultMap.updateValue(newValue.flatMap { (value: [TaggedUser?]) -> [ResultMap?] in value.map { (value: TaggedUser?) -> ResultMap? in value.flatMap { (value: TaggedUser) -> ResultMap in value.resultMap } } }, forKey: "taggedUsers")
            }
          }

          public var taggedLists: [TaggedList?]? {
            get {
              return (resultMap["taggedLists"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [TaggedList?] in value.map { (value: ResultMap?) -> TaggedList? in value.flatMap { (value: ResultMap) -> TaggedList in TaggedList(unsafeResultMap: value) } } }
            }
            set {
              resultMap.updateValue(newValue.flatMap { (value: [TaggedList?]) -> [ResultMap?] in value.map { (value: TaggedList?) -> ResultMap? in value.flatMap { (value: TaggedList) -> ResultMap in value.resultMap } } }, forKey: "taggedLists")
            }
          }

          public var ownerId: OwnerId? {
            get {
              return (resultMap["ownerId"] as? ResultMap).flatMap { OwnerId(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "ownerId")
            }
          }

          public var likes: [Like?]? {
            get {
              return (resultMap["likes"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Like?] in value.map { (value: ResultMap?) -> Like? in value.flatMap { (value: ResultMap) -> Like in Like(unsafeResultMap: value) } } }
            }
            set {
              resultMap.updateValue(newValue.flatMap { (value: [Like?]) -> [ResultMap?] in value.map { (value: Like?) -> ResultMap? in value.flatMap { (value: Like) -> ResultMap in value.resultMap } } }, forKey: "likes")
            }
          }

          public var recurring: [Int?]? {
            get {
              return resultMap["recurring"] as? [Int?]
            }
            set {
              resultMap.updateValue(newValue, forKey: "recurring")
            }
          }

          public var media: [String?]? {
            get {
              return resultMap["media"] as? [String?]
            }
            set {
              resultMap.updateValue(newValue, forKey: "media")
            }
          }

          public var location: Location? {
            get {
              return (resultMap["location"] as? ResultMap).flatMap { Location(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "location")
            }
          }

          public var createdAt: String? {
            get {
              return resultMap["createdAt"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String? {
            get {
              return resultMap["updatedAt"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public struct EventSchedule: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["eventScheduleRef"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("start_time", type: .scalar(String.self)),
                GraphQLField("end_time", type: .scalar(String.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(startTime: String? = nil, endTime: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "eventScheduleRef", "start_time": startTime, "end_time": endTime])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var startTime: String? {
              get {
                return resultMap["start_time"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "start_time")
              }
            }

            public var endTime: String? {
              get {
                return resultMap["end_time"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "end_time")
              }
            }
          }

          public struct BusinessLocation: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["locationRef"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("type", type: .scalar(String.self)),
                GraphQLField("coordinates", type: .list(.scalar(Double.self))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(type: String? = nil, coordinates: [Double?]? = nil) {
              self.init(unsafeResultMap: ["__typename": "locationRef", "type": type, "coordinates": coordinates])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var type: String? {
              get {
                return resultMap["type"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "type")
              }
            }

            public var coordinates: [Double?]? {
              get {
                return resultMap["coordinates"] as? [Double?]
              }
              set {
                resultMap.updateValue(newValue, forKey: "coordinates")
              }
            }
          }

          public struct List: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["listRef"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("_id", type: .scalar(GraphQLID.self)),
                GraphQLField("name", type: .scalar(String.self)),
                GraphQLField("image", type: .scalar(String.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(_id: GraphQLID? = nil, name: String? = nil, image: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "listRef", "_id": _id, "name": name, "image": image])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var _id: GraphQLID? {
              get {
                return resultMap["_id"] as? GraphQLID
              }
              set {
                resultMap.updateValue(newValue, forKey: "_id")
              }
            }

            public var name: String? {
              get {
                return resultMap["name"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "name")
              }
            }

            public var image: String? {
              get {
                return resultMap["image"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "image")
              }
            }
          }

          public struct TaggedUser: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["userDataRef"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("list_ids", type: .list(.scalar(GraphQLID.self))),
                GraphQLField("_id", type: .scalar(GraphQLID.self)),
                GraphQLField("name", type: .scalar(String.self)),
                GraphQLField("blurb", type: .scalar(String.self)),
                GraphQLField("photo", type: .scalar(String.self)),
                GraphQLField("createdAt", type: .scalar(String.self)),
                GraphQLField("updatedAt", type: .scalar(String.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(listIds: [GraphQLID?]? = nil, _id: GraphQLID? = nil, name: String? = nil, blurb: String? = nil, photo: String? = nil, createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "userDataRef", "list_ids": listIds, "_id": _id, "name": name, "blurb": blurb, "photo": photo, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var listIds: [GraphQLID?]? {
              get {
                return resultMap["list_ids"] as? [GraphQLID?]
              }
              set {
                resultMap.updateValue(newValue, forKey: "list_ids")
              }
            }

            public var _id: GraphQLID? {
              get {
                return resultMap["_id"] as? GraphQLID
              }
              set {
                resultMap.updateValue(newValue, forKey: "_id")
              }
            }

            public var name: String? {
              get {
                return resultMap["name"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "name")
              }
            }

            public var blurb: String? {
              get {
                return resultMap["blurb"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "blurb")
              }
            }

            public var photo: String? {
              get {
                return resultMap["photo"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "photo")
              }
            }

            public var createdAt: String? {
              get {
                return resultMap["createdAt"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return resultMap["updatedAt"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }

          public struct TaggedList: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["listRef"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("_id", type: .scalar(GraphQLID.self)),
                GraphQLField("name", type: .scalar(String.self)),
                GraphQLField("description", type: .scalar(String.self)),
                GraphQLField("items", type: .list(.scalar(GraphQLID.self))),
                GraphQLField("type", type: .scalar(String.self)),
                GraphQLField("photo", type: .scalar(String.self)),
                GraphQLField("account_id", type: .scalar(GraphQLID.self)),
                GraphQLField("createdAt", type: .scalar(String.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(_id: GraphQLID? = nil, name: String? = nil, description: String? = nil, items: [GraphQLID?]? = nil, type: String? = nil, photo: String? = nil, accountId: GraphQLID? = nil, createdAt: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "listRef", "_id": _id, "name": name, "description": description, "items": items, "type": type, "photo": photo, "account_id": accountId, "createdAt": createdAt])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var _id: GraphQLID? {
              get {
                return resultMap["_id"] as? GraphQLID
              }
              set {
                resultMap.updateValue(newValue, forKey: "_id")
              }
            }

            public var name: String? {
              get {
                return resultMap["name"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "name")
              }
            }

            public var description: String? {
              get {
                return resultMap["description"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "description")
              }
            }

            public var items: [GraphQLID?]? {
              get {
                return resultMap["items"] as? [GraphQLID?]
              }
              set {
                resultMap.updateValue(newValue, forKey: "items")
              }
            }

            public var type: String? {
              get {
                return resultMap["type"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "type")
              }
            }

            public var photo: String? {
              get {
                return resultMap["photo"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "photo")
              }
            }

            public var accountId: GraphQLID? {
              get {
                return resultMap["account_id"] as? GraphQLID
              }
              set {
                resultMap.updateValue(newValue, forKey: "account_id")
              }
            }

            public var createdAt: String? {
              get {
                return resultMap["createdAt"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "createdAt")
              }
            }
          }

          public struct OwnerId: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["userProfileRef"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("_id", type: .scalar(GraphQLID.self)),
                GraphQLField("name", type: .scalar(String.self)),
                GraphQLField("email", type: .scalar(String.self)),
                GraphQLField("photo", type: .scalar(String.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(_id: GraphQLID? = nil, name: String? = nil, email: String? = nil, photo: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "userProfileRef", "_id": _id, "name": name, "email": email, "photo": photo])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var _id: GraphQLID? {
              get {
                return resultMap["_id"] as? GraphQLID
              }
              set {
                resultMap.updateValue(newValue, forKey: "_id")
              }
            }

            public var name: String? {
              get {
                return resultMap["name"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "name")
              }
            }

            public var email: String? {
              get {
                return resultMap["email"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "email")
              }
            }

            public var photo: String? {
              get {
                return resultMap["photo"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "photo")
              }
            }
          }

          public struct Like: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["userProfileRef"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("name", type: .scalar(String.self)),
                GraphQLField("_id", type: .scalar(GraphQLID.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(name: String? = nil, _id: GraphQLID? = nil) {
              self.init(unsafeResultMap: ["__typename": "userProfileRef", "name": name, "_id": _id])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var name: String? {
              get {
                return resultMap["name"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "name")
              }
            }

            public var _id: GraphQLID? {
              get {
                return resultMap["_id"] as? GraphQLID
              }
              set {
                resultMap.updateValue(newValue, forKey: "_id")
              }
            }
          }

          public struct Location: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["locationRef"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("type", type: .scalar(String.self)),
                GraphQLField("coordinates", type: .list(.scalar(Double.self))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(type: String? = nil, coordinates: [Double?]? = nil) {
              self.init(unsafeResultMap: ["__typename": "locationRef", "type": type, "coordinates": coordinates])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var type: String? {
              get {
                return resultMap["type"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "type")
              }
            }

            public var coordinates: [Double?]? {
              get {
                return resultMap["coordinates"] as? [Double?]
              }
              set {
                resultMap.updateValue(newValue, forKey: "coordinates")
              }
            }
          }
        }

        public struct Comment: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["commentDataRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("userId", type: .object(UserId.selections)),
              GraphQLField("body", type: .scalar(String.self)),
              GraphQLField("replies", type: .list(.object(Reply.selections))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(userId: UserId? = nil, body: String? = nil, replies: [Reply?]? = nil, createdAt: String? = nil, updatedAt: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "commentDataRef", "userId": userId.flatMap { (value: UserId) -> ResultMap in value.resultMap }, "body": body, "replies": replies.flatMap { (value: [Reply?]) -> [ResultMap?] in value.map { (value: Reply?) -> ResultMap? in value.flatMap { (value: Reply) -> ResultMap in value.resultMap } } }, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var userId: UserId? {
            get {
              return (resultMap["userId"] as? ResultMap).flatMap { UserId(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "userId")
            }
          }

          public var body: String? {
            get {
              return resultMap["body"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "body")
            }
          }

          public var replies: [Reply?]? {
            get {
              return (resultMap["replies"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Reply?] in value.map { (value: ResultMap?) -> Reply? in value.flatMap { (value: ResultMap) -> Reply in Reply(unsafeResultMap: value) } } }
            }
            set {
              resultMap.updateValue(newValue.flatMap { (value: [Reply?]) -> [ResultMap?] in value.map { (value: Reply?) -> ResultMap? in value.flatMap { (value: Reply) -> ResultMap in value.resultMap } } }, forKey: "replies")
            }
          }

          public var createdAt: String? {
            get {
              return resultMap["createdAt"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String? {
            get {
              return resultMap["updatedAt"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public struct UserId: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["userProfileRef"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("_id", type: .scalar(GraphQLID.self)),
                GraphQLField("name", type: .scalar(String.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(_id: GraphQLID? = nil, name: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "userProfileRef", "_id": _id, "name": name])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var _id: GraphQLID? {
              get {
                return resultMap["_id"] as? GraphQLID
              }
              set {
                resultMap.updateValue(newValue, forKey: "_id")
              }
            }

            public var name: String? {
              get {
                return resultMap["name"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "name")
              }
            }
          }

          public struct Reply: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["replyDataRef"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("userId", type: .object(UserId.selections)),
                GraphQLField("body", type: .scalar(String.self)),
                GraphQLField("created_on", type: .scalar(String.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(userId: UserId? = nil, body: String? = nil, createdOn: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "replyDataRef", "userId": userId.flatMap { (value: UserId) -> ResultMap in value.resultMap }, "body": body, "created_on": createdOn])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var userId: UserId? {
              get {
                return (resultMap["userId"] as? ResultMap).flatMap { UserId(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "userId")
              }
            }

            public var body: String? {
              get {
                return resultMap["body"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "body")
              }
            }

            public var createdOn: String? {
              get {
                return resultMap["created_on"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "created_on")
              }
            }

            public struct UserId: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["userProfileRef"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("_id", type: .scalar(GraphQLID.self)),
                  GraphQLField("name", type: .scalar(String.self)),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(_id: GraphQLID? = nil, name: String? = nil) {
                self.init(unsafeResultMap: ["__typename": "userProfileRef", "_id": _id, "name": name])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              public var _id: GraphQLID? {
                get {
                  return resultMap["_id"] as? GraphQLID
                }
                set {
                  resultMap.updateValue(newValue, forKey: "_id")
                }
              }

              public var name: String? {
                get {
                  return resultMap["name"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "name")
                }
              }
            }
          }
        }
      }
    }
  }
}

public final class SearchAllPlacesQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query SearchAllPlaces {
      searchAllPlaces {
        __typename
        message
        success
        place {
          __typename
          _id
          company_name
          userSub
        }
      }
    }
    """

  public let operationName: String = "SearchAllPlaces"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("searchAllPlaces", type: .nonNull(.object(SearchAllPlace.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(searchAllPlaces: SearchAllPlace) {
      self.init(unsafeResultMap: ["__typename": "Query", "searchAllPlaces": searchAllPlaces.resultMap])
    }

    public var searchAllPlaces: SearchAllPlace {
      get {
        return SearchAllPlace(unsafeResultMap: resultMap["searchAllPlaces"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "searchAllPlaces")
      }
    }

    public struct SearchAllPlace: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["getPlaceResponse"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message", type: .nonNull(.scalar(String.self))),
          GraphQLField("success", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("place", type: .list(.object(Place.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(message: String, success: Bool, place: [Place?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "getPlaceResponse", "message": message, "success": success, "place": place.flatMap { (value: [Place?]) -> [ResultMap?] in value.map { (value: Place?) -> ResultMap? in value.flatMap { (value: Place) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var message: String {
        get {
          return resultMap["message"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "message")
        }
      }

      public var success: Bool {
        get {
          return resultMap["success"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "success")
        }
      }

      public var place: [Place?]? {
        get {
          return (resultMap["place"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Place?] in value.map { (value: ResultMap?) -> Place? in value.flatMap { (value: ResultMap) -> Place in Place(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Place?]) -> [ResultMap?] in value.map { (value: Place?) -> ResultMap? in value.flatMap { (value: Place) -> ResultMap in value.resultMap } } }, forKey: "place")
        }
      }

      public struct Place: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["placeRef"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("_id", type: .scalar(GraphQLID.self)),
            GraphQLField("company_name", type: .scalar(String.self)),
            GraphQLField("userSub", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(_id: GraphQLID? = nil, companyName: String? = nil, userSub: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "placeRef", "_id": _id, "company_name": companyName, "userSub": userSub])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var _id: GraphQLID? {
          get {
            return resultMap["_id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "_id")
          }
        }

        public var companyName: String? {
          get {
            return resultMap["company_name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "company_name")
          }
        }

        public var userSub: String? {
          get {
            return resultMap["userSub"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "userSub")
          }
        }
      }
    }
  }
}

public final class HomeSearchQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query HomeSearch($search: String, $value: Int, $filters: homeSearchFilterInput!, $longitude: Float!, $latitude: Float!) {
      homeSearch(
        input: {search: $search, value: $value, filters: $filters, longitude: $longitude, latitude: $latitude}
      ) {
        __typename
        message
        success
        totalPlaces
        data {
          __typename
          _id
          eventSchedule {
            __typename
            start_time
            end_time
          }
          location {
            __typename
            type
            coordinates
          }
          businessLocation {
            __typename
            type
            coordinates
          }
          business {
            __typename
            _id
            company_name
            favorites
            filter_tags
            hours_format {
              __typename
              Start
              End
              StartDay
              EndDay
            }
            default_image_url
          }
          user {
            __typename
            name
            photo
          }
          ownerId {
            __typename
            _id
            name
            photo
          }
          title
          description
          type
          media
          likes
          list {
            __typename
            _id
            name
          }
          createdAt
          updatedAt
          data
          listId {
            __typename
            _id
            name
          }
          taggedUsers {
            __typename
            _id
            name
          }
          taggedLists {
            __typename
            _id
            name
          }
          ownerId {
            __typename
            name
          }
          totalComments {
            __typename
            totalCount
          }
          hours_format {
            __typename
            Start
            End
            StartDay
            EndDay
          }
          totalPosts {
            __typename
            totalPosts
          }
          filter_tags
          company_name
          default_image_url
          status
          favorites
          itemId {
            __typename
            _id
            data
            title
            description
            eventSchedule {
              __typename
              start_time
              end_time
            }
            media
            taggedUsers {
              __typename
              name
              photo
            }
            taggedLists {
              __typename
              _id
              name
            }
            ownerId {
              __typename
              photo
              name
            }
            likes
            createdAt
          }
          userId {
            __typename
            name
            photo
          }
          body
        }
      }
    }
    """

  public let operationName: String = "HomeSearch"

  public var search: String?
  public var value: Int?
  public var filters: homeSearchFilterInput
  public var longitude: Double
  public var latitude: Double

  public init(search: String? = nil, value: Int? = nil, filters: homeSearchFilterInput, longitude: Double, latitude: Double) {
    self.search = search
    self.value = value
    self.filters = filters
    self.longitude = longitude
    self.latitude = latitude
  }

  public var variables: GraphQLMap? {
    return ["search": search, "value": value, "filters": filters, "longitude": longitude, "latitude": latitude]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("homeSearch", arguments: ["input": ["search": GraphQLVariable("search"), "value": GraphQLVariable("value"), "filters": GraphQLVariable("filters"), "longitude": GraphQLVariable("longitude"), "latitude": GraphQLVariable("latitude")]], type: .nonNull(.object(HomeSearch.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(homeSearch: HomeSearch) {
      self.init(unsafeResultMap: ["__typename": "Query", "homeSearch": homeSearch.resultMap])
    }

    public var homeSearch: HomeSearch {
      get {
        return HomeSearch(unsafeResultMap: resultMap["homeSearch"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "homeSearch")
      }
    }

    public struct HomeSearch: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["homeSearchResponse"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message", type: .nonNull(.scalar(String.self))),
          GraphQLField("success", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("totalPlaces", type: .scalar(Int.self)),
          GraphQLField("data", type: .list(.object(Datum.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(message: String, success: Bool, totalPlaces: Int? = nil, data: [Datum?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "homeSearchResponse", "message": message, "success": success, "totalPlaces": totalPlaces, "data": data.flatMap { (value: [Datum?]) -> [ResultMap?] in value.map { (value: Datum?) -> ResultMap? in value.flatMap { (value: Datum) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var message: String {
        get {
          return resultMap["message"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "message")
        }
      }

      public var success: Bool {
        get {
          return resultMap["success"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "success")
        }
      }

      public var totalPlaces: Int? {
        get {
          return resultMap["totalPlaces"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "totalPlaces")
        }
      }

      public var data: [Datum?]? {
        get {
          return (resultMap["data"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Datum?] in value.map { (value: ResultMap?) -> Datum? in value.flatMap { (value: ResultMap) -> Datum in Datum(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Datum?]) -> [ResultMap?] in value.map { (value: Datum?) -> ResultMap? in value.flatMap { (value: Datum) -> ResultMap in value.resultMap } } }, forKey: "data")
        }
      }

      public struct Datum: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["combineAllData"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("_id", type: .scalar(GraphQLID.self)),
            GraphQLField("eventSchedule", type: .object(EventSchedule.selections)),
            GraphQLField("location", type: .object(Location.selections)),
            GraphQLField("businessLocation", type: .object(BusinessLocation.selections)),
            GraphQLField("business", type: .list(.object(Business.selections))),
            GraphQLField("user", type: .list(.object(User.selections))),
            GraphQLField("ownerId", type: .list(.object(OwnerId.selections))),
            GraphQLField("title", type: .scalar(String.self)),
            GraphQLField("description", type: .scalar(String.self)),
            GraphQLField("type", type: .scalar(String.self)),
            GraphQLField("media", type: .list(.scalar(String.self))),
            GraphQLField("likes", type: .list(.scalar(GraphQLID.self))),
            GraphQLField("list", type: .object(List.selections)),
            GraphQLField("createdAt", type: .scalar(String.self)),
            GraphQLField("updatedAt", type: .scalar(String.self)),
            GraphQLField("data", type: .scalar(String.self)),
            GraphQLField("listId", type: .list(.object(ListId.selections))),
            GraphQLField("taggedUsers", type: .list(.object(TaggedUser.selections))),
            GraphQLField("taggedLists", type: .list(.object(TaggedList.selections))),
            GraphQLField("ownerId", type: .list(.object(OwnerId.selections))),
            GraphQLField("totalComments", type: .list(.object(TotalComment.selections))),
            GraphQLField("hours_format", type: .list(.object(HoursFormat.selections))),
            GraphQLField("totalPosts", type: .list(.object(TotalPost.selections))),
            GraphQLField("filter_tags", type: .list(.scalar(String.self))),
            GraphQLField("company_name", type: .scalar(String.self)),
            GraphQLField("default_image_url", type: .scalar(String.self)),
            GraphQLField("status", type: .scalar(String.self)),
            GraphQLField("favorites", type: .list(.scalar(GraphQLID.self))),
            GraphQLField("itemId", type: .object(ItemId.selections)),
            GraphQLField("userId", type: .list(.object(UserId.selections))),
            GraphQLField("body", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(_id: GraphQLID? = nil, eventSchedule: EventSchedule? = nil, location: Location? = nil, businessLocation: BusinessLocation? = nil, business: [Business?]? = nil, user: [User?]? = nil, ownerId: [OwnerId?]? = nil, title: String? = nil, description: String? = nil, type: String? = nil, media: [String?]? = nil, likes: [GraphQLID?]? = nil, list: List? = nil, createdAt: String? = nil, updatedAt: String? = nil, data: String? = nil, listId: [ListId?]? = nil, taggedUsers: [TaggedUser?]? = nil, taggedLists: [TaggedList?]? = nil, totalComments: [TotalComment?]? = nil, hoursFormat: [HoursFormat?]? = nil, totalPosts: [TotalPost?]? = nil, filterTags: [String?]? = nil, companyName: String? = nil, defaultImageUrl: String? = nil, status: String? = nil, favorites: [GraphQLID?]? = nil, itemId: ItemId? = nil, userId: [UserId?]? = nil, body: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "combineAllData", "_id": _id, "eventSchedule": eventSchedule.flatMap { (value: EventSchedule) -> ResultMap in value.resultMap }, "location": location.flatMap { (value: Location) -> ResultMap in value.resultMap }, "businessLocation": businessLocation.flatMap { (value: BusinessLocation) -> ResultMap in value.resultMap }, "business": business.flatMap { (value: [Business?]) -> [ResultMap?] in value.map { (value: Business?) -> ResultMap? in value.flatMap { (value: Business) -> ResultMap in value.resultMap } } }, "user": user.flatMap { (value: [User?]) -> [ResultMap?] in value.map { (value: User?) -> ResultMap? in value.flatMap { (value: User) -> ResultMap in value.resultMap } } }, "ownerId": ownerId.flatMap { (value: [OwnerId?]) -> [ResultMap?] in value.map { (value: OwnerId?) -> ResultMap? in value.flatMap { (value: OwnerId) -> ResultMap in value.resultMap } } }, "title": title, "description": description, "type": type, "media": media, "likes": likes, "list": list.flatMap { (value: List) -> ResultMap in value.resultMap }, "createdAt": createdAt, "updatedAt": updatedAt, "data": data, "listId": listId.flatMap { (value: [ListId?]) -> [ResultMap?] in value.map { (value: ListId?) -> ResultMap? in value.flatMap { (value: ListId) -> ResultMap in value.resultMap } } }, "taggedUsers": taggedUsers.flatMap { (value: [TaggedUser?]) -> [ResultMap?] in value.map { (value: TaggedUser?) -> ResultMap? in value.flatMap { (value: TaggedUser) -> ResultMap in value.resultMap } } }, "taggedLists": taggedLists.flatMap { (value: [TaggedList?]) -> [ResultMap?] in value.map { (value: TaggedList?) -> ResultMap? in value.flatMap { (value: TaggedList) -> ResultMap in value.resultMap } } }, "totalComments": totalComments.flatMap { (value: [TotalComment?]) -> [ResultMap?] in value.map { (value: TotalComment?) -> ResultMap? in value.flatMap { (value: TotalComment) -> ResultMap in value.resultMap } } }, "hours_format": hoursFormat.flatMap { (value: [HoursFormat?]) -> [ResultMap?] in value.map { (value: HoursFormat?) -> ResultMap? in value.flatMap { (value: HoursFormat) -> ResultMap in value.resultMap } } }, "totalPosts": totalPosts.flatMap { (value: [TotalPost?]) -> [ResultMap?] in value.map { (value: TotalPost?) -> ResultMap? in value.flatMap { (value: TotalPost) -> ResultMap in value.resultMap } } }, "filter_tags": filterTags, "company_name": companyName, "default_image_url": defaultImageUrl, "status": status, "favorites": favorites, "itemId": itemId.flatMap { (value: ItemId) -> ResultMap in value.resultMap }, "userId": userId.flatMap { (value: [UserId?]) -> [ResultMap?] in value.map { (value: UserId?) -> ResultMap? in value.flatMap { (value: UserId) -> ResultMap in value.resultMap } } }, "body": body])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var _id: GraphQLID? {
          get {
            return resultMap["_id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "_id")
          }
        }

        public var eventSchedule: EventSchedule? {
          get {
            return (resultMap["eventSchedule"] as? ResultMap).flatMap { EventSchedule(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "eventSchedule")
          }
        }

        public var location: Location? {
          get {
            return (resultMap["location"] as? ResultMap).flatMap { Location(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "location")
          }
        }

        public var businessLocation: BusinessLocation? {
          get {
            return (resultMap["businessLocation"] as? ResultMap).flatMap { BusinessLocation(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "businessLocation")
          }
        }

        public var business: [Business?]? {
          get {
            return (resultMap["business"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Business?] in value.map { (value: ResultMap?) -> Business? in value.flatMap { (value: ResultMap) -> Business in Business(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [Business?]) -> [ResultMap?] in value.map { (value: Business?) -> ResultMap? in value.flatMap { (value: Business) -> ResultMap in value.resultMap } } }, forKey: "business")
          }
        }

        public var user: [User?]? {
          get {
            return (resultMap["user"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [User?] in value.map { (value: ResultMap?) -> User? in value.flatMap { (value: ResultMap) -> User in User(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [User?]) -> [ResultMap?] in value.map { (value: User?) -> ResultMap? in value.flatMap { (value: User) -> ResultMap in value.resultMap } } }, forKey: "user")
          }
        }

        public var ownerId: [OwnerId?]? {
          get {
            return (resultMap["ownerId"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [OwnerId?] in value.map { (value: ResultMap?) -> OwnerId? in value.flatMap { (value: ResultMap) -> OwnerId in OwnerId(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [OwnerId?]) -> [ResultMap?] in value.map { (value: OwnerId?) -> ResultMap? in value.flatMap { (value: OwnerId) -> ResultMap in value.resultMap } } }, forKey: "ownerId")
          }
        }

        public var title: String? {
          get {
            return resultMap["title"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "title")
          }
        }

        public var description: String? {
          get {
            return resultMap["description"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "description")
          }
        }

        public var type: String? {
          get {
            return resultMap["type"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "type")
          }
        }

        public var media: [String?]? {
          get {
            return resultMap["media"] as? [String?]
          }
          set {
            resultMap.updateValue(newValue, forKey: "media")
          }
        }

        public var likes: [GraphQLID?]? {
          get {
            return resultMap["likes"] as? [GraphQLID?]
          }
          set {
            resultMap.updateValue(newValue, forKey: "likes")
          }
        }

        public var list: List? {
          get {
            return (resultMap["list"] as? ResultMap).flatMap { List(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "list")
          }
        }

        public var createdAt: String? {
          get {
            return resultMap["createdAt"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String? {
          get {
            return resultMap["updatedAt"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public var data: String? {
          get {
            return resultMap["data"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "data")
          }
        }

        public var listId: [ListId?]? {
          get {
            return (resultMap["listId"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [ListId?] in value.map { (value: ResultMap?) -> ListId? in value.flatMap { (value: ResultMap) -> ListId in ListId(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [ListId?]) -> [ResultMap?] in value.map { (value: ListId?) -> ResultMap? in value.flatMap { (value: ListId) -> ResultMap in value.resultMap } } }, forKey: "listId")
          }
        }

        public var taggedUsers: [TaggedUser?]? {
          get {
            return (resultMap["taggedUsers"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [TaggedUser?] in value.map { (value: ResultMap?) -> TaggedUser? in value.flatMap { (value: ResultMap) -> TaggedUser in TaggedUser(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [TaggedUser?]) -> [ResultMap?] in value.map { (value: TaggedUser?) -> ResultMap? in value.flatMap { (value: TaggedUser) -> ResultMap in value.resultMap } } }, forKey: "taggedUsers")
          }
        }

        public var taggedLists: [TaggedList?]? {
          get {
            return (resultMap["taggedLists"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [TaggedList?] in value.map { (value: ResultMap?) -> TaggedList? in value.flatMap { (value: ResultMap) -> TaggedList in TaggedList(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [TaggedList?]) -> [ResultMap?] in value.map { (value: TaggedList?) -> ResultMap? in value.flatMap { (value: TaggedList) -> ResultMap in value.resultMap } } }, forKey: "taggedLists")
          }
        }

        public var totalComments: [TotalComment?]? {
          get {
            return (resultMap["totalComments"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [TotalComment?] in value.map { (value: ResultMap?) -> TotalComment? in value.flatMap { (value: ResultMap) -> TotalComment in TotalComment(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [TotalComment?]) -> [ResultMap?] in value.map { (value: TotalComment?) -> ResultMap? in value.flatMap { (value: TotalComment) -> ResultMap in value.resultMap } } }, forKey: "totalComments")
          }
        }

        public var hoursFormat: [HoursFormat?]? {
          get {
            return (resultMap["hours_format"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [HoursFormat?] in value.map { (value: ResultMap?) -> HoursFormat? in value.flatMap { (value: ResultMap) -> HoursFormat in HoursFormat(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [HoursFormat?]) -> [ResultMap?] in value.map { (value: HoursFormat?) -> ResultMap? in value.flatMap { (value: HoursFormat) -> ResultMap in value.resultMap } } }, forKey: "hours_format")
          }
        }

        public var totalPosts: [TotalPost?]? {
          get {
            return (resultMap["totalPosts"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [TotalPost?] in value.map { (value: ResultMap?) -> TotalPost? in value.flatMap { (value: ResultMap) -> TotalPost in TotalPost(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [TotalPost?]) -> [ResultMap?] in value.map { (value: TotalPost?) -> ResultMap? in value.flatMap { (value: TotalPost) -> ResultMap in value.resultMap } } }, forKey: "totalPosts")
          }
        }

        public var filterTags: [String?]? {
          get {
            return resultMap["filter_tags"] as? [String?]
          }
          set {
            resultMap.updateValue(newValue, forKey: "filter_tags")
          }
        }

        public var companyName: String? {
          get {
            return resultMap["company_name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "company_name")
          }
        }

        public var defaultImageUrl: String? {
          get {
            return resultMap["default_image_url"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "default_image_url")
          }
        }

        public var status: String? {
          get {
            return resultMap["status"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "status")
          }
        }

        public var favorites: [GraphQLID?]? {
          get {
            return resultMap["favorites"] as? [GraphQLID?]
          }
          set {
            resultMap.updateValue(newValue, forKey: "favorites")
          }
        }

        public var itemId: ItemId? {
          get {
            return (resultMap["itemId"] as? ResultMap).flatMap { ItemId(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "itemId")
          }
        }

        public var userId: [UserId?]? {
          get {
            return (resultMap["userId"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [UserId?] in value.map { (value: ResultMap?) -> UserId? in value.flatMap { (value: ResultMap) -> UserId in UserId(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [UserId?]) -> [ResultMap?] in value.map { (value: UserId?) -> ResultMap? in value.flatMap { (value: UserId) -> ResultMap in value.resultMap } } }, forKey: "userId")
          }
        }

        public var body: String? {
          get {
            return resultMap["body"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "body")
          }
        }

        public struct EventSchedule: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["eventScheduleRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("start_time", type: .scalar(String.self)),
              GraphQLField("end_time", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(startTime: String? = nil, endTime: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "eventScheduleRef", "start_time": startTime, "end_time": endTime])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var startTime: String? {
            get {
              return resultMap["start_time"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "start_time")
            }
          }

          public var endTime: String? {
            get {
              return resultMap["end_time"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "end_time")
            }
          }
        }

        public struct Location: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["locationRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("type", type: .scalar(String.self)),
              GraphQLField("coordinates", type: .list(.scalar(Double.self))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(type: String? = nil, coordinates: [Double?]? = nil) {
            self.init(unsafeResultMap: ["__typename": "locationRef", "type": type, "coordinates": coordinates])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var type: String? {
            get {
              return resultMap["type"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "type")
            }
          }

          public var coordinates: [Double?]? {
            get {
              return resultMap["coordinates"] as? [Double?]
            }
            set {
              resultMap.updateValue(newValue, forKey: "coordinates")
            }
          }
        }

        public struct BusinessLocation: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["locationRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("type", type: .scalar(String.self)),
              GraphQLField("coordinates", type: .list(.scalar(Double.self))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(type: String? = nil, coordinates: [Double?]? = nil) {
            self.init(unsafeResultMap: ["__typename": "locationRef", "type": type, "coordinates": coordinates])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var type: String? {
            get {
              return resultMap["type"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "type")
            }
          }

          public var coordinates: [Double?]? {
            get {
              return resultMap["coordinates"] as? [Double?]
            }
            set {
              resultMap.updateValue(newValue, forKey: "coordinates")
            }
          }
        }

        public struct Business: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["businessRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("_id", type: .scalar(GraphQLID.self)),
              GraphQLField("company_name", type: .scalar(String.self)),
              GraphQLField("favorites", type: .list(.scalar(GraphQLID.self))),
              GraphQLField("filter_tags", type: .list(.scalar(String.self))),
              GraphQLField("hours_format", type: .list(.object(HoursFormat.selections))),
              GraphQLField("default_image_url", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(_id: GraphQLID? = nil, companyName: String? = nil, favorites: [GraphQLID?]? = nil, filterTags: [String?]? = nil, hoursFormat: [HoursFormat?]? = nil, defaultImageUrl: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "businessRef", "_id": _id, "company_name": companyName, "favorites": favorites, "filter_tags": filterTags, "hours_format": hoursFormat.flatMap { (value: [HoursFormat?]) -> [ResultMap?] in value.map { (value: HoursFormat?) -> ResultMap? in value.flatMap { (value: HoursFormat) -> ResultMap in value.resultMap } } }, "default_image_url": defaultImageUrl])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var _id: GraphQLID? {
            get {
              return resultMap["_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }

          public var companyName: String? {
            get {
              return resultMap["company_name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "company_name")
            }
          }

          public var favorites: [GraphQLID?]? {
            get {
              return resultMap["favorites"] as? [GraphQLID?]
            }
            set {
              resultMap.updateValue(newValue, forKey: "favorites")
            }
          }

          public var filterTags: [String?]? {
            get {
              return resultMap["filter_tags"] as? [String?]
            }
            set {
              resultMap.updateValue(newValue, forKey: "filter_tags")
            }
          }

          public var hoursFormat: [HoursFormat?]? {
            get {
              return (resultMap["hours_format"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [HoursFormat?] in value.map { (value: ResultMap?) -> HoursFormat? in value.flatMap { (value: ResultMap) -> HoursFormat in HoursFormat(unsafeResultMap: value) } } }
            }
            set {
              resultMap.updateValue(newValue.flatMap { (value: [HoursFormat?]) -> [ResultMap?] in value.map { (value: HoursFormat?) -> ResultMap? in value.flatMap { (value: HoursFormat) -> ResultMap in value.resultMap } } }, forKey: "hours_format")
            }
          }

          public var defaultImageUrl: String? {
            get {
              return resultMap["default_image_url"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "default_image_url")
            }
          }

          public struct HoursFormat: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["hoursFormatRef"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("Start", type: .scalar(String.self)),
                GraphQLField("End", type: .scalar(String.self)),
                GraphQLField("StartDay", type: .scalar(String.self)),
                GraphQLField("EndDay", type: .scalar(String.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(start: String? = nil, end: String? = nil, startDay: String? = nil, endDay: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "hoursFormatRef", "Start": start, "End": end, "StartDay": startDay, "EndDay": endDay])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var start: String? {
              get {
                return resultMap["Start"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "Start")
              }
            }

            public var end: String? {
              get {
                return resultMap["End"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "End")
              }
            }

            public var startDay: String? {
              get {
                return resultMap["StartDay"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "StartDay")
              }
            }

            public var endDay: String? {
              get {
                return resultMap["EndDay"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "EndDay")
              }
            }
          }
        }

        public struct User: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["userProfileRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("name", type: .scalar(String.self)),
              GraphQLField("photo", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(name: String? = nil, photo: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "userProfileRef", "name": name, "photo": photo])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }

          public var photo: String? {
            get {
              return resultMap["photo"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "photo")
            }
          }
        }

        public struct OwnerId: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["userProfileRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("_id", type: .scalar(GraphQLID.self)),
              GraphQLField("name", type: .scalar(String.self)),
              GraphQLField("photo", type: .scalar(String.self)),
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("name", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(_id: GraphQLID? = nil, name: String? = nil, photo: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "userProfileRef", "_id": _id, "name": name, "photo": photo])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var _id: GraphQLID? {
            get {
              return resultMap["_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }

          public var photo: String? {
            get {
              return resultMap["photo"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "photo")
            }
          }
        }

        public struct List: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["listRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("_id", type: .scalar(GraphQLID.self)),
              GraphQLField("name", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(_id: GraphQLID? = nil, name: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "listRef", "_id": _id, "name": name])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var _id: GraphQLID? {
            get {
              return resultMap["_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }
        }

        public struct ListId: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["listRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("_id", type: .scalar(GraphQLID.self)),
              GraphQLField("name", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(_id: GraphQLID? = nil, name: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "listRef", "_id": _id, "name": name])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var _id: GraphQLID? {
            get {
              return resultMap["_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }
        }

        public struct TaggedUser: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["userDataRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("_id", type: .scalar(GraphQLID.self)),
              GraphQLField("name", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(_id: GraphQLID? = nil, name: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "userDataRef", "_id": _id, "name": name])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var _id: GraphQLID? {
            get {
              return resultMap["_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }
        }

        public struct TaggedList: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["listRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("_id", type: .scalar(GraphQLID.self)),
              GraphQLField("name", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(_id: GraphQLID? = nil, name: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "listRef", "_id": _id, "name": name])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var _id: GraphQLID? {
            get {
              return resultMap["_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }
        }

        public struct TotalComment: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["homeSearchTotalCommentsRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("totalCount", type: .scalar(Int.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(totalCount: Int? = nil) {
            self.init(unsafeResultMap: ["__typename": "homeSearchTotalCommentsRef", "totalCount": totalCount])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var totalCount: Int? {
            get {
              return resultMap["totalCount"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "totalCount")
            }
          }
        }

        public struct HoursFormat: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["hoursFormatRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("Start", type: .scalar(String.self)),
              GraphQLField("End", type: .scalar(String.self)),
              GraphQLField("StartDay", type: .scalar(String.self)),
              GraphQLField("EndDay", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(start: String? = nil, end: String? = nil, startDay: String? = nil, endDay: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "hoursFormatRef", "Start": start, "End": end, "StartDay": startDay, "EndDay": endDay])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var start: String? {
            get {
              return resultMap["Start"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "Start")
            }
          }

          public var end: String? {
            get {
              return resultMap["End"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "End")
            }
          }

          public var startDay: String? {
            get {
              return resultMap["StartDay"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "StartDay")
            }
          }

          public var endDay: String? {
            get {
              return resultMap["EndDay"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "EndDay")
            }
          }
        }

        public struct TotalPost: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["totalPostsRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("totalPosts", type: .scalar(Int.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(totalPosts: Int? = nil) {
            self.init(unsafeResultMap: ["__typename": "totalPostsRef", "totalPosts": totalPosts])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var totalPosts: Int? {
            get {
              return resultMap["totalPosts"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "totalPosts")
            }
          }
        }

        public struct ItemId: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["searchPostRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("_id", type: .scalar(GraphQLID.self)),
              GraphQLField("data", type: .scalar(String.self)),
              GraphQLField("title", type: .scalar(String.self)),
              GraphQLField("description", type: .scalar(String.self)),
              GraphQLField("eventSchedule", type: .object(EventSchedule.selections)),
              GraphQLField("media", type: .list(.scalar(String.self))),
              GraphQLField("taggedUsers", type: .list(.object(TaggedUser.selections))),
              GraphQLField("taggedLists", type: .list(.object(TaggedList.selections))),
              GraphQLField("ownerId", type: .list(.object(OwnerId.selections))),
              GraphQLField("likes", type: .list(.scalar(String.self))),
              GraphQLField("createdAt", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(_id: GraphQLID? = nil, data: String? = nil, title: String? = nil, description: String? = nil, eventSchedule: EventSchedule? = nil, media: [String?]? = nil, taggedUsers: [TaggedUser?]? = nil, taggedLists: [TaggedList?]? = nil, ownerId: [OwnerId?]? = nil, likes: [String?]? = nil, createdAt: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "searchPostRef", "_id": _id, "data": data, "title": title, "description": description, "eventSchedule": eventSchedule.flatMap { (value: EventSchedule) -> ResultMap in value.resultMap }, "media": media, "taggedUsers": taggedUsers.flatMap { (value: [TaggedUser?]) -> [ResultMap?] in value.map { (value: TaggedUser?) -> ResultMap? in value.flatMap { (value: TaggedUser) -> ResultMap in value.resultMap } } }, "taggedLists": taggedLists.flatMap { (value: [TaggedList?]) -> [ResultMap?] in value.map { (value: TaggedList?) -> ResultMap? in value.flatMap { (value: TaggedList) -> ResultMap in value.resultMap } } }, "ownerId": ownerId.flatMap { (value: [OwnerId?]) -> [ResultMap?] in value.map { (value: OwnerId?) -> ResultMap? in value.flatMap { (value: OwnerId) -> ResultMap in value.resultMap } } }, "likes": likes, "createdAt": createdAt])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var _id: GraphQLID? {
            get {
              return resultMap["_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }

          public var data: String? {
            get {
              return resultMap["data"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "data")
            }
          }

          public var title: String? {
            get {
              return resultMap["title"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "title")
            }
          }

          public var description: String? {
            get {
              return resultMap["description"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "description")
            }
          }

          public var eventSchedule: EventSchedule? {
            get {
              return (resultMap["eventSchedule"] as? ResultMap).flatMap { EventSchedule(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "eventSchedule")
            }
          }

          public var media: [String?]? {
            get {
              return resultMap["media"] as? [String?]
            }
            set {
              resultMap.updateValue(newValue, forKey: "media")
            }
          }

          public var taggedUsers: [TaggedUser?]? {
            get {
              return (resultMap["taggedUsers"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [TaggedUser?] in value.map { (value: ResultMap?) -> TaggedUser? in value.flatMap { (value: ResultMap) -> TaggedUser in TaggedUser(unsafeResultMap: value) } } }
            }
            set {
              resultMap.updateValue(newValue.flatMap { (value: [TaggedUser?]) -> [ResultMap?] in value.map { (value: TaggedUser?) -> ResultMap? in value.flatMap { (value: TaggedUser) -> ResultMap in value.resultMap } } }, forKey: "taggedUsers")
            }
          }

          public var taggedLists: [TaggedList?]? {
            get {
              return (resultMap["taggedLists"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [TaggedList?] in value.map { (value: ResultMap?) -> TaggedList? in value.flatMap { (value: ResultMap) -> TaggedList in TaggedList(unsafeResultMap: value) } } }
            }
            set {
              resultMap.updateValue(newValue.flatMap { (value: [TaggedList?]) -> [ResultMap?] in value.map { (value: TaggedList?) -> ResultMap? in value.flatMap { (value: TaggedList) -> ResultMap in value.resultMap } } }, forKey: "taggedLists")
            }
          }

          public var ownerId: [OwnerId?]? {
            get {
              return (resultMap["ownerId"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [OwnerId?] in value.map { (value: ResultMap?) -> OwnerId? in value.flatMap { (value: ResultMap) -> OwnerId in OwnerId(unsafeResultMap: value) } } }
            }
            set {
              resultMap.updateValue(newValue.flatMap { (value: [OwnerId?]) -> [ResultMap?] in value.map { (value: OwnerId?) -> ResultMap? in value.flatMap { (value: OwnerId) -> ResultMap in value.resultMap } } }, forKey: "ownerId")
            }
          }

          public var likes: [String?]? {
            get {
              return resultMap["likes"] as? [String?]
            }
            set {
              resultMap.updateValue(newValue, forKey: "likes")
            }
          }

          public var createdAt: String? {
            get {
              return resultMap["createdAt"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "createdAt")
            }
          }

          public struct EventSchedule: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["eventScheduleRef"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("start_time", type: .scalar(String.self)),
                GraphQLField("end_time", type: .scalar(String.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(startTime: String? = nil, endTime: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "eventScheduleRef", "start_time": startTime, "end_time": endTime])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var startTime: String? {
              get {
                return resultMap["start_time"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "start_time")
              }
            }

            public var endTime: String? {
              get {
                return resultMap["end_time"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "end_time")
              }
            }
          }

          public struct TaggedUser: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["userProfileRef"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("name", type: .scalar(String.self)),
                GraphQLField("photo", type: .scalar(String.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(name: String? = nil, photo: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "userProfileRef", "name": name, "photo": photo])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var name: String? {
              get {
                return resultMap["name"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "name")
              }
            }

            public var photo: String? {
              get {
                return resultMap["photo"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "photo")
              }
            }
          }

          public struct TaggedList: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["listRef"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("_id", type: .scalar(GraphQLID.self)),
                GraphQLField("name", type: .scalar(String.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(_id: GraphQLID? = nil, name: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "listRef", "_id": _id, "name": name])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var _id: GraphQLID? {
              get {
                return resultMap["_id"] as? GraphQLID
              }
              set {
                resultMap.updateValue(newValue, forKey: "_id")
              }
            }

            public var name: String? {
              get {
                return resultMap["name"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "name")
              }
            }
          }

          public struct OwnerId: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["userProfileRef"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("photo", type: .scalar(String.self)),
                GraphQLField("name", type: .scalar(String.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(photo: String? = nil, name: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "userProfileRef", "photo": photo, "name": name])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var photo: String? {
              get {
                return resultMap["photo"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "photo")
              }
            }

            public var name: String? {
              get {
                return resultMap["name"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "name")
              }
            }
          }
        }

        public struct UserId: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["userRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("name", type: .scalar(String.self)),
              GraphQLField("photo", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(name: String? = nil, photo: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "userRef", "name": name, "photo": photo])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }

          public var photo: String? {
            get {
              return resultMap["photo"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "photo")
            }
          }
        }
      }
    }
  }
}

public final class GetListsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GetLists {
      getLists {
        __typename
        message
        success
        list {
          __typename
          _id
          name
          description
          type
          photo
          account_id
          items
          createdAt
          updatedAt
        }
      }
    }
    """

  public let operationName: String = "GetLists"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("getLists", type: .nonNull(.object(GetList.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(getLists: GetList) {
      self.init(unsafeResultMap: ["__typename": "Query", "getLists": getLists.resultMap])
    }

    public var getLists: GetList {
      get {
        return GetList(unsafeResultMap: resultMap["getLists"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "getLists")
      }
    }

    public struct GetList: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["listResponse"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message", type: .nonNull(.scalar(String.self))),
          GraphQLField("success", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("list", type: .list(.object(List.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(message: String, success: Bool, list: [List?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "listResponse", "message": message, "success": success, "list": list.flatMap { (value: [List?]) -> [ResultMap?] in value.map { (value: List?) -> ResultMap? in value.flatMap { (value: List) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var message: String {
        get {
          return resultMap["message"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "message")
        }
      }

      public var success: Bool {
        get {
          return resultMap["success"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "success")
        }
      }

      public var list: [List?]? {
        get {
          return (resultMap["list"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [List?] in value.map { (value: ResultMap?) -> List? in value.flatMap { (value: ResultMap) -> List in List(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [List?]) -> [ResultMap?] in value.map { (value: List?) -> ResultMap? in value.flatMap { (value: List) -> ResultMap in value.resultMap } } }, forKey: "list")
        }
      }

      public struct List: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["listRef"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("_id", type: .scalar(GraphQLID.self)),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("description", type: .scalar(String.self)),
            GraphQLField("type", type: .scalar(String.self)),
            GraphQLField("photo", type: .scalar(String.self)),
            GraphQLField("account_id", type: .scalar(GraphQLID.self)),
            GraphQLField("items", type: .list(.scalar(GraphQLID.self))),
            GraphQLField("createdAt", type: .scalar(String.self)),
            GraphQLField("updatedAt", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(_id: GraphQLID? = nil, name: String? = nil, description: String? = nil, type: String? = nil, photo: String? = nil, accountId: GraphQLID? = nil, items: [GraphQLID?]? = nil, createdAt: String? = nil, updatedAt: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "listRef", "_id": _id, "name": name, "description": description, "type": type, "photo": photo, "account_id": accountId, "items": items, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var _id: GraphQLID? {
          get {
            return resultMap["_id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "_id")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var description: String? {
          get {
            return resultMap["description"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "description")
          }
        }

        public var type: String? {
          get {
            return resultMap["type"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "type")
          }
        }

        public var photo: String? {
          get {
            return resultMap["photo"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "photo")
          }
        }

        public var accountId: GraphQLID? {
          get {
            return resultMap["account_id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "account_id")
          }
        }

        public var items: [GraphQLID?]? {
          get {
            return resultMap["items"] as? [GraphQLID?]
          }
          set {
            resultMap.updateValue(newValue, forKey: "items")
          }
        }

        public var createdAt: String? {
          get {
            return resultMap["createdAt"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String? {
          get {
            return resultMap["updatedAt"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "updatedAt")
          }
        }
      }
    }
  }
}

public final class GetUserListsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GetUserLists($id: ID!) {
      getUserLists(input: {id: $id}) {
        __typename
        message
        success
        totalLists
        list {
          __typename
          _id
          isPublic
          ownerId
          subscribers {
            __typename
            name
            photo
            _id
          }
          name
          description
          type
          media {
            __typename
            image
          }
          createdAt
          updatedAt
        }
      }
    }
    """

  public let operationName: String = "GetUserLists"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("getUserLists", arguments: ["input": ["id": GraphQLVariable("id")]], type: .nonNull(.object(GetUserList.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(getUserLists: GetUserList) {
      self.init(unsafeResultMap: ["__typename": "Query", "getUserLists": getUserLists.resultMap])
    }

    public var getUserLists: GetUserList {
      get {
        return GetUserList(unsafeResultMap: resultMap["getUserLists"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "getUserLists")
      }
    }

    public struct GetUserList: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["listUserResponse"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message", type: .nonNull(.scalar(String.self))),
          GraphQLField("success", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("totalLists", type: .scalar(Int.self)),
          GraphQLField("list", type: .list(.object(List.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(message: String, success: Bool, totalLists: Int? = nil, list: [List?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "listUserResponse", "message": message, "success": success, "totalLists": totalLists, "list": list.flatMap { (value: [List?]) -> [ResultMap?] in value.map { (value: List?) -> ResultMap? in value.flatMap { (value: List) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var message: String {
        get {
          return resultMap["message"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "message")
        }
      }

      public var success: Bool {
        get {
          return resultMap["success"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "success")
        }
      }

      public var totalLists: Int? {
        get {
          return resultMap["totalLists"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "totalLists")
        }
      }

      public var list: [List?]? {
        get {
          return (resultMap["list"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [List?] in value.map { (value: ResultMap?) -> List? in value.flatMap { (value: ResultMap) -> List in List(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [List?]) -> [ResultMap?] in value.map { (value: List?) -> ResultMap? in value.flatMap { (value: List) -> ResultMap in value.resultMap } } }, forKey: "list")
        }
      }

      public struct List: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["listUserRef"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("_id", type: .scalar(GraphQLID.self)),
            GraphQLField("isPublic", type: .scalar(Bool.self)),
            GraphQLField("ownerId", type: .scalar(GraphQLID.self)),
            GraphQLField("subscribers", type: .list(.object(Subscriber.selections))),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("description", type: .scalar(String.self)),
            GraphQLField("type", type: .scalar(String.self)),
            GraphQLField("media", type: .list(.object(Medium.selections))),
            GraphQLField("createdAt", type: .scalar(String.self)),
            GraphQLField("updatedAt", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(_id: GraphQLID? = nil, isPublic: Bool? = nil, ownerId: GraphQLID? = nil, subscribers: [Subscriber?]? = nil, name: String? = nil, description: String? = nil, type: String? = nil, media: [Medium?]? = nil, createdAt: String? = nil, updatedAt: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "listUserRef", "_id": _id, "isPublic": isPublic, "ownerId": ownerId, "subscribers": subscribers.flatMap { (value: [Subscriber?]) -> [ResultMap?] in value.map { (value: Subscriber?) -> ResultMap? in value.flatMap { (value: Subscriber) -> ResultMap in value.resultMap } } }, "name": name, "description": description, "type": type, "media": media.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var _id: GraphQLID? {
          get {
            return resultMap["_id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "_id")
          }
        }

        public var isPublic: Bool? {
          get {
            return resultMap["isPublic"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "isPublic")
          }
        }

        public var ownerId: GraphQLID? {
          get {
            return resultMap["ownerId"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "ownerId")
          }
        }

        public var subscribers: [Subscriber?]? {
          get {
            return (resultMap["subscribers"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Subscriber?] in value.map { (value: ResultMap?) -> Subscriber? in value.flatMap { (value: ResultMap) -> Subscriber in Subscriber(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [Subscriber?]) -> [ResultMap?] in value.map { (value: Subscriber?) -> ResultMap? in value.flatMap { (value: Subscriber) -> ResultMap in value.resultMap } } }, forKey: "subscribers")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var description: String? {
          get {
            return resultMap["description"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "description")
          }
        }

        public var type: String? {
          get {
            return resultMap["type"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "type")
          }
        }

        public var media: [Medium?]? {
          get {
            return (resultMap["media"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Medium?] in value.map { (value: ResultMap?) -> Medium? in value.flatMap { (value: ResultMap) -> Medium in Medium(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }, forKey: "media")
          }
        }

        public var createdAt: String? {
          get {
            return resultMap["createdAt"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String? {
          get {
            return resultMap["updatedAt"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Subscriber: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["userRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("name", type: .scalar(String.self)),
              GraphQLField("photo", type: .scalar(String.self)),
              GraphQLField("_id", type: .scalar(GraphQLID.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(name: String? = nil, photo: String? = nil, _id: GraphQLID? = nil) {
            self.init(unsafeResultMap: ["__typename": "userRef", "name": name, "photo": photo, "_id": _id])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }

          public var photo: String? {
            get {
              return resultMap["photo"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "photo")
            }
          }

          public var _id: GraphQLID? {
            get {
              return resultMap["_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }
        }

        public struct Medium: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["outputMedia"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("image", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(image: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "outputMedia", "image": image])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var image: String? {
            get {
              return resultMap["image"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "image")
            }
          }
        }
      }
    }
  }
}

public final class GetUserCreatedAndFollowedListsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GetUserCreatedAndFollowedLists($id: ID!, $value: Int, $limit: Int) {
      getUserCreatedAndFollowedLists(input: {id: $id, value: $value, limit: $limit}) {
        __typename
        message
        success
        totalLists
        list {
          __typename
          _id
          isPublic
          ownerId
          subscribers {
            __typename
            _id
            name
            photo
          }
          name
          description
          type
          media {
            __typename
            image
          }
          createdAt
          updatedAt
        }
      }
    }
    """

  public let operationName: String = "GetUserCreatedAndFollowedLists"

  public var id: GraphQLID
  public var value: Int?
  public var limit: Int?

  public init(id: GraphQLID, value: Int? = nil, limit: Int? = nil) {
    self.id = id
    self.value = value
    self.limit = limit
  }

  public var variables: GraphQLMap? {
    return ["id": id, "value": value, "limit": limit]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("getUserCreatedAndFollowedLists", arguments: ["input": ["id": GraphQLVariable("id"), "value": GraphQLVariable("value"), "limit": GraphQLVariable("limit")]], type: .nonNull(.object(GetUserCreatedAndFollowedList.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(getUserCreatedAndFollowedLists: GetUserCreatedAndFollowedList) {
      self.init(unsafeResultMap: ["__typename": "Query", "getUserCreatedAndFollowedLists": getUserCreatedAndFollowedLists.resultMap])
    }

    public var getUserCreatedAndFollowedLists: GetUserCreatedAndFollowedList {
      get {
        return GetUserCreatedAndFollowedList(unsafeResultMap: resultMap["getUserCreatedAndFollowedLists"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "getUserCreatedAndFollowedLists")
      }
    }

    public struct GetUserCreatedAndFollowedList: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["listUserResponse"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message", type: .nonNull(.scalar(String.self))),
          GraphQLField("success", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("totalLists", type: .scalar(Int.self)),
          GraphQLField("list", type: .list(.object(List.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(message: String, success: Bool, totalLists: Int? = nil, list: [List?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "listUserResponse", "message": message, "success": success, "totalLists": totalLists, "list": list.flatMap { (value: [List?]) -> [ResultMap?] in value.map { (value: List?) -> ResultMap? in value.flatMap { (value: List) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var message: String {
        get {
          return resultMap["message"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "message")
        }
      }

      public var success: Bool {
        get {
          return resultMap["success"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "success")
        }
      }

      public var totalLists: Int? {
        get {
          return resultMap["totalLists"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "totalLists")
        }
      }

      public var list: [List?]? {
        get {
          return (resultMap["list"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [List?] in value.map { (value: ResultMap?) -> List? in value.flatMap { (value: ResultMap) -> List in List(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [List?]) -> [ResultMap?] in value.map { (value: List?) -> ResultMap? in value.flatMap { (value: List) -> ResultMap in value.resultMap } } }, forKey: "list")
        }
      }

      public struct List: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["listUserRef"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("_id", type: .scalar(GraphQLID.self)),
            GraphQLField("isPublic", type: .scalar(Bool.self)),
            GraphQLField("ownerId", type: .scalar(GraphQLID.self)),
            GraphQLField("subscribers", type: .list(.object(Subscriber.selections))),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("description", type: .scalar(String.self)),
            GraphQLField("type", type: .scalar(String.self)),
            GraphQLField("media", type: .list(.object(Medium.selections))),
            GraphQLField("createdAt", type: .scalar(String.self)),
            GraphQLField("updatedAt", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(_id: GraphQLID? = nil, isPublic: Bool? = nil, ownerId: GraphQLID? = nil, subscribers: [Subscriber?]? = nil, name: String? = nil, description: String? = nil, type: String? = nil, media: [Medium?]? = nil, createdAt: String? = nil, updatedAt: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "listUserRef", "_id": _id, "isPublic": isPublic, "ownerId": ownerId, "subscribers": subscribers.flatMap { (value: [Subscriber?]) -> [ResultMap?] in value.map { (value: Subscriber?) -> ResultMap? in value.flatMap { (value: Subscriber) -> ResultMap in value.resultMap } } }, "name": name, "description": description, "type": type, "media": media.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var _id: GraphQLID? {
          get {
            return resultMap["_id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "_id")
          }
        }

        public var isPublic: Bool? {
          get {
            return resultMap["isPublic"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "isPublic")
          }
        }

        public var ownerId: GraphQLID? {
          get {
            return resultMap["ownerId"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "ownerId")
          }
        }

        public var subscribers: [Subscriber?]? {
          get {
            return (resultMap["subscribers"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Subscriber?] in value.map { (value: ResultMap?) -> Subscriber? in value.flatMap { (value: ResultMap) -> Subscriber in Subscriber(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [Subscriber?]) -> [ResultMap?] in value.map { (value: Subscriber?) -> ResultMap? in value.flatMap { (value: Subscriber) -> ResultMap in value.resultMap } } }, forKey: "subscribers")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var description: String? {
          get {
            return resultMap["description"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "description")
          }
        }

        public var type: String? {
          get {
            return resultMap["type"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "type")
          }
        }

        public var media: [Medium?]? {
          get {
            return (resultMap["media"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Medium?] in value.map { (value: ResultMap?) -> Medium? in value.flatMap { (value: ResultMap) -> Medium in Medium(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }, forKey: "media")
          }
        }

        public var createdAt: String? {
          get {
            return resultMap["createdAt"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String? {
          get {
            return resultMap["updatedAt"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Subscriber: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["userRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("_id", type: .scalar(GraphQLID.self)),
              GraphQLField("name", type: .scalar(String.self)),
              GraphQLField("photo", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(_id: GraphQLID? = nil, name: String? = nil, photo: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "userRef", "_id": _id, "name": name, "photo": photo])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var _id: GraphQLID? {
            get {
              return resultMap["_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }

          public var photo: String? {
            get {
              return resultMap["photo"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "photo")
            }
          }
        }

        public struct Medium: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["outputMedia"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("image", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(image: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "outputMedia", "image": image])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var image: String? {
            get {
              return resultMap["image"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "image")
            }
          }
        }
      }
    }
  }
}

public final class GetListDetailsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GetListDetails($id: ID!, $value: Int) {
      getListDetails(input: {id: $id, value: $value}) {
        __typename
        message
        success
        totalLists
        listDetails {
          __typename
          _id
          isPublic
          name
          description
          ownerId {
            __typename
            _id
            name
          }
          media {
            __typename
            image
          }
          updatedAt
        }
        data {
          __typename
          _id
          data
          title
          eventSchedule {
            __typename
            start_time
            end_time
          }
          business {
            __typename
            _id
            company_name
            favorites
            filter_tags
            default_image_url
            location {
              __typename
              type
              coordinates
            }
            hours_format {
              __typename
              StartDay
              EndDay
              Start
              End
            }
          }
          businessLocation {
            __typename
            type
            coordinates
          }
          likes
          taggedUsers {
            __typename
            _id
            name
          }
          taggedLists {
            __typename
            _id
            name
          }
          ownerId {
            __typename
            _id
            name
            photo
          }
          listId {
            __typename
            _id
            name
            media {
              __typename
              image
            }
          }
          totalPosts {
            __typename
            totalPosts
          }
          media
          totalComments {
            __typename
            totalCount
          }
          createdAt
        }
      }
    }
    """

  public let operationName: String = "GetListDetails"

  public var id: GraphQLID
  public var value: Int?

  public init(id: GraphQLID, value: Int? = nil) {
    self.id = id
    self.value = value
  }

  public var variables: GraphQLMap? {
    return ["id": id, "value": value]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("getListDetails", arguments: ["input": ["id": GraphQLVariable("id"), "value": GraphQLVariable("value")]], type: .nonNull(.object(GetListDetail.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(getListDetails: GetListDetail) {
      self.init(unsafeResultMap: ["__typename": "Query", "getListDetails": getListDetails.resultMap])
    }

    public var getListDetails: GetListDetail {
      get {
        return GetListDetail(unsafeResultMap: resultMap["getListDetails"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "getListDetails")
      }
    }

    public struct GetListDetail: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["getListResponse"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message", type: .nonNull(.scalar(String.self))),
          GraphQLField("success", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("totalLists", type: .scalar(Int.self)),
          GraphQLField("listDetails", type: .object(ListDetail.selections)),
          GraphQLField("data", type: .list(.object(Datum.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(message: String, success: Bool, totalLists: Int? = nil, listDetails: ListDetail? = nil, data: [Datum?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "getListResponse", "message": message, "success": success, "totalLists": totalLists, "listDetails": listDetails.flatMap { (value: ListDetail) -> ResultMap in value.resultMap }, "data": data.flatMap { (value: [Datum?]) -> [ResultMap?] in value.map { (value: Datum?) -> ResultMap? in value.flatMap { (value: Datum) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var message: String {
        get {
          return resultMap["message"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "message")
        }
      }

      public var success: Bool {
        get {
          return resultMap["success"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "success")
        }
      }

      public var totalLists: Int? {
        get {
          return resultMap["totalLists"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "totalLists")
        }
      }

      public var listDetails: ListDetail? {
        get {
          return (resultMap["listDetails"] as? ResultMap).flatMap { ListDetail(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "listDetails")
        }
      }

      public var data: [Datum?]? {
        get {
          return (resultMap["data"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Datum?] in value.map { (value: ResultMap?) -> Datum? in value.flatMap { (value: ResultMap) -> Datum in Datum(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Datum?]) -> [ResultMap?] in value.map { (value: Datum?) -> ResultMap? in value.flatMap { (value: Datum) -> ResultMap in value.resultMap } } }, forKey: "data")
        }
      }

      public struct ListDetail: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["listRef"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("_id", type: .scalar(GraphQLID.self)),
            GraphQLField("isPublic", type: .scalar(Bool.self)),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("description", type: .scalar(String.self)),
            GraphQLField("ownerId", type: .object(OwnerId.selections)),
            GraphQLField("media", type: .list(.object(Medium.selections))),
            GraphQLField("updatedAt", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(_id: GraphQLID? = nil, isPublic: Bool? = nil, name: String? = nil, description: String? = nil, ownerId: OwnerId? = nil, media: [Medium?]? = nil, updatedAt: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "listRef", "_id": _id, "isPublic": isPublic, "name": name, "description": description, "ownerId": ownerId.flatMap { (value: OwnerId) -> ResultMap in value.resultMap }, "media": media.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var _id: GraphQLID? {
          get {
            return resultMap["_id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "_id")
          }
        }

        public var isPublic: Bool? {
          get {
            return resultMap["isPublic"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "isPublic")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var description: String? {
          get {
            return resultMap["description"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "description")
          }
        }

        public var ownerId: OwnerId? {
          get {
            return (resultMap["ownerId"] as? ResultMap).flatMap { OwnerId(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "ownerId")
          }
        }

        public var media: [Medium?]? {
          get {
            return (resultMap["media"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Medium?] in value.map { (value: ResultMap?) -> Medium? in value.flatMap { (value: ResultMap) -> Medium in Medium(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }, forKey: "media")
          }
        }

        public var updatedAt: String? {
          get {
            return resultMap["updatedAt"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct OwnerId: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["userDataRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("_id", type: .scalar(GraphQLID.self)),
              GraphQLField("name", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(_id: GraphQLID? = nil, name: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "userDataRef", "_id": _id, "name": name])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var _id: GraphQLID? {
            get {
              return resultMap["_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }
        }

        public struct Medium: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["outputMedia"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("image", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(image: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "outputMedia", "image": image])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var image: String? {
            get {
              return resultMap["image"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "image")
            }
          }
        }
      }

      public struct Datum: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["getListDataRef"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("_id", type: .scalar(GraphQLID.self)),
            GraphQLField("data", type: .scalar(String.self)),
            GraphQLField("title", type: .scalar(String.self)),
            GraphQLField("eventSchedule", type: .object(EventSchedule.selections)),
            GraphQLField("business", type: .list(.object(Business.selections))),
            GraphQLField("businessLocation", type: .object(BusinessLocation.selections)),
            GraphQLField("likes", type: .list(.scalar(String.self))),
            GraphQLField("taggedUsers", type: .list(.object(TaggedUser.selections))),
            GraphQLField("taggedLists", type: .list(.object(TaggedList.selections))),
            GraphQLField("ownerId", type: .list(.object(OwnerId.selections))),
            GraphQLField("listId", type: .list(.object(ListId.selections))),
            GraphQLField("totalPosts", type: .list(.object(TotalPost.selections))),
            GraphQLField("media", type: .list(.scalar(String.self))),
            GraphQLField("totalComments", type: .list(.object(TotalComment.selections))),
            GraphQLField("createdAt", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(_id: GraphQLID? = nil, data: String? = nil, title: String? = nil, eventSchedule: EventSchedule? = nil, business: [Business?]? = nil, businessLocation: BusinessLocation? = nil, likes: [String?]? = nil, taggedUsers: [TaggedUser?]? = nil, taggedLists: [TaggedList?]? = nil, ownerId: [OwnerId?]? = nil, listId: [ListId?]? = nil, totalPosts: [TotalPost?]? = nil, media: [String?]? = nil, totalComments: [TotalComment?]? = nil, createdAt: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "getListDataRef", "_id": _id, "data": data, "title": title, "eventSchedule": eventSchedule.flatMap { (value: EventSchedule) -> ResultMap in value.resultMap }, "business": business.flatMap { (value: [Business?]) -> [ResultMap?] in value.map { (value: Business?) -> ResultMap? in value.flatMap { (value: Business) -> ResultMap in value.resultMap } } }, "businessLocation": businessLocation.flatMap { (value: BusinessLocation) -> ResultMap in value.resultMap }, "likes": likes, "taggedUsers": taggedUsers.flatMap { (value: [TaggedUser?]) -> [ResultMap?] in value.map { (value: TaggedUser?) -> ResultMap? in value.flatMap { (value: TaggedUser) -> ResultMap in value.resultMap } } }, "taggedLists": taggedLists.flatMap { (value: [TaggedList?]) -> [ResultMap?] in value.map { (value: TaggedList?) -> ResultMap? in value.flatMap { (value: TaggedList) -> ResultMap in value.resultMap } } }, "ownerId": ownerId.flatMap { (value: [OwnerId?]) -> [ResultMap?] in value.map { (value: OwnerId?) -> ResultMap? in value.flatMap { (value: OwnerId) -> ResultMap in value.resultMap } } }, "listId": listId.flatMap { (value: [ListId?]) -> [ResultMap?] in value.map { (value: ListId?) -> ResultMap? in value.flatMap { (value: ListId) -> ResultMap in value.resultMap } } }, "totalPosts": totalPosts.flatMap { (value: [TotalPost?]) -> [ResultMap?] in value.map { (value: TotalPost?) -> ResultMap? in value.flatMap { (value: TotalPost) -> ResultMap in value.resultMap } } }, "media": media, "totalComments": totalComments.flatMap { (value: [TotalComment?]) -> [ResultMap?] in value.map { (value: TotalComment?) -> ResultMap? in value.flatMap { (value: TotalComment) -> ResultMap in value.resultMap } } }, "createdAt": createdAt])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var _id: GraphQLID? {
          get {
            return resultMap["_id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "_id")
          }
        }

        public var data: String? {
          get {
            return resultMap["data"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "data")
          }
        }

        public var title: String? {
          get {
            return resultMap["title"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "title")
          }
        }

        public var eventSchedule: EventSchedule? {
          get {
            return (resultMap["eventSchedule"] as? ResultMap).flatMap { EventSchedule(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "eventSchedule")
          }
        }

        public var business: [Business?]? {
          get {
            return (resultMap["business"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Business?] in value.map { (value: ResultMap?) -> Business? in value.flatMap { (value: ResultMap) -> Business in Business(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [Business?]) -> [ResultMap?] in value.map { (value: Business?) -> ResultMap? in value.flatMap { (value: Business) -> ResultMap in value.resultMap } } }, forKey: "business")
          }
        }

        public var businessLocation: BusinessLocation? {
          get {
            return (resultMap["businessLocation"] as? ResultMap).flatMap { BusinessLocation(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "businessLocation")
          }
        }

        public var likes: [String?]? {
          get {
            return resultMap["likes"] as? [String?]
          }
          set {
            resultMap.updateValue(newValue, forKey: "likes")
          }
        }

        public var taggedUsers: [TaggedUser?]? {
          get {
            return (resultMap["taggedUsers"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [TaggedUser?] in value.map { (value: ResultMap?) -> TaggedUser? in value.flatMap { (value: ResultMap) -> TaggedUser in TaggedUser(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [TaggedUser?]) -> [ResultMap?] in value.map { (value: TaggedUser?) -> ResultMap? in value.flatMap { (value: TaggedUser) -> ResultMap in value.resultMap } } }, forKey: "taggedUsers")
          }
        }

        public var taggedLists: [TaggedList?]? {
          get {
            return (resultMap["taggedLists"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [TaggedList?] in value.map { (value: ResultMap?) -> TaggedList? in value.flatMap { (value: ResultMap) -> TaggedList in TaggedList(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [TaggedList?]) -> [ResultMap?] in value.map { (value: TaggedList?) -> ResultMap? in value.flatMap { (value: TaggedList) -> ResultMap in value.resultMap } } }, forKey: "taggedLists")
          }
        }

        public var ownerId: [OwnerId?]? {
          get {
            return (resultMap["ownerId"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [OwnerId?] in value.map { (value: ResultMap?) -> OwnerId? in value.flatMap { (value: ResultMap) -> OwnerId in OwnerId(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [OwnerId?]) -> [ResultMap?] in value.map { (value: OwnerId?) -> ResultMap? in value.flatMap { (value: OwnerId) -> ResultMap in value.resultMap } } }, forKey: "ownerId")
          }
        }

        public var listId: [ListId?]? {
          get {
            return (resultMap["listId"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [ListId?] in value.map { (value: ResultMap?) -> ListId? in value.flatMap { (value: ResultMap) -> ListId in ListId(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [ListId?]) -> [ResultMap?] in value.map { (value: ListId?) -> ResultMap? in value.flatMap { (value: ListId) -> ResultMap in value.resultMap } } }, forKey: "listId")
          }
        }

        public var totalPosts: [TotalPost?]? {
          get {
            return (resultMap["totalPosts"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [TotalPost?] in value.map { (value: ResultMap?) -> TotalPost? in value.flatMap { (value: ResultMap) -> TotalPost in TotalPost(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [TotalPost?]) -> [ResultMap?] in value.map { (value: TotalPost?) -> ResultMap? in value.flatMap { (value: TotalPost) -> ResultMap in value.resultMap } } }, forKey: "totalPosts")
          }
        }

        public var media: [String?]? {
          get {
            return resultMap["media"] as? [String?]
          }
          set {
            resultMap.updateValue(newValue, forKey: "media")
          }
        }

        public var totalComments: [TotalComment?]? {
          get {
            return (resultMap["totalComments"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [TotalComment?] in value.map { (value: ResultMap?) -> TotalComment? in value.flatMap { (value: ResultMap) -> TotalComment in TotalComment(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [TotalComment?]) -> [ResultMap?] in value.map { (value: TotalComment?) -> ResultMap? in value.flatMap { (value: TotalComment) -> ResultMap in value.resultMap } } }, forKey: "totalComments")
          }
        }

        public var createdAt: String? {
          get {
            return resultMap["createdAt"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "createdAt")
          }
        }

        public struct EventSchedule: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["eventScheduleRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("start_time", type: .scalar(String.self)),
              GraphQLField("end_time", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(startTime: String? = nil, endTime: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "eventScheduleRef", "start_time": startTime, "end_time": endTime])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var startTime: String? {
            get {
              return resultMap["start_time"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "start_time")
            }
          }

          public var endTime: String? {
            get {
              return resultMap["end_time"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "end_time")
            }
          }
        }

        public struct Business: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["businessRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("_id", type: .scalar(GraphQLID.self)),
              GraphQLField("company_name", type: .scalar(String.self)),
              GraphQLField("favorites", type: .list(.scalar(GraphQLID.self))),
              GraphQLField("filter_tags", type: .list(.scalar(String.self))),
              GraphQLField("default_image_url", type: .scalar(String.self)),
              GraphQLField("location", type: .object(Location.selections)),
              GraphQLField("hours_format", type: .list(.object(HoursFormat.selections))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(_id: GraphQLID? = nil, companyName: String? = nil, favorites: [GraphQLID?]? = nil, filterTags: [String?]? = nil, defaultImageUrl: String? = nil, location: Location? = nil, hoursFormat: [HoursFormat?]? = nil) {
            self.init(unsafeResultMap: ["__typename": "businessRef", "_id": _id, "company_name": companyName, "favorites": favorites, "filter_tags": filterTags, "default_image_url": defaultImageUrl, "location": location.flatMap { (value: Location) -> ResultMap in value.resultMap }, "hours_format": hoursFormat.flatMap { (value: [HoursFormat?]) -> [ResultMap?] in value.map { (value: HoursFormat?) -> ResultMap? in value.flatMap { (value: HoursFormat) -> ResultMap in value.resultMap } } }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var _id: GraphQLID? {
            get {
              return resultMap["_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }

          public var companyName: String? {
            get {
              return resultMap["company_name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "company_name")
            }
          }

          public var favorites: [GraphQLID?]? {
            get {
              return resultMap["favorites"] as? [GraphQLID?]
            }
            set {
              resultMap.updateValue(newValue, forKey: "favorites")
            }
          }

          public var filterTags: [String?]? {
            get {
              return resultMap["filter_tags"] as? [String?]
            }
            set {
              resultMap.updateValue(newValue, forKey: "filter_tags")
            }
          }

          public var defaultImageUrl: String? {
            get {
              return resultMap["default_image_url"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "default_image_url")
            }
          }

          public var location: Location? {
            get {
              return (resultMap["location"] as? ResultMap).flatMap { Location(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "location")
            }
          }

          public var hoursFormat: [HoursFormat?]? {
            get {
              return (resultMap["hours_format"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [HoursFormat?] in value.map { (value: ResultMap?) -> HoursFormat? in value.flatMap { (value: ResultMap) -> HoursFormat in HoursFormat(unsafeResultMap: value) } } }
            }
            set {
              resultMap.updateValue(newValue.flatMap { (value: [HoursFormat?]) -> [ResultMap?] in value.map { (value: HoursFormat?) -> ResultMap? in value.flatMap { (value: HoursFormat) -> ResultMap in value.resultMap } } }, forKey: "hours_format")
            }
          }

          public struct Location: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["locationRef"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("type", type: .scalar(String.self)),
                GraphQLField("coordinates", type: .list(.scalar(Double.self))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(type: String? = nil, coordinates: [Double?]? = nil) {
              self.init(unsafeResultMap: ["__typename": "locationRef", "type": type, "coordinates": coordinates])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var type: String? {
              get {
                return resultMap["type"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "type")
              }
            }

            public var coordinates: [Double?]? {
              get {
                return resultMap["coordinates"] as? [Double?]
              }
              set {
                resultMap.updateValue(newValue, forKey: "coordinates")
              }
            }
          }

          public struct HoursFormat: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["hoursFormatRef"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("StartDay", type: .scalar(String.self)),
                GraphQLField("EndDay", type: .scalar(String.self)),
                GraphQLField("Start", type: .scalar(String.self)),
                GraphQLField("End", type: .scalar(String.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(startDay: String? = nil, endDay: String? = nil, start: String? = nil, end: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "hoursFormatRef", "StartDay": startDay, "EndDay": endDay, "Start": start, "End": end])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var startDay: String? {
              get {
                return resultMap["StartDay"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "StartDay")
              }
            }

            public var endDay: String? {
              get {
                return resultMap["EndDay"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "EndDay")
              }
            }

            public var start: String? {
              get {
                return resultMap["Start"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "Start")
              }
            }

            public var end: String? {
              get {
                return resultMap["End"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "End")
              }
            }
          }
        }

        public struct BusinessLocation: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["locationRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("type", type: .scalar(String.self)),
              GraphQLField("coordinates", type: .list(.scalar(Double.self))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(type: String? = nil, coordinates: [Double?]? = nil) {
            self.init(unsafeResultMap: ["__typename": "locationRef", "type": type, "coordinates": coordinates])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var type: String? {
            get {
              return resultMap["type"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "type")
            }
          }

          public var coordinates: [Double?]? {
            get {
              return resultMap["coordinates"] as? [Double?]
            }
            set {
              resultMap.updateValue(newValue, forKey: "coordinates")
            }
          }
        }

        public struct TaggedUser: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["userProfileRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("_id", type: .scalar(GraphQLID.self)),
              GraphQLField("name", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(_id: GraphQLID? = nil, name: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "userProfileRef", "_id": _id, "name": name])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var _id: GraphQLID? {
            get {
              return resultMap["_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }
        }

        public struct TaggedList: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["listRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("_id", type: .scalar(GraphQLID.self)),
              GraphQLField("name", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(_id: GraphQLID? = nil, name: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "listRef", "_id": _id, "name": name])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var _id: GraphQLID? {
            get {
              return resultMap["_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }
        }

        public struct OwnerId: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["userProfileRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("_id", type: .scalar(GraphQLID.self)),
              GraphQLField("name", type: .scalar(String.self)),
              GraphQLField("photo", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(_id: GraphQLID? = nil, name: String? = nil, photo: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "userProfileRef", "_id": _id, "name": name, "photo": photo])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var _id: GraphQLID? {
            get {
              return resultMap["_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }

          public var photo: String? {
            get {
              return resultMap["photo"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "photo")
            }
          }
        }

        public struct ListId: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["listRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("_id", type: .scalar(GraphQLID.self)),
              GraphQLField("name", type: .scalar(String.self)),
              GraphQLField("media", type: .list(.object(Medium.selections))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(_id: GraphQLID? = nil, name: String? = nil, media: [Medium?]? = nil) {
            self.init(unsafeResultMap: ["__typename": "listRef", "_id": _id, "name": name, "media": media.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var _id: GraphQLID? {
            get {
              return resultMap["_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }

          public var media: [Medium?]? {
            get {
              return (resultMap["media"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Medium?] in value.map { (value: ResultMap?) -> Medium? in value.flatMap { (value: ResultMap) -> Medium in Medium(unsafeResultMap: value) } } }
            }
            set {
              resultMap.updateValue(newValue.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }, forKey: "media")
            }
          }

          public struct Medium: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["outputMedia"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("image", type: .scalar(String.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(image: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "outputMedia", "image": image])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var image: String? {
              get {
                return resultMap["image"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "image")
              }
            }
          }
        }

        public struct TotalPost: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["totalPostsRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("totalPosts", type: .scalar(Int.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(totalPosts: Int? = nil) {
            self.init(unsafeResultMap: ["__typename": "totalPostsRef", "totalPosts": totalPosts])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var totalPosts: Int? {
            get {
              return resultMap["totalPosts"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "totalPosts")
            }
          }
        }

        public struct TotalComment: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["homeSearchTotalCommentsRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("totalCount", type: .scalar(Int.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(totalCount: Int? = nil) {
            self.init(unsafeResultMap: ["__typename": "homeSearchTotalCommentsRef", "totalCount": totalCount])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var totalCount: Int? {
            get {
              return resultMap["totalCount"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "totalCount")
            }
          }
        }
      }
    }
  }
}

public final class FetchMostTrendingListsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query FetchMostTrendingLists($value: Int) {
      fetchMostTrendingLists(input: {value: $value}) {
        __typename
        message
        success
        totalLists
        list {
          __typename
          _id
          name
          description
          isPublic
          media {
            __typename
            image
          }
          ownerId {
            __typename
            _id
            name
          }
          subscribers {
            __typename
            _id
            name
            photo
          }
          updatedAt
        }
      }
    }
    """

  public let operationName: String = "FetchMostTrendingLists"

  public var value: Int?

  public init(value: Int? = nil) {
    self.value = value
  }

  public var variables: GraphQLMap? {
    return ["value": value]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("fetchMostTrendingLists", arguments: ["input": ["value": GraphQLVariable("value")]], type: .nonNull(.object(FetchMostTrendingList.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(fetchMostTrendingLists: FetchMostTrendingList) {
      self.init(unsafeResultMap: ["__typename": "Query", "fetchMostTrendingLists": fetchMostTrendingLists.resultMap])
    }

    public var fetchMostTrendingLists: FetchMostTrendingList {
      get {
        return FetchMostTrendingList(unsafeResultMap: resultMap["fetchMostTrendingLists"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "fetchMostTrendingLists")
      }
    }

    public struct FetchMostTrendingList: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["listDiscoverResponse"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message", type: .nonNull(.scalar(String.self))),
          GraphQLField("success", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("totalLists", type: .scalar(Int.self)),
          GraphQLField("list", type: .list(.object(List.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(message: String, success: Bool, totalLists: Int? = nil, list: [List?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "listDiscoverResponse", "message": message, "success": success, "totalLists": totalLists, "list": list.flatMap { (value: [List?]) -> [ResultMap?] in value.map { (value: List?) -> ResultMap? in value.flatMap { (value: List) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var message: String {
        get {
          return resultMap["message"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "message")
        }
      }

      public var success: Bool {
        get {
          return resultMap["success"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "success")
        }
      }

      public var totalLists: Int? {
        get {
          return resultMap["totalLists"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "totalLists")
        }
      }

      public var list: [List?]? {
        get {
          return (resultMap["list"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [List?] in value.map { (value: ResultMap?) -> List? in value.flatMap { (value: ResultMap) -> List in List(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [List?]) -> [ResultMap?] in value.map { (value: List?) -> ResultMap? in value.flatMap { (value: List) -> ResultMap in value.resultMap } } }, forKey: "list")
        }
      }

      public struct List: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["discoverListRef"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("_id", type: .scalar(GraphQLID.self)),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("description", type: .scalar(String.self)),
            GraphQLField("isPublic", type: .scalar(Bool.self)),
            GraphQLField("media", type: .list(.object(Medium.selections))),
            GraphQLField("ownerId", type: .list(.object(OwnerId.selections))),
            GraphQLField("subscribers", type: .list(.object(Subscriber.selections))),
            GraphQLField("updatedAt", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(_id: GraphQLID? = nil, name: String? = nil, description: String? = nil, isPublic: Bool? = nil, media: [Medium?]? = nil, ownerId: [OwnerId?]? = nil, subscribers: [Subscriber?]? = nil, updatedAt: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "discoverListRef", "_id": _id, "name": name, "description": description, "isPublic": isPublic, "media": media.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }, "ownerId": ownerId.flatMap { (value: [OwnerId?]) -> [ResultMap?] in value.map { (value: OwnerId?) -> ResultMap? in value.flatMap { (value: OwnerId) -> ResultMap in value.resultMap } } }, "subscribers": subscribers.flatMap { (value: [Subscriber?]) -> [ResultMap?] in value.map { (value: Subscriber?) -> ResultMap? in value.flatMap { (value: Subscriber) -> ResultMap in value.resultMap } } }, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var _id: GraphQLID? {
          get {
            return resultMap["_id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "_id")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var description: String? {
          get {
            return resultMap["description"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "description")
          }
        }

        public var isPublic: Bool? {
          get {
            return resultMap["isPublic"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "isPublic")
          }
        }

        public var media: [Medium?]? {
          get {
            return (resultMap["media"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Medium?] in value.map { (value: ResultMap?) -> Medium? in value.flatMap { (value: ResultMap) -> Medium in Medium(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }, forKey: "media")
          }
        }

        public var ownerId: [OwnerId?]? {
          get {
            return (resultMap["ownerId"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [OwnerId?] in value.map { (value: ResultMap?) -> OwnerId? in value.flatMap { (value: ResultMap) -> OwnerId in OwnerId(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [OwnerId?]) -> [ResultMap?] in value.map { (value: OwnerId?) -> ResultMap? in value.flatMap { (value: OwnerId) -> ResultMap in value.resultMap } } }, forKey: "ownerId")
          }
        }

        public var subscribers: [Subscriber?]? {
          get {
            return (resultMap["subscribers"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Subscriber?] in value.map { (value: ResultMap?) -> Subscriber? in value.flatMap { (value: ResultMap) -> Subscriber in Subscriber(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [Subscriber?]) -> [ResultMap?] in value.map { (value: Subscriber?) -> ResultMap? in value.flatMap { (value: Subscriber) -> ResultMap in value.resultMap } } }, forKey: "subscribers")
          }
        }

        public var updatedAt: String? {
          get {
            return resultMap["updatedAt"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Medium: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["outputMedia"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("image", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(image: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "outputMedia", "image": image])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var image: String? {
            get {
              return resultMap["image"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "image")
            }
          }
        }

        public struct OwnerId: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["userProfileRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("_id", type: .scalar(GraphQLID.self)),
              GraphQLField("name", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(_id: GraphQLID? = nil, name: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "userProfileRef", "_id": _id, "name": name])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var _id: GraphQLID? {
            get {
              return resultMap["_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }
        }

        public struct Subscriber: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["userDataRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("_id", type: .scalar(GraphQLID.self)),
              GraphQLField("name", type: .scalar(String.self)),
              GraphQLField("photo", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(_id: GraphQLID? = nil, name: String? = nil, photo: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "userDataRef", "_id": _id, "name": name, "photo": photo])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var _id: GraphQLID? {
            get {
              return resultMap["_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }

          public var photo: String? {
            get {
              return resultMap["photo"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "photo")
            }
          }
        }
      }
    }
  }
}

public final class FetchMostPopularListsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query FetchMostPopularLists($value: Int) {
      fetchMostPopularLists(input: {value: $value}) {
        __typename
        message
        success
        totalLists
        list {
          __typename
          _id
          name
          description
          isPublic
          media {
            __typename
            image
          }
          ownerId {
            __typename
            _id
            name
          }
          subscribers {
            __typename
            _id
            name
            photo
          }
          updatedAt
        }
      }
    }
    """

  public let operationName: String = "FetchMostPopularLists"

  public var value: Int?

  public init(value: Int? = nil) {
    self.value = value
  }

  public var variables: GraphQLMap? {
    return ["value": value]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("fetchMostPopularLists", arguments: ["input": ["value": GraphQLVariable("value")]], type: .nonNull(.object(FetchMostPopularList.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(fetchMostPopularLists: FetchMostPopularList) {
      self.init(unsafeResultMap: ["__typename": "Query", "fetchMostPopularLists": fetchMostPopularLists.resultMap])
    }

    public var fetchMostPopularLists: FetchMostPopularList {
      get {
        return FetchMostPopularList(unsafeResultMap: resultMap["fetchMostPopularLists"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "fetchMostPopularLists")
      }
    }

    public struct FetchMostPopularList: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["listDiscoverResponse"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message", type: .nonNull(.scalar(String.self))),
          GraphQLField("success", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("totalLists", type: .scalar(Int.self)),
          GraphQLField("list", type: .list(.object(List.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(message: String, success: Bool, totalLists: Int? = nil, list: [List?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "listDiscoverResponse", "message": message, "success": success, "totalLists": totalLists, "list": list.flatMap { (value: [List?]) -> [ResultMap?] in value.map { (value: List?) -> ResultMap? in value.flatMap { (value: List) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var message: String {
        get {
          return resultMap["message"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "message")
        }
      }

      public var success: Bool {
        get {
          return resultMap["success"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "success")
        }
      }

      public var totalLists: Int? {
        get {
          return resultMap["totalLists"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "totalLists")
        }
      }

      public var list: [List?]? {
        get {
          return (resultMap["list"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [List?] in value.map { (value: ResultMap?) -> List? in value.flatMap { (value: ResultMap) -> List in List(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [List?]) -> [ResultMap?] in value.map { (value: List?) -> ResultMap? in value.flatMap { (value: List) -> ResultMap in value.resultMap } } }, forKey: "list")
        }
      }

      public struct List: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["discoverListRef"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("_id", type: .scalar(GraphQLID.self)),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("description", type: .scalar(String.self)),
            GraphQLField("isPublic", type: .scalar(Bool.self)),
            GraphQLField("media", type: .list(.object(Medium.selections))),
            GraphQLField("ownerId", type: .list(.object(OwnerId.selections))),
            GraphQLField("subscribers", type: .list(.object(Subscriber.selections))),
            GraphQLField("updatedAt", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(_id: GraphQLID? = nil, name: String? = nil, description: String? = nil, isPublic: Bool? = nil, media: [Medium?]? = nil, ownerId: [OwnerId?]? = nil, subscribers: [Subscriber?]? = nil, updatedAt: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "discoverListRef", "_id": _id, "name": name, "description": description, "isPublic": isPublic, "media": media.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }, "ownerId": ownerId.flatMap { (value: [OwnerId?]) -> [ResultMap?] in value.map { (value: OwnerId?) -> ResultMap? in value.flatMap { (value: OwnerId) -> ResultMap in value.resultMap } } }, "subscribers": subscribers.flatMap { (value: [Subscriber?]) -> [ResultMap?] in value.map { (value: Subscriber?) -> ResultMap? in value.flatMap { (value: Subscriber) -> ResultMap in value.resultMap } } }, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var _id: GraphQLID? {
          get {
            return resultMap["_id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "_id")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var description: String? {
          get {
            return resultMap["description"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "description")
          }
        }

        public var isPublic: Bool? {
          get {
            return resultMap["isPublic"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "isPublic")
          }
        }

        public var media: [Medium?]? {
          get {
            return (resultMap["media"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Medium?] in value.map { (value: ResultMap?) -> Medium? in value.flatMap { (value: ResultMap) -> Medium in Medium(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }, forKey: "media")
          }
        }

        public var ownerId: [OwnerId?]? {
          get {
            return (resultMap["ownerId"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [OwnerId?] in value.map { (value: ResultMap?) -> OwnerId? in value.flatMap { (value: ResultMap) -> OwnerId in OwnerId(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [OwnerId?]) -> [ResultMap?] in value.map { (value: OwnerId?) -> ResultMap? in value.flatMap { (value: OwnerId) -> ResultMap in value.resultMap } } }, forKey: "ownerId")
          }
        }

        public var subscribers: [Subscriber?]? {
          get {
            return (resultMap["subscribers"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Subscriber?] in value.map { (value: ResultMap?) -> Subscriber? in value.flatMap { (value: ResultMap) -> Subscriber in Subscriber(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [Subscriber?]) -> [ResultMap?] in value.map { (value: Subscriber?) -> ResultMap? in value.flatMap { (value: Subscriber) -> ResultMap in value.resultMap } } }, forKey: "subscribers")
          }
        }

        public var updatedAt: String? {
          get {
            return resultMap["updatedAt"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Medium: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["outputMedia"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("image", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(image: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "outputMedia", "image": image])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var image: String? {
            get {
              return resultMap["image"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "image")
            }
          }
        }

        public struct OwnerId: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["userProfileRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("_id", type: .scalar(GraphQLID.self)),
              GraphQLField("name", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(_id: GraphQLID? = nil, name: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "userProfileRef", "_id": _id, "name": name])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var _id: GraphQLID? {
            get {
              return resultMap["_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }
        }

        public struct Subscriber: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["userDataRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("_id", type: .scalar(GraphQLID.self)),
              GraphQLField("name", type: .scalar(String.self)),
              GraphQLField("photo", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(_id: GraphQLID? = nil, name: String? = nil, photo: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "userDataRef", "_id": _id, "name": name, "photo": photo])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var _id: GraphQLID? {
            get {
              return resultMap["_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }

          public var photo: String? {
            get {
              return resultMap["photo"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "photo")
            }
          }
        }
      }
    }
  }
}

public final class ListSearchQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query ListSearch($value: Int, $search: String, $userId: String, $subscriberId: String) {
      listSearch(
        input: {value: $value, search: $search, userId: $userId, subscriberId: $subscriberId}
      ) {
        __typename
        message
        success
        totalLists
        list {
          __typename
          _id
          name
          description
          isPublic
          media {
            __typename
            image
          }
          ownerId
          subscribers {
            __typename
            _id
            name
            photo
          }
          updatedAt
        }
      }
    }
    """

  public let operationName: String = "ListSearch"

  public var value: Int?
  public var search: String?
  public var userId: String?
  public var subscriberId: String?

  public init(value: Int? = nil, search: String? = nil, userId: String? = nil, subscriberId: String? = nil) {
    self.value = value
    self.search = search
    self.userId = userId
    self.subscriberId = subscriberId
  }

  public var variables: GraphQLMap? {
    return ["value": value, "search": search, "userId": userId, "subscriberId": subscriberId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("listSearch", arguments: ["input": ["value": GraphQLVariable("value"), "search": GraphQLVariable("search"), "userId": GraphQLVariable("userId"), "subscriberId": GraphQLVariable("subscriberId")]], type: .nonNull(.object(ListSearch.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(listSearch: ListSearch) {
      self.init(unsafeResultMap: ["__typename": "Query", "listSearch": listSearch.resultMap])
    }

    public var listSearch: ListSearch {
      get {
        return ListSearch(unsafeResultMap: resultMap["listSearch"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "listSearch")
      }
    }

    public struct ListSearch: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["listUserResponse"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message", type: .nonNull(.scalar(String.self))),
          GraphQLField("success", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("totalLists", type: .scalar(Int.self)),
          GraphQLField("list", type: .list(.object(List.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(message: String, success: Bool, totalLists: Int? = nil, list: [List?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "listUserResponse", "message": message, "success": success, "totalLists": totalLists, "list": list.flatMap { (value: [List?]) -> [ResultMap?] in value.map { (value: List?) -> ResultMap? in value.flatMap { (value: List) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var message: String {
        get {
          return resultMap["message"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "message")
        }
      }

      public var success: Bool {
        get {
          return resultMap["success"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "success")
        }
      }

      public var totalLists: Int? {
        get {
          return resultMap["totalLists"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "totalLists")
        }
      }

      public var list: [List?]? {
        get {
          return (resultMap["list"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [List?] in value.map { (value: ResultMap?) -> List? in value.flatMap { (value: ResultMap) -> List in List(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [List?]) -> [ResultMap?] in value.map { (value: List?) -> ResultMap? in value.flatMap { (value: List) -> ResultMap in value.resultMap } } }, forKey: "list")
        }
      }

      public struct List: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["listUserRef"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("_id", type: .scalar(GraphQLID.self)),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("description", type: .scalar(String.self)),
            GraphQLField("isPublic", type: .scalar(Bool.self)),
            GraphQLField("media", type: .list(.object(Medium.selections))),
            GraphQLField("ownerId", type: .scalar(GraphQLID.self)),
            GraphQLField("subscribers", type: .list(.object(Subscriber.selections))),
            GraphQLField("updatedAt", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(_id: GraphQLID? = nil, name: String? = nil, description: String? = nil, isPublic: Bool? = nil, media: [Medium?]? = nil, ownerId: GraphQLID? = nil, subscribers: [Subscriber?]? = nil, updatedAt: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "listUserRef", "_id": _id, "name": name, "description": description, "isPublic": isPublic, "media": media.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }, "ownerId": ownerId, "subscribers": subscribers.flatMap { (value: [Subscriber?]) -> [ResultMap?] in value.map { (value: Subscriber?) -> ResultMap? in value.flatMap { (value: Subscriber) -> ResultMap in value.resultMap } } }, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var _id: GraphQLID? {
          get {
            return resultMap["_id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "_id")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var description: String? {
          get {
            return resultMap["description"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "description")
          }
        }

        public var isPublic: Bool? {
          get {
            return resultMap["isPublic"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "isPublic")
          }
        }

        public var media: [Medium?]? {
          get {
            return (resultMap["media"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Medium?] in value.map { (value: ResultMap?) -> Medium? in value.flatMap { (value: ResultMap) -> Medium in Medium(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }, forKey: "media")
          }
        }

        public var ownerId: GraphQLID? {
          get {
            return resultMap["ownerId"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "ownerId")
          }
        }

        public var subscribers: [Subscriber?]? {
          get {
            return (resultMap["subscribers"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Subscriber?] in value.map { (value: ResultMap?) -> Subscriber? in value.flatMap { (value: ResultMap) -> Subscriber in Subscriber(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [Subscriber?]) -> [ResultMap?] in value.map { (value: Subscriber?) -> ResultMap? in value.flatMap { (value: Subscriber) -> ResultMap in value.resultMap } } }, forKey: "subscribers")
          }
        }

        public var updatedAt: String? {
          get {
            return resultMap["updatedAt"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Medium: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["outputMedia"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("image", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(image: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "outputMedia", "image": image])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var image: String? {
            get {
              return resultMap["image"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "image")
            }
          }
        }

        public struct Subscriber: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["userRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("_id", type: .scalar(GraphQLID.self)),
              GraphQLField("name", type: .scalar(String.self)),
              GraphQLField("photo", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(_id: GraphQLID? = nil, name: String? = nil, photo: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "userRef", "_id": _id, "name": name, "photo": photo])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var _id: GraphQLID? {
            get {
              return resultMap["_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }

          public var photo: String? {
            get {
              return resultMap["photo"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "photo")
            }
          }
        }
      }
    }
  }
}

public final class GetEventsForTheDayQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GetEventsForTheDay($id: ID, $day: String, $date: Date) {
      getEventsForTheDay(input: {id: $id, day: $day, date: $date}) {
        __typename
        message
        success
        event {
          __typename
          _id
          totalComments
          likes {
            __typename
            _id
            name
          }
          taggedUsers {
            __typename
            _id
            name
          }
          taggedLists {
            __typename
            _id
            name
          }
          eventSchedule {
            __typename
            start_time
            end_time
          }
          location {
            __typename
            type
            coordinates
          }
          user {
            __typename
            _id
            name
            email
            phoneNumber
            photo
          }
          title
          description
          type
          recurring
          media
          createdAt
          updatedAt
        }
      }
    }
    """

  public let operationName: String = "GetEventsForTheDay"

  public var id: GraphQLID?
  public var day: String?
  public var date: String?

  public init(id: GraphQLID? = nil, day: String? = nil, date: String? = nil) {
    self.id = id
    self.day = day
    self.date = date
  }

  public var variables: GraphQLMap? {
    return ["id": id, "day": day, "date": date]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("getEventsForTheDay", arguments: ["input": ["id": GraphQLVariable("id"), "day": GraphQLVariable("day"), "date": GraphQLVariable("date")]], type: .nonNull(.object(GetEventsForTheDay.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(getEventsForTheDay: GetEventsForTheDay) {
      self.init(unsafeResultMap: ["__typename": "Query", "getEventsForTheDay": getEventsForTheDay.resultMap])
    }

    public var getEventsForTheDay: GetEventsForTheDay {
      get {
        return GetEventsForTheDay(unsafeResultMap: resultMap["getEventsForTheDay"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "getEventsForTheDay")
      }
    }

    public struct GetEventsForTheDay: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["eventResponse"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message", type: .nonNull(.scalar(String.self))),
          GraphQLField("success", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("event", type: .list(.object(Event.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(message: String, success: Bool, event: [Event?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "eventResponse", "message": message, "success": success, "event": event.flatMap { (value: [Event?]) -> [ResultMap?] in value.map { (value: Event?) -> ResultMap? in value.flatMap { (value: Event) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var message: String {
        get {
          return resultMap["message"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "message")
        }
      }

      public var success: Bool {
        get {
          return resultMap["success"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "success")
        }
      }

      public var event: [Event?]? {
        get {
          return (resultMap["event"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Event?] in value.map { (value: ResultMap?) -> Event? in value.flatMap { (value: ResultMap) -> Event in Event(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Event?]) -> [ResultMap?] in value.map { (value: Event?) -> ResultMap? in value.flatMap { (value: Event) -> ResultMap in value.resultMap } } }, forKey: "event")
        }
      }

      public struct Event: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["eventRef"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("_id", type: .scalar(GraphQLID.self)),
            GraphQLField("totalComments", type: .scalar(Int.self)),
            GraphQLField("likes", type: .list(.object(Like.selections))),
            GraphQLField("taggedUsers", type: .list(.object(TaggedUser.selections))),
            GraphQLField("taggedLists", type: .list(.object(TaggedList.selections))),
            GraphQLField("eventSchedule", type: .object(EventSchedule.selections)),
            GraphQLField("location", type: .object(Location.selections)),
            GraphQLField("user", type: .object(User.selections)),
            GraphQLField("title", type: .scalar(String.self)),
            GraphQLField("description", type: .scalar(String.self)),
            GraphQLField("type", type: .scalar(String.self)),
            GraphQLField("recurring", type: .list(.scalar(Int.self))),
            GraphQLField("media", type: .list(.scalar(String.self))),
            GraphQLField("createdAt", type: .scalar(String.self)),
            GraphQLField("updatedAt", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(_id: GraphQLID? = nil, totalComments: Int? = nil, likes: [Like?]? = nil, taggedUsers: [TaggedUser?]? = nil, taggedLists: [TaggedList?]? = nil, eventSchedule: EventSchedule? = nil, location: Location? = nil, user: User? = nil, title: String? = nil, description: String? = nil, type: String? = nil, recurring: [Int?]? = nil, media: [String?]? = nil, createdAt: String? = nil, updatedAt: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "eventRef", "_id": _id, "totalComments": totalComments, "likes": likes.flatMap { (value: [Like?]) -> [ResultMap?] in value.map { (value: Like?) -> ResultMap? in value.flatMap { (value: Like) -> ResultMap in value.resultMap } } }, "taggedUsers": taggedUsers.flatMap { (value: [TaggedUser?]) -> [ResultMap?] in value.map { (value: TaggedUser?) -> ResultMap? in value.flatMap { (value: TaggedUser) -> ResultMap in value.resultMap } } }, "taggedLists": taggedLists.flatMap { (value: [TaggedList?]) -> [ResultMap?] in value.map { (value: TaggedList?) -> ResultMap? in value.flatMap { (value: TaggedList) -> ResultMap in value.resultMap } } }, "eventSchedule": eventSchedule.flatMap { (value: EventSchedule) -> ResultMap in value.resultMap }, "location": location.flatMap { (value: Location) -> ResultMap in value.resultMap }, "user": user.flatMap { (value: User) -> ResultMap in value.resultMap }, "title": title, "description": description, "type": type, "recurring": recurring, "media": media, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var _id: GraphQLID? {
          get {
            return resultMap["_id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "_id")
          }
        }

        public var totalComments: Int? {
          get {
            return resultMap["totalComments"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "totalComments")
          }
        }

        public var likes: [Like?]? {
          get {
            return (resultMap["likes"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Like?] in value.map { (value: ResultMap?) -> Like? in value.flatMap { (value: ResultMap) -> Like in Like(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [Like?]) -> [ResultMap?] in value.map { (value: Like?) -> ResultMap? in value.flatMap { (value: Like) -> ResultMap in value.resultMap } } }, forKey: "likes")
          }
        }

        public var taggedUsers: [TaggedUser?]? {
          get {
            return (resultMap["taggedUsers"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [TaggedUser?] in value.map { (value: ResultMap?) -> TaggedUser? in value.flatMap { (value: ResultMap) -> TaggedUser in TaggedUser(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [TaggedUser?]) -> [ResultMap?] in value.map { (value: TaggedUser?) -> ResultMap? in value.flatMap { (value: TaggedUser) -> ResultMap in value.resultMap } } }, forKey: "taggedUsers")
          }
        }

        public var taggedLists: [TaggedList?]? {
          get {
            return (resultMap["taggedLists"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [TaggedList?] in value.map { (value: ResultMap?) -> TaggedList? in value.flatMap { (value: ResultMap) -> TaggedList in TaggedList(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [TaggedList?]) -> [ResultMap?] in value.map { (value: TaggedList?) -> ResultMap? in value.flatMap { (value: TaggedList) -> ResultMap in value.resultMap } } }, forKey: "taggedLists")
          }
        }

        public var eventSchedule: EventSchedule? {
          get {
            return (resultMap["eventSchedule"] as? ResultMap).flatMap { EventSchedule(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "eventSchedule")
          }
        }

        public var location: Location? {
          get {
            return (resultMap["location"] as? ResultMap).flatMap { Location(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "location")
          }
        }

        public var user: User? {
          get {
            return (resultMap["user"] as? ResultMap).flatMap { User(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "user")
          }
        }

        public var title: String? {
          get {
            return resultMap["title"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "title")
          }
        }

        public var description: String? {
          get {
            return resultMap["description"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "description")
          }
        }

        public var type: String? {
          get {
            return resultMap["type"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "type")
          }
        }

        public var recurring: [Int?]? {
          get {
            return resultMap["recurring"] as? [Int?]
          }
          set {
            resultMap.updateValue(newValue, forKey: "recurring")
          }
        }

        public var media: [String?]? {
          get {
            return resultMap["media"] as? [String?]
          }
          set {
            resultMap.updateValue(newValue, forKey: "media")
          }
        }

        public var createdAt: String? {
          get {
            return resultMap["createdAt"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String? {
          get {
            return resultMap["updatedAt"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Like: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["userProfileRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("_id", type: .scalar(GraphQLID.self)),
              GraphQLField("name", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(_id: GraphQLID? = nil, name: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "userProfileRef", "_id": _id, "name": name])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var _id: GraphQLID? {
            get {
              return resultMap["_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }
        }

        public struct TaggedUser: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["userProfileRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("_id", type: .scalar(GraphQLID.self)),
              GraphQLField("name", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(_id: GraphQLID? = nil, name: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "userProfileRef", "_id": _id, "name": name])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var _id: GraphQLID? {
            get {
              return resultMap["_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }
        }

        public struct TaggedList: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["listRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("_id", type: .scalar(GraphQLID.self)),
              GraphQLField("name", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(_id: GraphQLID? = nil, name: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "listRef", "_id": _id, "name": name])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var _id: GraphQLID? {
            get {
              return resultMap["_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }
        }

        public struct EventSchedule: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["eventScheduleRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("start_time", type: .scalar(String.self)),
              GraphQLField("end_time", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(startTime: String? = nil, endTime: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "eventScheduleRef", "start_time": startTime, "end_time": endTime])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var startTime: String? {
            get {
              return resultMap["start_time"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "start_time")
            }
          }

          public var endTime: String? {
            get {
              return resultMap["end_time"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "end_time")
            }
          }
        }

        public struct Location: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["locationRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("type", type: .scalar(String.self)),
              GraphQLField("coordinates", type: .list(.scalar(Double.self))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(type: String? = nil, coordinates: [Double?]? = nil) {
            self.init(unsafeResultMap: ["__typename": "locationRef", "type": type, "coordinates": coordinates])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var type: String? {
            get {
              return resultMap["type"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "type")
            }
          }

          public var coordinates: [Double?]? {
            get {
              return resultMap["coordinates"] as? [Double?]
            }
            set {
              resultMap.updateValue(newValue, forKey: "coordinates")
            }
          }
        }

        public struct User: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["userProfileRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("_id", type: .scalar(GraphQLID.self)),
              GraphQLField("name", type: .scalar(String.self)),
              GraphQLField("email", type: .scalar(String.self)),
              GraphQLField("phoneNumber", type: .scalar(String.self)),
              GraphQLField("photo", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(_id: GraphQLID? = nil, name: String? = nil, email: String? = nil, phoneNumber: String? = nil, photo: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "userProfileRef", "_id": _id, "name": name, "email": email, "phoneNumber": phoneNumber, "photo": photo])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var _id: GraphQLID? {
            get {
              return resultMap["_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }

          public var email: String? {
            get {
              return resultMap["email"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "email")
            }
          }

          public var phoneNumber: String? {
            get {
              return resultMap["phoneNumber"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "phoneNumber")
            }
          }

          public var photo: String? {
            get {
              return resultMap["photo"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "photo")
            }
          }
        }
      }
    }
  }
}

public final class GetEventsForTheWeekQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GetEventsForTheWeek($id: ID, $date: Date, $userId: ID) {
      getEventsForTheWeek(input: {id: $id, date: $date, userId: $userId}) {
        __typename
        message
        success
        event {
          __typename
          _id
          totalComments
          likes {
            __typename
            _id
            name
          }
          taggedUsers {
            __typename
            _id
            name
          }
          taggedLists {
            __typename
            _id
            name
          }
          eventSchedule {
            __typename
            start_time
            end_time
          }
          location {
            __typename
            type
            coordinates
          }
          user {
            __typename
            _id
          }
          list {
            __typename
            _id
            name
            image
          }
          title
          description
          type
          recurring
          media
          createdAt
          updatedAt
        }
      }
    }
    """

  public let operationName: String = "GetEventsForTheWeek"

  public var id: GraphQLID?
  public var date: String?
  public var userId: GraphQLID?

  public init(id: GraphQLID? = nil, date: String? = nil, userId: GraphQLID? = nil) {
    self.id = id
    self.date = date
    self.userId = userId
  }

  public var variables: GraphQLMap? {
    return ["id": id, "date": date, "userId": userId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("getEventsForTheWeek", arguments: ["input": ["id": GraphQLVariable("id"), "date": GraphQLVariable("date"), "userId": GraphQLVariable("userId")]], type: .nonNull(.object(GetEventsForTheWeek.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(getEventsForTheWeek: GetEventsForTheWeek) {
      self.init(unsafeResultMap: ["__typename": "Query", "getEventsForTheWeek": getEventsForTheWeek.resultMap])
    }

    public var getEventsForTheWeek: GetEventsForTheWeek {
      get {
        return GetEventsForTheWeek(unsafeResultMap: resultMap["getEventsForTheWeek"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "getEventsForTheWeek")
      }
    }

    public struct GetEventsForTheWeek: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["eventResponse"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message", type: .nonNull(.scalar(String.self))),
          GraphQLField("success", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("event", type: .list(.object(Event.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(message: String, success: Bool, event: [Event?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "eventResponse", "message": message, "success": success, "event": event.flatMap { (value: [Event?]) -> [ResultMap?] in value.map { (value: Event?) -> ResultMap? in value.flatMap { (value: Event) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var message: String {
        get {
          return resultMap["message"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "message")
        }
      }

      public var success: Bool {
        get {
          return resultMap["success"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "success")
        }
      }

      public var event: [Event?]? {
        get {
          return (resultMap["event"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Event?] in value.map { (value: ResultMap?) -> Event? in value.flatMap { (value: ResultMap) -> Event in Event(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Event?]) -> [ResultMap?] in value.map { (value: Event?) -> ResultMap? in value.flatMap { (value: Event) -> ResultMap in value.resultMap } } }, forKey: "event")
        }
      }

      public struct Event: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["eventRef"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("_id", type: .scalar(GraphQLID.self)),
            GraphQLField("totalComments", type: .scalar(Int.self)),
            GraphQLField("likes", type: .list(.object(Like.selections))),
            GraphQLField("taggedUsers", type: .list(.object(TaggedUser.selections))),
            GraphQLField("taggedLists", type: .list(.object(TaggedList.selections))),
            GraphQLField("eventSchedule", type: .object(EventSchedule.selections)),
            GraphQLField("location", type: .object(Location.selections)),
            GraphQLField("user", type: .object(User.selections)),
            GraphQLField("list", type: .object(List.selections)),
            GraphQLField("title", type: .scalar(String.self)),
            GraphQLField("description", type: .scalar(String.self)),
            GraphQLField("type", type: .scalar(String.self)),
            GraphQLField("recurring", type: .list(.scalar(Int.self))),
            GraphQLField("media", type: .list(.scalar(String.self))),
            GraphQLField("createdAt", type: .scalar(String.self)),
            GraphQLField("updatedAt", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(_id: GraphQLID? = nil, totalComments: Int? = nil, likes: [Like?]? = nil, taggedUsers: [TaggedUser?]? = nil, taggedLists: [TaggedList?]? = nil, eventSchedule: EventSchedule? = nil, location: Location? = nil, user: User? = nil, list: List? = nil, title: String? = nil, description: String? = nil, type: String? = nil, recurring: [Int?]? = nil, media: [String?]? = nil, createdAt: String? = nil, updatedAt: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "eventRef", "_id": _id, "totalComments": totalComments, "likes": likes.flatMap { (value: [Like?]) -> [ResultMap?] in value.map { (value: Like?) -> ResultMap? in value.flatMap { (value: Like) -> ResultMap in value.resultMap } } }, "taggedUsers": taggedUsers.flatMap { (value: [TaggedUser?]) -> [ResultMap?] in value.map { (value: TaggedUser?) -> ResultMap? in value.flatMap { (value: TaggedUser) -> ResultMap in value.resultMap } } }, "taggedLists": taggedLists.flatMap { (value: [TaggedList?]) -> [ResultMap?] in value.map { (value: TaggedList?) -> ResultMap? in value.flatMap { (value: TaggedList) -> ResultMap in value.resultMap } } }, "eventSchedule": eventSchedule.flatMap { (value: EventSchedule) -> ResultMap in value.resultMap }, "location": location.flatMap { (value: Location) -> ResultMap in value.resultMap }, "user": user.flatMap { (value: User) -> ResultMap in value.resultMap }, "list": list.flatMap { (value: List) -> ResultMap in value.resultMap }, "title": title, "description": description, "type": type, "recurring": recurring, "media": media, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var _id: GraphQLID? {
          get {
            return resultMap["_id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "_id")
          }
        }

        public var totalComments: Int? {
          get {
            return resultMap["totalComments"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "totalComments")
          }
        }

        public var likes: [Like?]? {
          get {
            return (resultMap["likes"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Like?] in value.map { (value: ResultMap?) -> Like? in value.flatMap { (value: ResultMap) -> Like in Like(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [Like?]) -> [ResultMap?] in value.map { (value: Like?) -> ResultMap? in value.flatMap { (value: Like) -> ResultMap in value.resultMap } } }, forKey: "likes")
          }
        }

        public var taggedUsers: [TaggedUser?]? {
          get {
            return (resultMap["taggedUsers"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [TaggedUser?] in value.map { (value: ResultMap?) -> TaggedUser? in value.flatMap { (value: ResultMap) -> TaggedUser in TaggedUser(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [TaggedUser?]) -> [ResultMap?] in value.map { (value: TaggedUser?) -> ResultMap? in value.flatMap { (value: TaggedUser) -> ResultMap in value.resultMap } } }, forKey: "taggedUsers")
          }
        }

        public var taggedLists: [TaggedList?]? {
          get {
            return (resultMap["taggedLists"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [TaggedList?] in value.map { (value: ResultMap?) -> TaggedList? in value.flatMap { (value: ResultMap) -> TaggedList in TaggedList(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [TaggedList?]) -> [ResultMap?] in value.map { (value: TaggedList?) -> ResultMap? in value.flatMap { (value: TaggedList) -> ResultMap in value.resultMap } } }, forKey: "taggedLists")
          }
        }

        public var eventSchedule: EventSchedule? {
          get {
            return (resultMap["eventSchedule"] as? ResultMap).flatMap { EventSchedule(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "eventSchedule")
          }
        }

        public var location: Location? {
          get {
            return (resultMap["location"] as? ResultMap).flatMap { Location(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "location")
          }
        }

        public var user: User? {
          get {
            return (resultMap["user"] as? ResultMap).flatMap { User(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "user")
          }
        }

        public var list: List? {
          get {
            return (resultMap["list"] as? ResultMap).flatMap { List(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "list")
          }
        }

        public var title: String? {
          get {
            return resultMap["title"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "title")
          }
        }

        public var description: String? {
          get {
            return resultMap["description"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "description")
          }
        }

        public var type: String? {
          get {
            return resultMap["type"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "type")
          }
        }

        public var recurring: [Int?]? {
          get {
            return resultMap["recurring"] as? [Int?]
          }
          set {
            resultMap.updateValue(newValue, forKey: "recurring")
          }
        }

        public var media: [String?]? {
          get {
            return resultMap["media"] as? [String?]
          }
          set {
            resultMap.updateValue(newValue, forKey: "media")
          }
        }

        public var createdAt: String? {
          get {
            return resultMap["createdAt"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String? {
          get {
            return resultMap["updatedAt"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Like: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["userProfileRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("_id", type: .scalar(GraphQLID.self)),
              GraphQLField("name", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(_id: GraphQLID? = nil, name: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "userProfileRef", "_id": _id, "name": name])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var _id: GraphQLID? {
            get {
              return resultMap["_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }
        }

        public struct TaggedUser: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["userProfileRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("_id", type: .scalar(GraphQLID.self)),
              GraphQLField("name", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(_id: GraphQLID? = nil, name: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "userProfileRef", "_id": _id, "name": name])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var _id: GraphQLID? {
            get {
              return resultMap["_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }
        }

        public struct TaggedList: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["listRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("_id", type: .scalar(GraphQLID.self)),
              GraphQLField("name", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(_id: GraphQLID? = nil, name: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "listRef", "_id": _id, "name": name])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var _id: GraphQLID? {
            get {
              return resultMap["_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }
        }

        public struct EventSchedule: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["eventScheduleRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("start_time", type: .scalar(String.self)),
              GraphQLField("end_time", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(startTime: String? = nil, endTime: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "eventScheduleRef", "start_time": startTime, "end_time": endTime])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var startTime: String? {
            get {
              return resultMap["start_time"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "start_time")
            }
          }

          public var endTime: String? {
            get {
              return resultMap["end_time"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "end_time")
            }
          }
        }

        public struct Location: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["locationRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("type", type: .scalar(String.self)),
              GraphQLField("coordinates", type: .list(.scalar(Double.self))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(type: String? = nil, coordinates: [Double?]? = nil) {
            self.init(unsafeResultMap: ["__typename": "locationRef", "type": type, "coordinates": coordinates])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var type: String? {
            get {
              return resultMap["type"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "type")
            }
          }

          public var coordinates: [Double?]? {
            get {
              return resultMap["coordinates"] as? [Double?]
            }
            set {
              resultMap.updateValue(newValue, forKey: "coordinates")
            }
          }
        }

        public struct User: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["userProfileRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("_id", type: .scalar(GraphQLID.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(_id: GraphQLID? = nil) {
            self.init(unsafeResultMap: ["__typename": "userProfileRef", "_id": _id])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var _id: GraphQLID? {
            get {
              return resultMap["_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }
        }

        public struct List: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["listRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("_id", type: .scalar(GraphQLID.self)),
              GraphQLField("name", type: .scalar(String.self)),
              GraphQLField("image", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(_id: GraphQLID? = nil, name: String? = nil, image: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "listRef", "_id": _id, "name": name, "image": image])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var _id: GraphQLID? {
            get {
              return resultMap["_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }

          public var image: String? {
            get {
              return resultMap["image"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "image")
            }
          }
        }
      }
    }
  }
}

public final class GetCommentQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GetComment($id: ID!) {
      getComment(input: {id: $id}) {
        __typename
        message
        success
        post {
          __typename
          totalReplies
          comment {
            __typename
            _id
            itemId
            userId {
              __typename
              _id
              name
              email
              phoneNumber
              userSub
              photo
              lockProfile
            }
            taggedUsers {
              __typename
              _id
              name
              email
            }
            body
            likes {
              __typename
              _id
              name
              email
              phoneNumber
              userSub
              photo
              lockProfile
            }
            replies {
              __typename
              body
              created_on
            }
            createdAt
            updatedAt
          }
        }
      }
    }
    """

  public let operationName: String = "GetComment"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("getComment", arguments: ["input": ["id": GraphQLVariable("id")]], type: .nonNull(.object(GetComment.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(getComment: GetComment) {
      self.init(unsafeResultMap: ["__typename": "Query", "getComment": getComment.resultMap])
    }

    public var getComment: GetComment {
      get {
        return GetComment(unsafeResultMap: resultMap["getComment"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "getComment")
      }
    }

    public struct GetComment: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["getCommentResponse"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message", type: .nonNull(.scalar(String.self))),
          GraphQLField("success", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("post", type: .list(.object(Post.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(message: String, success: Bool, post: [Post?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "getCommentResponse", "message": message, "success": success, "post": post.flatMap { (value: [Post?]) -> [ResultMap?] in value.map { (value: Post?) -> ResultMap? in value.flatMap { (value: Post) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var message: String {
        get {
          return resultMap["message"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "message")
        }
      }

      public var success: Bool {
        get {
          return resultMap["success"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "success")
        }
      }

      public var post: [Post?]? {
        get {
          return (resultMap["post"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Post?] in value.map { (value: ResultMap?) -> Post? in value.flatMap { (value: ResultMap) -> Post in Post(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Post?]) -> [ResultMap?] in value.map { (value: Post?) -> ResultMap? in value.flatMap { (value: Post) -> ResultMap in value.resultMap } } }, forKey: "post")
        }
      }

      public struct Post: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["post1Ref"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("totalReplies", type: .scalar(Int.self)),
            GraphQLField("comment", type: .object(Comment.selections)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(totalReplies: Int? = nil, comment: Comment? = nil) {
          self.init(unsafeResultMap: ["__typename": "post1Ref", "totalReplies": totalReplies, "comment": comment.flatMap { (value: Comment) -> ResultMap in value.resultMap }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var totalReplies: Int? {
          get {
            return resultMap["totalReplies"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "totalReplies")
          }
        }

        public var comment: Comment? {
          get {
            return (resultMap["comment"] as? ResultMap).flatMap { Comment(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "comment")
          }
        }

        public struct Comment: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["commentDataRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("_id", type: .scalar(GraphQLID.self)),
              GraphQLField("itemId", type: .scalar(GraphQLID.self)),
              GraphQLField("userId", type: .object(UserId.selections)),
              GraphQLField("taggedUsers", type: .list(.object(TaggedUser.selections))),
              GraphQLField("body", type: .scalar(String.self)),
              GraphQLField("likes", type: .list(.object(Like.selections))),
              GraphQLField("replies", type: .list(.object(Reply.selections))),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(_id: GraphQLID? = nil, itemId: GraphQLID? = nil, userId: UserId? = nil, taggedUsers: [TaggedUser?]? = nil, body: String? = nil, likes: [Like?]? = nil, replies: [Reply?]? = nil, createdAt: String? = nil, updatedAt: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "commentDataRef", "_id": _id, "itemId": itemId, "userId": userId.flatMap { (value: UserId) -> ResultMap in value.resultMap }, "taggedUsers": taggedUsers.flatMap { (value: [TaggedUser?]) -> [ResultMap?] in value.map { (value: TaggedUser?) -> ResultMap? in value.flatMap { (value: TaggedUser) -> ResultMap in value.resultMap } } }, "body": body, "likes": likes.flatMap { (value: [Like?]) -> [ResultMap?] in value.map { (value: Like?) -> ResultMap? in value.flatMap { (value: Like) -> ResultMap in value.resultMap } } }, "replies": replies.flatMap { (value: [Reply?]) -> [ResultMap?] in value.map { (value: Reply?) -> ResultMap? in value.flatMap { (value: Reply) -> ResultMap in value.resultMap } } }, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var _id: GraphQLID? {
            get {
              return resultMap["_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }

          public var itemId: GraphQLID? {
            get {
              return resultMap["itemId"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "itemId")
            }
          }

          public var userId: UserId? {
            get {
              return (resultMap["userId"] as? ResultMap).flatMap { UserId(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "userId")
            }
          }

          public var taggedUsers: [TaggedUser?]? {
            get {
              return (resultMap["taggedUsers"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [TaggedUser?] in value.map { (value: ResultMap?) -> TaggedUser? in value.flatMap { (value: ResultMap) -> TaggedUser in TaggedUser(unsafeResultMap: value) } } }
            }
            set {
              resultMap.updateValue(newValue.flatMap { (value: [TaggedUser?]) -> [ResultMap?] in value.map { (value: TaggedUser?) -> ResultMap? in value.flatMap { (value: TaggedUser) -> ResultMap in value.resultMap } } }, forKey: "taggedUsers")
            }
          }

          public var body: String? {
            get {
              return resultMap["body"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "body")
            }
          }

          public var likes: [Like?]? {
            get {
              return (resultMap["likes"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Like?] in value.map { (value: ResultMap?) -> Like? in value.flatMap { (value: ResultMap) -> Like in Like(unsafeResultMap: value) } } }
            }
            set {
              resultMap.updateValue(newValue.flatMap { (value: [Like?]) -> [ResultMap?] in value.map { (value: Like?) -> ResultMap? in value.flatMap { (value: Like) -> ResultMap in value.resultMap } } }, forKey: "likes")
            }
          }

          public var replies: [Reply?]? {
            get {
              return (resultMap["replies"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Reply?] in value.map { (value: ResultMap?) -> Reply? in value.flatMap { (value: ResultMap) -> Reply in Reply(unsafeResultMap: value) } } }
            }
            set {
              resultMap.updateValue(newValue.flatMap { (value: [Reply?]) -> [ResultMap?] in value.map { (value: Reply?) -> ResultMap? in value.flatMap { (value: Reply) -> ResultMap in value.resultMap } } }, forKey: "replies")
            }
          }

          public var createdAt: String? {
            get {
              return resultMap["createdAt"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String? {
            get {
              return resultMap["updatedAt"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public struct UserId: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["userProfileRef"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("_id", type: .scalar(GraphQLID.self)),
                GraphQLField("name", type: .scalar(String.self)),
                GraphQLField("email", type: .scalar(String.self)),
                GraphQLField("phoneNumber", type: .scalar(String.self)),
                GraphQLField("userSub", type: .scalar(String.self)),
                GraphQLField("photo", type: .scalar(String.self)),
                GraphQLField("lockProfile", type: .scalar(Int.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(_id: GraphQLID? = nil, name: String? = nil, email: String? = nil, phoneNumber: String? = nil, userSub: String? = nil, photo: String? = nil, lockProfile: Int? = nil) {
              self.init(unsafeResultMap: ["__typename": "userProfileRef", "_id": _id, "name": name, "email": email, "phoneNumber": phoneNumber, "userSub": userSub, "photo": photo, "lockProfile": lockProfile])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var _id: GraphQLID? {
              get {
                return resultMap["_id"] as? GraphQLID
              }
              set {
                resultMap.updateValue(newValue, forKey: "_id")
              }
            }

            public var name: String? {
              get {
                return resultMap["name"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "name")
              }
            }

            public var email: String? {
              get {
                return resultMap["email"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "email")
              }
            }

            public var phoneNumber: String? {
              get {
                return resultMap["phoneNumber"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "phoneNumber")
              }
            }

            public var userSub: String? {
              get {
                return resultMap["userSub"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "userSub")
              }
            }

            public var photo: String? {
              get {
                return resultMap["photo"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "photo")
              }
            }

            public var lockProfile: Int? {
              get {
                return resultMap["lockProfile"] as? Int
              }
              set {
                resultMap.updateValue(newValue, forKey: "lockProfile")
              }
            }
          }

          public struct TaggedUser: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["userProfileRef"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("_id", type: .scalar(GraphQLID.self)),
                GraphQLField("name", type: .scalar(String.self)),
                GraphQLField("email", type: .scalar(String.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(_id: GraphQLID? = nil, name: String? = nil, email: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "userProfileRef", "_id": _id, "name": name, "email": email])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var _id: GraphQLID? {
              get {
                return resultMap["_id"] as? GraphQLID
              }
              set {
                resultMap.updateValue(newValue, forKey: "_id")
              }
            }

            public var name: String? {
              get {
                return resultMap["name"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "name")
              }
            }

            public var email: String? {
              get {
                return resultMap["email"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "email")
              }
            }
          }

          public struct Like: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["userProfileRef"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("_id", type: .scalar(GraphQLID.self)),
                GraphQLField("name", type: .scalar(String.self)),
                GraphQLField("email", type: .scalar(String.self)),
                GraphQLField("phoneNumber", type: .scalar(String.self)),
                GraphQLField("userSub", type: .scalar(String.self)),
                GraphQLField("photo", type: .scalar(String.self)),
                GraphQLField("lockProfile", type: .scalar(Int.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(_id: GraphQLID? = nil, name: String? = nil, email: String? = nil, phoneNumber: String? = nil, userSub: String? = nil, photo: String? = nil, lockProfile: Int? = nil) {
              self.init(unsafeResultMap: ["__typename": "userProfileRef", "_id": _id, "name": name, "email": email, "phoneNumber": phoneNumber, "userSub": userSub, "photo": photo, "lockProfile": lockProfile])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var _id: GraphQLID? {
              get {
                return resultMap["_id"] as? GraphQLID
              }
              set {
                resultMap.updateValue(newValue, forKey: "_id")
              }
            }

            public var name: String? {
              get {
                return resultMap["name"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "name")
              }
            }

            public var email: String? {
              get {
                return resultMap["email"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "email")
              }
            }

            public var phoneNumber: String? {
              get {
                return resultMap["phoneNumber"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "phoneNumber")
              }
            }

            public var userSub: String? {
              get {
                return resultMap["userSub"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "userSub")
              }
            }

            public var photo: String? {
              get {
                return resultMap["photo"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "photo")
              }
            }

            public var lockProfile: Int? {
              get {
                return resultMap["lockProfile"] as? Int
              }
              set {
                resultMap.updateValue(newValue, forKey: "lockProfile")
              }
            }
          }

          public struct Reply: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["replyDataRef"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("body", type: .scalar(String.self)),
                GraphQLField("created_on", type: .scalar(String.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(body: String? = nil, createdOn: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "replyDataRef", "body": body, "created_on": createdOn])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var body: String? {
              get {
                return resultMap["body"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "body")
              }
            }

            public var createdOn: String? {
              get {
                return resultMap["created_on"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "created_on")
              }
            }
          }
        }
      }
    }
  }
}

public final class GetRepliesQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GetReplies($id: ID!) {
      getReplies(input: {id: $id}) {
        __typename
        message
        success
        postId
        commentId
        replies {
          __typename
          userId {
            __typename
            _id
            name
            photo
          }
          taggedUsers {
            __typename
            _id
            name
            email
          }
          body
          created_on
        }
      }
    }
    """

  public let operationName: String = "GetReplies"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("getReplies", arguments: ["input": ["id": GraphQLVariable("id")]], type: .nonNull(.object(GetReply.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(getReplies: GetReply) {
      self.init(unsafeResultMap: ["__typename": "Query", "getReplies": getReplies.resultMap])
    }

    public var getReplies: GetReply {
      get {
        return GetReply(unsafeResultMap: resultMap["getReplies"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "getReplies")
      }
    }

    public struct GetReply: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["getRepliesResponse"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message", type: .nonNull(.scalar(String.self))),
          GraphQLField("success", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("postId", type: .scalar(GraphQLID.self)),
          GraphQLField("commentId", type: .scalar(GraphQLID.self)),
          GraphQLField("replies", type: .list(.object(Reply.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(message: String, success: Bool, postId: GraphQLID? = nil, commentId: GraphQLID? = nil, replies: [Reply?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "getRepliesResponse", "message": message, "success": success, "postId": postId, "commentId": commentId, "replies": replies.flatMap { (value: [Reply?]) -> [ResultMap?] in value.map { (value: Reply?) -> ResultMap? in value.flatMap { (value: Reply) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var message: String {
        get {
          return resultMap["message"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "message")
        }
      }

      public var success: Bool {
        get {
          return resultMap["success"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "success")
        }
      }

      public var postId: GraphQLID? {
        get {
          return resultMap["postId"] as? GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "postId")
        }
      }

      public var commentId: GraphQLID? {
        get {
          return resultMap["commentId"] as? GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "commentId")
        }
      }

      public var replies: [Reply?]? {
        get {
          return (resultMap["replies"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Reply?] in value.map { (value: ResultMap?) -> Reply? in value.flatMap { (value: ResultMap) -> Reply in Reply(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Reply?]) -> [ResultMap?] in value.map { (value: Reply?) -> ResultMap? in value.flatMap { (value: Reply) -> ResultMap in value.resultMap } } }, forKey: "replies")
        }
      }

      public struct Reply: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["replyDataRef"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("userId", type: .object(UserId.selections)),
            GraphQLField("taggedUsers", type: .list(.object(TaggedUser.selections))),
            GraphQLField("body", type: .scalar(String.self)),
            GraphQLField("created_on", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(userId: UserId? = nil, taggedUsers: [TaggedUser?]? = nil, body: String? = nil, createdOn: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "replyDataRef", "userId": userId.flatMap { (value: UserId) -> ResultMap in value.resultMap }, "taggedUsers": taggedUsers.flatMap { (value: [TaggedUser?]) -> [ResultMap?] in value.map { (value: TaggedUser?) -> ResultMap? in value.flatMap { (value: TaggedUser) -> ResultMap in value.resultMap } } }, "body": body, "created_on": createdOn])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var userId: UserId? {
          get {
            return (resultMap["userId"] as? ResultMap).flatMap { UserId(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "userId")
          }
        }

        public var taggedUsers: [TaggedUser?]? {
          get {
            return (resultMap["taggedUsers"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [TaggedUser?] in value.map { (value: ResultMap?) -> TaggedUser? in value.flatMap { (value: ResultMap) -> TaggedUser in TaggedUser(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [TaggedUser?]) -> [ResultMap?] in value.map { (value: TaggedUser?) -> ResultMap? in value.flatMap { (value: TaggedUser) -> ResultMap in value.resultMap } } }, forKey: "taggedUsers")
          }
        }

        public var body: String? {
          get {
            return resultMap["body"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "body")
          }
        }

        public var createdOn: String? {
          get {
            return resultMap["created_on"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "created_on")
          }
        }

        public struct UserId: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["userProfileRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("_id", type: .scalar(GraphQLID.self)),
              GraphQLField("name", type: .scalar(String.self)),
              GraphQLField("photo", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(_id: GraphQLID? = nil, name: String? = nil, photo: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "userProfileRef", "_id": _id, "name": name, "photo": photo])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var _id: GraphQLID? {
            get {
              return resultMap["_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }

          public var photo: String? {
            get {
              return resultMap["photo"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "photo")
            }
          }
        }

        public struct TaggedUser: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["userProfileRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("_id", type: .scalar(GraphQLID.self)),
              GraphQLField("name", type: .scalar(String.self)),
              GraphQLField("email", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(_id: GraphQLID? = nil, name: String? = nil, email: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "userProfileRef", "_id": _id, "name": name, "email": email])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var _id: GraphQLID? {
            get {
              return resultMap["_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }

          public var email: String? {
            get {
              return resultMap["email"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "email")
            }
          }
        }
      }
    }
  }
}

public final class UpdateProfileMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation UpdateProfile($name: String, $email: String, $phoneNumber: String, $userSub: String, $photo: String, $lockProfile: Int) {
      updateProfile(
        input: {name: $name, email: $email, phoneNumber: $phoneNumber, userSub: $userSub, photo: $photo, lockProfile: $lockProfile}
      ) {
        __typename
        message
        success
        user {
          __typename
          name
          email
          phoneNumber
          userSub
          lockProfile
          photo
        }
      }
    }
    """

  public let operationName: String = "UpdateProfile"

  public var name: String?
  public var email: String?
  public var phoneNumber: String?
  public var userSub: String?
  public var photo: String?
  public var lockProfile: Int?

  public init(name: String? = nil, email: String? = nil, phoneNumber: String? = nil, userSub: String? = nil, photo: String? = nil, lockProfile: Int? = nil) {
    self.name = name
    self.email = email
    self.phoneNumber = phoneNumber
    self.userSub = userSub
    self.photo = photo
    self.lockProfile = lockProfile
  }

  public var variables: GraphQLMap? {
    return ["name": name, "email": email, "phoneNumber": phoneNumber, "userSub": userSub, "photo": photo, "lockProfile": lockProfile]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("updateProfile", arguments: ["input": ["name": GraphQLVariable("name"), "email": GraphQLVariable("email"), "phoneNumber": GraphQLVariable("phoneNumber"), "userSub": GraphQLVariable("userSub"), "photo": GraphQLVariable("photo"), "lockProfile": GraphQLVariable("lockProfile")]], type: .nonNull(.object(UpdateProfile.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(updateProfile: UpdateProfile) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "updateProfile": updateProfile.resultMap])
    }

    public var updateProfile: UpdateProfile {
      get {
        return UpdateProfile(unsafeResultMap: resultMap["updateProfile"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "updateProfile")
      }
    }

    public struct UpdateProfile: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["addUserResponse"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message", type: .nonNull(.scalar(String.self))),
          GraphQLField("success", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("user", type: .object(User.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(message: String, success: Bool, user: User? = nil) {
        self.init(unsafeResultMap: ["__typename": "addUserResponse", "message": message, "success": success, "user": user.flatMap { (value: User) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var message: String {
        get {
          return resultMap["message"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "message")
        }
      }

      public var success: Bool {
        get {
          return resultMap["success"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "success")
        }
      }

      public var user: User? {
        get {
          return (resultMap["user"] as? ResultMap).flatMap { User(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "user")
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["userProfileRef"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("email", type: .scalar(String.self)),
            GraphQLField("phoneNumber", type: .scalar(String.self)),
            GraphQLField("userSub", type: .scalar(String.self)),
            GraphQLField("lockProfile", type: .scalar(Int.self)),
            GraphQLField("photo", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(name: String? = nil, email: String? = nil, phoneNumber: String? = nil, userSub: String? = nil, lockProfile: Int? = nil, photo: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "userProfileRef", "name": name, "email": email, "phoneNumber": phoneNumber, "userSub": userSub, "lockProfile": lockProfile, "photo": photo])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var email: String? {
          get {
            return resultMap["email"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "email")
          }
        }

        public var phoneNumber: String? {
          get {
            return resultMap["phoneNumber"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "phoneNumber")
          }
        }

        public var userSub: String? {
          get {
            return resultMap["userSub"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "userSub")
          }
        }

        public var lockProfile: Int? {
          get {
            return resultMap["lockProfile"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "lockProfile")
          }
        }

        public var photo: String? {
          get {
            return resultMap["photo"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "photo")
          }
        }
      }
    }
  }
}

public final class GetSelectedUserMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation GetSelectedUser($search: String) {
      getSelectedUser(input: {search: $search}) {
        __typename
        message
        success
        user {
          __typename
          _id
          name
          email
          phoneNumber
          userSub
          lockProfile
          photo
        }
      }
    }
    """

  public let operationName: String = "GetSelectedUser"

  public var search: String?

  public init(search: String? = nil) {
    self.search = search
  }

  public var variables: GraphQLMap? {
    return ["search": search]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("getSelectedUser", arguments: ["input": ["search": GraphQLVariable("search")]], type: .nonNull(.object(GetSelectedUser.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(getSelectedUser: GetSelectedUser) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "getSelectedUser": getSelectedUser.resultMap])
    }

    public var getSelectedUser: GetSelectedUser {
      get {
        return GetSelectedUser(unsafeResultMap: resultMap["getSelectedUser"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "getSelectedUser")
      }
    }

    public struct GetSelectedUser: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["getAllUserResponse"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message", type: .nonNull(.scalar(String.self))),
          GraphQLField("success", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("user", type: .list(.object(User.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(message: String, success: Bool, user: [User?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "getAllUserResponse", "message": message, "success": success, "user": user.flatMap { (value: [User?]) -> [ResultMap?] in value.map { (value: User?) -> ResultMap? in value.flatMap { (value: User) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var message: String {
        get {
          return resultMap["message"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "message")
        }
      }

      public var success: Bool {
        get {
          return resultMap["success"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "success")
        }
      }

      public var user: [User?]? {
        get {
          return (resultMap["user"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [User?] in value.map { (value: ResultMap?) -> User? in value.flatMap { (value: ResultMap) -> User in User(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [User?]) -> [ResultMap?] in value.map { (value: User?) -> ResultMap? in value.flatMap { (value: User) -> ResultMap in value.resultMap } } }, forKey: "user")
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["userProfileRef"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("_id", type: .scalar(GraphQLID.self)),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("email", type: .scalar(String.self)),
            GraphQLField("phoneNumber", type: .scalar(String.self)),
            GraphQLField("userSub", type: .scalar(String.self)),
            GraphQLField("lockProfile", type: .scalar(Int.self)),
            GraphQLField("photo", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(_id: GraphQLID? = nil, name: String? = nil, email: String? = nil, phoneNumber: String? = nil, userSub: String? = nil, lockProfile: Int? = nil, photo: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "userProfileRef", "_id": _id, "name": name, "email": email, "phoneNumber": phoneNumber, "userSub": userSub, "lockProfile": lockProfile, "photo": photo])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var _id: GraphQLID? {
          get {
            return resultMap["_id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "_id")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var email: String? {
          get {
            return resultMap["email"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "email")
          }
        }

        public var phoneNumber: String? {
          get {
            return resultMap["phoneNumber"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "phoneNumber")
          }
        }

        public var userSub: String? {
          get {
            return resultMap["userSub"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "userSub")
          }
        }

        public var lockProfile: Int? {
          get {
            return resultMap["lockProfile"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "lockProfile")
          }
        }

        public var photo: String? {
          get {
            return resultMap["photo"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "photo")
          }
        }
      }
    }
  }
}

public final class AddFavoriteBusinessMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation AddFavoriteBusiness($userId: ID!, $businessId: ID!) {
      addFavoriteBusiness(input: {userId: $userId, businessId: $businessId}) {
        __typename
        message
        success
        user {
          __typename
          userId
          businessId
        }
      }
    }
    """

  public let operationName: String = "AddFavoriteBusiness"

  public var userId: GraphQLID
  public var businessId: GraphQLID

  public init(userId: GraphQLID, businessId: GraphQLID) {
    self.userId = userId
    self.businessId = businessId
  }

  public var variables: GraphQLMap? {
    return ["userId": userId, "businessId": businessId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("addFavoriteBusiness", arguments: ["input": ["userId": GraphQLVariable("userId"), "businessId": GraphQLVariable("businessId")]], type: .nonNull(.object(AddFavoriteBusiness.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(addFavoriteBusiness: AddFavoriteBusiness) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "addFavoriteBusiness": addFavoriteBusiness.resultMap])
    }

    public var addFavoriteBusiness: AddFavoriteBusiness {
      get {
        return AddFavoriteBusiness(unsafeResultMap: resultMap["addFavoriteBusiness"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "addFavoriteBusiness")
      }
    }

    public struct AddFavoriteBusiness: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["addFavoriteBusinessResponse"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message", type: .nonNull(.scalar(String.self))),
          GraphQLField("success", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("user", type: .object(User.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(message: String, success: Bool, user: User? = nil) {
        self.init(unsafeResultMap: ["__typename": "addFavoriteBusinessResponse", "message": message, "success": success, "user": user.flatMap { (value: User) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var message: String {
        get {
          return resultMap["message"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "message")
        }
      }

      public var success: Bool {
        get {
          return resultMap["success"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "success")
        }
      }

      public var user: User? {
        get {
          return (resultMap["user"] as? ResultMap).flatMap { User(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "user")
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["userFavoriteRef"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("userId", type: .scalar(GraphQLID.self)),
            GraphQLField("businessId", type: .scalar(GraphQLID.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(userId: GraphQLID? = nil, businessId: GraphQLID? = nil) {
          self.init(unsafeResultMap: ["__typename": "userFavoriteRef", "userId": userId, "businessId": businessId])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var userId: GraphQLID? {
          get {
            return resultMap["userId"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "userId")
          }
        }

        public var businessId: GraphQLID? {
          get {
            return resultMap["businessId"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "businessId")
          }
        }
      }
    }
  }
}

public final class RemoveFavoriteBusinessMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation RemoveFavoriteBusiness($userId: ID!, $businessId: ID!) {
      removeFavoriteBusiness(input: {userId: $userId, businessId: $businessId}) {
        __typename
        message
        success
        user {
          __typename
          userId
          businessId
        }
      }
    }
    """

  public let operationName: String = "RemoveFavoriteBusiness"

  public var userId: GraphQLID
  public var businessId: GraphQLID

  public init(userId: GraphQLID, businessId: GraphQLID) {
    self.userId = userId
    self.businessId = businessId
  }

  public var variables: GraphQLMap? {
    return ["userId": userId, "businessId": businessId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("removeFavoriteBusiness", arguments: ["input": ["userId": GraphQLVariable("userId"), "businessId": GraphQLVariable("businessId")]], type: .nonNull(.object(RemoveFavoriteBusiness.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(removeFavoriteBusiness: RemoveFavoriteBusiness) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "removeFavoriteBusiness": removeFavoriteBusiness.resultMap])
    }

    public var removeFavoriteBusiness: RemoveFavoriteBusiness {
      get {
        return RemoveFavoriteBusiness(unsafeResultMap: resultMap["removeFavoriteBusiness"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "removeFavoriteBusiness")
      }
    }

    public struct RemoveFavoriteBusiness: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["addFavoriteBusinessResponse"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message", type: .nonNull(.scalar(String.self))),
          GraphQLField("success", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("user", type: .object(User.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(message: String, success: Bool, user: User? = nil) {
        self.init(unsafeResultMap: ["__typename": "addFavoriteBusinessResponse", "message": message, "success": success, "user": user.flatMap { (value: User) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var message: String {
        get {
          return resultMap["message"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "message")
        }
      }

      public var success: Bool {
        get {
          return resultMap["success"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "success")
        }
      }

      public var user: User? {
        get {
          return (resultMap["user"] as? ResultMap).flatMap { User(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "user")
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["userFavoriteRef"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("userId", type: .scalar(GraphQLID.self)),
            GraphQLField("businessId", type: .scalar(GraphQLID.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(userId: GraphQLID? = nil, businessId: GraphQLID? = nil) {
          self.init(unsafeResultMap: ["__typename": "userFavoriteRef", "userId": userId, "businessId": businessId])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var userId: GraphQLID? {
          get {
            return resultMap["userId"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "userId")
          }
        }

        public var businessId: GraphQLID? {
          get {
            return resultMap["businessId"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "businessId")
          }
        }
      }
    }
  }
}

public final class CreatePostMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation CreatePost($business: ID, $data: String, $media: [String], $taggedUsers: [ID], $taggedLists: [ID], $ownerId: ID, $listId: ID) {
      createPost(
        input: {business: $business, data: $data, media: $media, taggedUsers: $taggedUsers, taggedLists: $taggedLists, ownerId: $ownerId, listId: $listId}
      ) {
        __typename
        message
        success
        totalPosts
        post {
          __typename
          _id
          data
          list {
            __typename
            _id
            name
            image
          }
          business {
            __typename
            _id
          }
          taggedUsers {
            __typename
            list_ids
            _id
            name
            blurb
            photo
            createdAt
            updatedAt
          }
          taggedLists {
            __typename
            _id
            name
            description
            items
            type
            photo
            account_id
            createdAt
          }
          ownerId {
            __typename
            _id
            name
            email
            photo
          }
          likes
          media
          createdAt
          updatedAt
        }
      }
    }
    """

  public let operationName: String = "CreatePost"

  public var business: GraphQLID?
  public var data: String?
  public var media: [String?]?
  public var taggedUsers: [GraphQLID?]?
  public var taggedLists: [GraphQLID?]?
  public var ownerId: GraphQLID?
  public var listId: GraphQLID?

  public init(business: GraphQLID? = nil, data: String? = nil, media: [String?]? = nil, taggedUsers: [GraphQLID?]? = nil, taggedLists: [GraphQLID?]? = nil, ownerId: GraphQLID? = nil, listId: GraphQLID? = nil) {
    self.business = business
    self.data = data
    self.media = media
    self.taggedUsers = taggedUsers
    self.taggedLists = taggedLists
    self.ownerId = ownerId
    self.listId = listId
  }

  public var variables: GraphQLMap? {
    return ["business": business, "data": data, "media": media, "taggedUsers": taggedUsers, "taggedLists": taggedLists, "ownerId": ownerId, "listId": listId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("createPost", arguments: ["input": ["business": GraphQLVariable("business"), "data": GraphQLVariable("data"), "media": GraphQLVariable("media"), "taggedUsers": GraphQLVariable("taggedUsers"), "taggedLists": GraphQLVariable("taggedLists"), "ownerId": GraphQLVariable("ownerId"), "listId": GraphQLVariable("listId")]], type: .nonNull(.object(CreatePost.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(createPost: CreatePost) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "createPost": createPost.resultMap])
    }

    public var createPost: CreatePost {
      get {
        return CreatePost(unsafeResultMap: resultMap["createPost"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "createPost")
      }
    }

    public struct CreatePost: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Response"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message", type: .nonNull(.scalar(String.self))),
          GraphQLField("success", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("totalPosts", type: .scalar(Int.self)),
          GraphQLField("post", type: .object(Post.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(message: String, success: Bool, totalPosts: Int? = nil, post: Post? = nil) {
        self.init(unsafeResultMap: ["__typename": "Response", "message": message, "success": success, "totalPosts": totalPosts, "post": post.flatMap { (value: Post) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var message: String {
        get {
          return resultMap["message"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "message")
        }
      }

      public var success: Bool {
        get {
          return resultMap["success"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "success")
        }
      }

      public var totalPosts: Int? {
        get {
          return resultMap["totalPosts"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "totalPosts")
        }
      }

      public var post: Post? {
        get {
          return (resultMap["post"] as? ResultMap).flatMap { Post(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "post")
        }
      }

      public struct Post: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["createDataPostRef"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("_id", type: .scalar(GraphQLID.self)),
            GraphQLField("data", type: .scalar(String.self)),
            GraphQLField("list", type: .object(List.selections)),
            GraphQLField("business", type: .object(Business.selections)),
            GraphQLField("taggedUsers", type: .list(.object(TaggedUser.selections))),
            GraphQLField("taggedLists", type: .list(.object(TaggedList.selections))),
            GraphQLField("ownerId", type: .object(OwnerId.selections)),
            GraphQLField("likes", type: .list(.scalar(String.self))),
            GraphQLField("media", type: .list(.scalar(String.self))),
            GraphQLField("createdAt", type: .scalar(String.self)),
            GraphQLField("updatedAt", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(_id: GraphQLID? = nil, data: String? = nil, list: List? = nil, business: Business? = nil, taggedUsers: [TaggedUser?]? = nil, taggedLists: [TaggedList?]? = nil, ownerId: OwnerId? = nil, likes: [String?]? = nil, media: [String?]? = nil, createdAt: String? = nil, updatedAt: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "createDataPostRef", "_id": _id, "data": data, "list": list.flatMap { (value: List) -> ResultMap in value.resultMap }, "business": business.flatMap { (value: Business) -> ResultMap in value.resultMap }, "taggedUsers": taggedUsers.flatMap { (value: [TaggedUser?]) -> [ResultMap?] in value.map { (value: TaggedUser?) -> ResultMap? in value.flatMap { (value: TaggedUser) -> ResultMap in value.resultMap } } }, "taggedLists": taggedLists.flatMap { (value: [TaggedList?]) -> [ResultMap?] in value.map { (value: TaggedList?) -> ResultMap? in value.flatMap { (value: TaggedList) -> ResultMap in value.resultMap } } }, "ownerId": ownerId.flatMap { (value: OwnerId) -> ResultMap in value.resultMap }, "likes": likes, "media": media, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var _id: GraphQLID? {
          get {
            return resultMap["_id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "_id")
          }
        }

        public var data: String? {
          get {
            return resultMap["data"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "data")
          }
        }

        public var list: List? {
          get {
            return (resultMap["list"] as? ResultMap).flatMap { List(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "list")
          }
        }

        public var business: Business? {
          get {
            return (resultMap["business"] as? ResultMap).flatMap { Business(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "business")
          }
        }

        public var taggedUsers: [TaggedUser?]? {
          get {
            return (resultMap["taggedUsers"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [TaggedUser?] in value.map { (value: ResultMap?) -> TaggedUser? in value.flatMap { (value: ResultMap) -> TaggedUser in TaggedUser(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [TaggedUser?]) -> [ResultMap?] in value.map { (value: TaggedUser?) -> ResultMap? in value.flatMap { (value: TaggedUser) -> ResultMap in value.resultMap } } }, forKey: "taggedUsers")
          }
        }

        public var taggedLists: [TaggedList?]? {
          get {
            return (resultMap["taggedLists"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [TaggedList?] in value.map { (value: ResultMap?) -> TaggedList? in value.flatMap { (value: ResultMap) -> TaggedList in TaggedList(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [TaggedList?]) -> [ResultMap?] in value.map { (value: TaggedList?) -> ResultMap? in value.flatMap { (value: TaggedList) -> ResultMap in value.resultMap } } }, forKey: "taggedLists")
          }
        }

        public var ownerId: OwnerId? {
          get {
            return (resultMap["ownerId"] as? ResultMap).flatMap { OwnerId(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "ownerId")
          }
        }

        public var likes: [String?]? {
          get {
            return resultMap["likes"] as? [String?]
          }
          set {
            resultMap.updateValue(newValue, forKey: "likes")
          }
        }

        public var media: [String?]? {
          get {
            return resultMap["media"] as? [String?]
          }
          set {
            resultMap.updateValue(newValue, forKey: "media")
          }
        }

        public var createdAt: String? {
          get {
            return resultMap["createdAt"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String? {
          get {
            return resultMap["updatedAt"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct List: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["listRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("_id", type: .scalar(GraphQLID.self)),
              GraphQLField("name", type: .scalar(String.self)),
              GraphQLField("image", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(_id: GraphQLID? = nil, name: String? = nil, image: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "listRef", "_id": _id, "name": name, "image": image])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var _id: GraphQLID? {
            get {
              return resultMap["_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }

          public var image: String? {
            get {
              return resultMap["image"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "image")
            }
          }
        }

        public struct Business: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["businessRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("_id", type: .scalar(GraphQLID.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(_id: GraphQLID? = nil) {
            self.init(unsafeResultMap: ["__typename": "businessRef", "_id": _id])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var _id: GraphQLID? {
            get {
              return resultMap["_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }
        }

        public struct TaggedUser: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["userRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("list_ids", type: .list(.scalar(GraphQLID.self))),
              GraphQLField("_id", type: .scalar(GraphQLID.self)),
              GraphQLField("name", type: .scalar(String.self)),
              GraphQLField("blurb", type: .scalar(String.self)),
              GraphQLField("photo", type: .scalar(String.self)),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(listIds: [GraphQLID?]? = nil, _id: GraphQLID? = nil, name: String? = nil, blurb: String? = nil, photo: String? = nil, createdAt: String? = nil, updatedAt: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "userRef", "list_ids": listIds, "_id": _id, "name": name, "blurb": blurb, "photo": photo, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var listIds: [GraphQLID?]? {
            get {
              return resultMap["list_ids"] as? [GraphQLID?]
            }
            set {
              resultMap.updateValue(newValue, forKey: "list_ids")
            }
          }

          public var _id: GraphQLID? {
            get {
              return resultMap["_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }

          public var blurb: String? {
            get {
              return resultMap["blurb"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "blurb")
            }
          }

          public var photo: String? {
            get {
              return resultMap["photo"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "photo")
            }
          }

          public var createdAt: String? {
            get {
              return resultMap["createdAt"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String? {
            get {
              return resultMap["updatedAt"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "updatedAt")
            }
          }
        }

        public struct TaggedList: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["listRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("_id", type: .scalar(GraphQLID.self)),
              GraphQLField("name", type: .scalar(String.self)),
              GraphQLField("description", type: .scalar(String.self)),
              GraphQLField("items", type: .list(.scalar(GraphQLID.self))),
              GraphQLField("type", type: .scalar(String.self)),
              GraphQLField("photo", type: .scalar(String.self)),
              GraphQLField("account_id", type: .scalar(GraphQLID.self)),
              GraphQLField("createdAt", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(_id: GraphQLID? = nil, name: String? = nil, description: String? = nil, items: [GraphQLID?]? = nil, type: String? = nil, photo: String? = nil, accountId: GraphQLID? = nil, createdAt: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "listRef", "_id": _id, "name": name, "description": description, "items": items, "type": type, "photo": photo, "account_id": accountId, "createdAt": createdAt])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var _id: GraphQLID? {
            get {
              return resultMap["_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }

          public var description: String? {
            get {
              return resultMap["description"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "description")
            }
          }

          public var items: [GraphQLID?]? {
            get {
              return resultMap["items"] as? [GraphQLID?]
            }
            set {
              resultMap.updateValue(newValue, forKey: "items")
            }
          }

          public var type: String? {
            get {
              return resultMap["type"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "type")
            }
          }

          public var photo: String? {
            get {
              return resultMap["photo"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "photo")
            }
          }

          public var accountId: GraphQLID? {
            get {
              return resultMap["account_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "account_id")
            }
          }

          public var createdAt: String? {
            get {
              return resultMap["createdAt"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "createdAt")
            }
          }
        }

        public struct OwnerId: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["userProfileRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("_id", type: .scalar(GraphQLID.self)),
              GraphQLField("name", type: .scalar(String.self)),
              GraphQLField("email", type: .scalar(String.self)),
              GraphQLField("photo", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(_id: GraphQLID? = nil, name: String? = nil, email: String? = nil, photo: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "userProfileRef", "_id": _id, "name": name, "email": email, "photo": photo])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var _id: GraphQLID? {
            get {
              return resultMap["_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }

          public var email: String? {
            get {
              return resultMap["email"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "email")
            }
          }

          public var photo: String? {
            get {
              return resultMap["photo"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "photo")
            }
          }
        }
      }
    }
  }
}

public final class AddLikeToPostMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation AddLikeToPost($id: ID!, $userId: ID!) {
      addLikeToPost(input: {id: $id, userId: $userId}) {
        __typename
        message
        success
        like {
          __typename
          name
          email
          userSub
          phoneNumber
          photo
          lockProfile
          _id
        }
      }
    }
    """

  public let operationName: String = "AddLikeToPost"

  public var id: GraphQLID
  public var userId: GraphQLID

  public init(id: GraphQLID, userId: GraphQLID) {
    self.id = id
    self.userId = userId
  }

  public var variables: GraphQLMap? {
    return ["id": id, "userId": userId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("addLikeToPost", arguments: ["input": ["id": GraphQLVariable("id"), "userId": GraphQLVariable("userId")]], type: .nonNull(.object(AddLikeToPost.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(addLikeToPost: AddLikeToPost) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "addLikeToPost": addLikeToPost.resultMap])
    }

    public var addLikeToPost: AddLikeToPost {
      get {
        return AddLikeToPost(unsafeResultMap: resultMap["addLikeToPost"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "addLikeToPost")
      }
    }

    public struct AddLikeToPost: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["addLikeResponse"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message", type: .nonNull(.scalar(String.self))),
          GraphQLField("success", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("like", type: .object(Like.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(message: String, success: Bool, like: Like? = nil) {
        self.init(unsafeResultMap: ["__typename": "addLikeResponse", "message": message, "success": success, "like": like.flatMap { (value: Like) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var message: String {
        get {
          return resultMap["message"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "message")
        }
      }

      public var success: Bool {
        get {
          return resultMap["success"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "success")
        }
      }

      public var like: Like? {
        get {
          return (resultMap["like"] as? ResultMap).flatMap { Like(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "like")
        }
      }

      public struct Like: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["userProfileRef"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("email", type: .scalar(String.self)),
            GraphQLField("userSub", type: .scalar(String.self)),
            GraphQLField("phoneNumber", type: .scalar(String.self)),
            GraphQLField("photo", type: .scalar(String.self)),
            GraphQLField("lockProfile", type: .scalar(Int.self)),
            GraphQLField("_id", type: .scalar(GraphQLID.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(name: String? = nil, email: String? = nil, userSub: String? = nil, phoneNumber: String? = nil, photo: String? = nil, lockProfile: Int? = nil, _id: GraphQLID? = nil) {
          self.init(unsafeResultMap: ["__typename": "userProfileRef", "name": name, "email": email, "userSub": userSub, "phoneNumber": phoneNumber, "photo": photo, "lockProfile": lockProfile, "_id": _id])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var email: String? {
          get {
            return resultMap["email"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "email")
          }
        }

        public var userSub: String? {
          get {
            return resultMap["userSub"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "userSub")
          }
        }

        public var phoneNumber: String? {
          get {
            return resultMap["phoneNumber"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "phoneNumber")
          }
        }

        public var photo: String? {
          get {
            return resultMap["photo"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "photo")
          }
        }

        public var lockProfile: Int? {
          get {
            return resultMap["lockProfile"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "lockProfile")
          }
        }

        public var _id: GraphQLID? {
          get {
            return resultMap["_id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "_id")
          }
        }
      }
    }
  }
}

public final class DeletePostMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation DeletePost($id: ID!) {
      deletePost(input: {id: $id}) {
        __typename
        message
        success
      }
    }
    """

  public let operationName: String = "DeletePost"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("deletePost", arguments: ["input": ["id": GraphQLVariable("id")]], type: .nonNull(.object(DeletePost.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(deletePost: DeletePost) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "deletePost": deletePost.resultMap])
    }

    public var deletePost: DeletePost {
      get {
        return DeletePost(unsafeResultMap: resultMap["deletePost"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "deletePost")
      }
    }

    public struct DeletePost: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["updatePostResponse"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message", type: .nonNull(.scalar(String.self))),
          GraphQLField("success", type: .nonNull(.scalar(Bool.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(message: String, success: Bool) {
        self.init(unsafeResultMap: ["__typename": "updatePostResponse", "message": message, "success": success])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var message: String {
        get {
          return resultMap["message"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "message")
        }
      }

      public var success: Bool {
        get {
          return resultMap["success"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "success")
        }
      }
    }
  }
}

public final class UpdatePostMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation UpdatePost($business: ID, $data: String, $media: [String], $taggedUsers: [ID], $taggedLists: [ID], $ownerId: ID, $listId: ID, $_id: ID) {
      updatePost(
        input: {business: $business, data: $data, media: $media, taggedUsers: $taggedUsers, taggedLists: $taggedLists, ownerId: $ownerId, listId: $listId, _id: $_id}
      ) {
        __typename
        message
        success
        post {
          __typename
          _id
          data
          taggedUsers {
            __typename
            _id
            name
          }
          taggedLists {
            __typename
            _id
            name
          }
          media
          createdAt
        }
      }
    }
    """

  public let operationName: String = "UpdatePost"

  public var business: GraphQLID?
  public var data: String?
  public var media: [String?]?
  public var taggedUsers: [GraphQLID?]?
  public var taggedLists: [GraphQLID?]?
  public var ownerId: GraphQLID?
  public var listId: GraphQLID?
  public var _id: GraphQLID?

  public init(business: GraphQLID? = nil, data: String? = nil, media: [String?]? = nil, taggedUsers: [GraphQLID?]? = nil, taggedLists: [GraphQLID?]? = nil, ownerId: GraphQLID? = nil, listId: GraphQLID? = nil, _id: GraphQLID? = nil) {
    self.business = business
    self.data = data
    self.media = media
    self.taggedUsers = taggedUsers
    self.taggedLists = taggedLists
    self.ownerId = ownerId
    self.listId = listId
    self._id = _id
  }

  public var variables: GraphQLMap? {
    return ["business": business, "data": data, "media": media, "taggedUsers": taggedUsers, "taggedLists": taggedLists, "ownerId": ownerId, "listId": listId, "_id": _id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("updatePost", arguments: ["input": ["business": GraphQLVariable("business"), "data": GraphQLVariable("data"), "media": GraphQLVariable("media"), "taggedUsers": GraphQLVariable("taggedUsers"), "taggedLists": GraphQLVariable("taggedLists"), "ownerId": GraphQLVariable("ownerId"), "listId": GraphQLVariable("listId"), "_id": GraphQLVariable("_id")]], type: .nonNull(.object(UpdatePost.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(updatePost: UpdatePost) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "updatePost": updatePost.resultMap])
    }

    public var updatePost: UpdatePost {
      get {
        return UpdatePost(unsafeResultMap: resultMap["updatePost"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "updatePost")
      }
    }

    public struct UpdatePost: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["updatePostResponse"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message", type: .nonNull(.scalar(String.self))),
          GraphQLField("success", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("post", type: .object(Post.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(message: String, success: Bool, post: Post? = nil) {
        self.init(unsafeResultMap: ["__typename": "updatePostResponse", "message": message, "success": success, "post": post.flatMap { (value: Post) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var message: String {
        get {
          return resultMap["message"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "message")
        }
      }

      public var success: Bool {
        get {
          return resultMap["success"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "success")
        }
      }

      public var post: Post? {
        get {
          return (resultMap["post"] as? ResultMap).flatMap { Post(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "post")
        }
      }

      public struct Post: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["updatePostRef"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("_id", type: .scalar(GraphQLID.self)),
            GraphQLField("data", type: .scalar(String.self)),
            GraphQLField("taggedUsers", type: .list(.object(TaggedUser.selections))),
            GraphQLField("taggedLists", type: .list(.object(TaggedList.selections))),
            GraphQLField("media", type: .list(.scalar(String.self))),
            GraphQLField("createdAt", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(_id: GraphQLID? = nil, data: String? = nil, taggedUsers: [TaggedUser?]? = nil, taggedLists: [TaggedList?]? = nil, media: [String?]? = nil, createdAt: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "updatePostRef", "_id": _id, "data": data, "taggedUsers": taggedUsers.flatMap { (value: [TaggedUser?]) -> [ResultMap?] in value.map { (value: TaggedUser?) -> ResultMap? in value.flatMap { (value: TaggedUser) -> ResultMap in value.resultMap } } }, "taggedLists": taggedLists.flatMap { (value: [TaggedList?]) -> [ResultMap?] in value.map { (value: TaggedList?) -> ResultMap? in value.flatMap { (value: TaggedList) -> ResultMap in value.resultMap } } }, "media": media, "createdAt": createdAt])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var _id: GraphQLID? {
          get {
            return resultMap["_id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "_id")
          }
        }

        public var data: String? {
          get {
            return resultMap["data"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "data")
          }
        }

        public var taggedUsers: [TaggedUser?]? {
          get {
            return (resultMap["taggedUsers"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [TaggedUser?] in value.map { (value: ResultMap?) -> TaggedUser? in value.flatMap { (value: ResultMap) -> TaggedUser in TaggedUser(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [TaggedUser?]) -> [ResultMap?] in value.map { (value: TaggedUser?) -> ResultMap? in value.flatMap { (value: TaggedUser) -> ResultMap in value.resultMap } } }, forKey: "taggedUsers")
          }
        }

        public var taggedLists: [TaggedList?]? {
          get {
            return (resultMap["taggedLists"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [TaggedList?] in value.map { (value: ResultMap?) -> TaggedList? in value.flatMap { (value: ResultMap) -> TaggedList in TaggedList(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [TaggedList?]) -> [ResultMap?] in value.map { (value: TaggedList?) -> ResultMap? in value.flatMap { (value: TaggedList) -> ResultMap in value.resultMap } } }, forKey: "taggedLists")
          }
        }

        public var media: [String?]? {
          get {
            return resultMap["media"] as? [String?]
          }
          set {
            resultMap.updateValue(newValue, forKey: "media")
          }
        }

        public var createdAt: String? {
          get {
            return resultMap["createdAt"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "createdAt")
          }
        }

        public struct TaggedUser: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["userRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("_id", type: .scalar(GraphQLID.self)),
              GraphQLField("name", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(_id: GraphQLID? = nil, name: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "userRef", "_id": _id, "name": name])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var _id: GraphQLID? {
            get {
              return resultMap["_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }
        }

        public struct TaggedList: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["listRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("_id", type: .scalar(GraphQLID.self)),
              GraphQLField("name", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(_id: GraphQLID? = nil, name: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "listRef", "_id": _id, "name": name])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var _id: GraphQLID? {
            get {
              return resultMap["_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }
        }
      }
    }
  }
}

public final class CreateListMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation CreateList($name: String, $description: String, $media: [media], $ownerId: ID) {
      createList(
        input: {name: $name, description: $description, media: $media, ownerId: $ownerId}
      ) {
        __typename
        message
        success
        list {
          __typename
          _id
          name
          description
          ownerId
          posts
          likes
          subscribers
          media {
            __typename
            image
            thumbnail
          }
        }
      }
    }
    """

  public let operationName: String = "CreateList"

  public var name: String?
  public var description: String?
  public var media: [media?]?
  public var ownerId: GraphQLID?

  public init(name: String? = nil, description: String? = nil, media: [media?]? = nil, ownerId: GraphQLID? = nil) {
    self.name = name
    self.description = description
    self.media = media
    self.ownerId = ownerId
  }

  public var variables: GraphQLMap? {
    return ["name": name, "description": description, "media": media, "ownerId": ownerId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("createList", arguments: ["input": ["name": GraphQLVariable("name"), "description": GraphQLVariable("description"), "media": GraphQLVariable("media"), "ownerId": GraphQLVariable("ownerId")]], type: .nonNull(.object(CreateList.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(createList: CreateList) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "createList": createList.resultMap])
    }

    public var createList: CreateList {
      get {
        return CreateList(unsafeResultMap: resultMap["createList"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "createList")
      }
    }

    public struct CreateList: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["createListResponse"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message", type: .nonNull(.scalar(String.self))),
          GraphQLField("success", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("list", type: .object(List.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(message: String, success: Bool, list: List? = nil) {
        self.init(unsafeResultMap: ["__typename": "createListResponse", "message": message, "success": success, "list": list.flatMap { (value: List) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var message: String {
        get {
          return resultMap["message"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "message")
        }
      }

      public var success: Bool {
        get {
          return resultMap["success"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "success")
        }
      }

      public var list: List? {
        get {
          return (resultMap["list"] as? ResultMap).flatMap { List(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "list")
        }
      }

      public struct List: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["listDataRef"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("_id", type: .scalar(GraphQLID.self)),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("description", type: .scalar(String.self)),
            GraphQLField("ownerId", type: .scalar(GraphQLID.self)),
            GraphQLField("posts", type: .list(.scalar(GraphQLID.self))),
            GraphQLField("likes", type: .list(.scalar(GraphQLID.self))),
            GraphQLField("subscribers", type: .list(.scalar(GraphQLID.self))),
            GraphQLField("media", type: .list(.object(Medium.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(_id: GraphQLID? = nil, name: String? = nil, description: String? = nil, ownerId: GraphQLID? = nil, posts: [GraphQLID?]? = nil, likes: [GraphQLID?]? = nil, subscribers: [GraphQLID?]? = nil, media: [Medium?]? = nil) {
          self.init(unsafeResultMap: ["__typename": "listDataRef", "_id": _id, "name": name, "description": description, "ownerId": ownerId, "posts": posts, "likes": likes, "subscribers": subscribers, "media": media.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var _id: GraphQLID? {
          get {
            return resultMap["_id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "_id")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var description: String? {
          get {
            return resultMap["description"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "description")
          }
        }

        public var ownerId: GraphQLID? {
          get {
            return resultMap["ownerId"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "ownerId")
          }
        }

        public var posts: [GraphQLID?]? {
          get {
            return resultMap["posts"] as? [GraphQLID?]
          }
          set {
            resultMap.updateValue(newValue, forKey: "posts")
          }
        }

        public var likes: [GraphQLID?]? {
          get {
            return resultMap["likes"] as? [GraphQLID?]
          }
          set {
            resultMap.updateValue(newValue, forKey: "likes")
          }
        }

        public var subscribers: [GraphQLID?]? {
          get {
            return resultMap["subscribers"] as? [GraphQLID?]
          }
          set {
            resultMap.updateValue(newValue, forKey: "subscribers")
          }
        }

        public var media: [Medium?]? {
          get {
            return (resultMap["media"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Medium?] in value.map { (value: ResultMap?) -> Medium? in value.flatMap { (value: ResultMap) -> Medium in Medium(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }, forKey: "media")
          }
        }

        public struct Medium: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["outputMedia"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("image", type: .scalar(String.self)),
              GraphQLField("thumbnail", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(image: String? = nil, thumbnail: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "outputMedia", "image": image, "thumbnail": thumbnail])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var image: String? {
            get {
              return resultMap["image"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "image")
            }
          }

          public var thumbnail: String? {
            get {
              return resultMap["thumbnail"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "thumbnail")
            }
          }
        }
      }
    }
  }
}

public final class AddPostToListMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation addPostToList($listId: ID!, $postId: ID!) {
      addPostToList(input: {listId: $listId, postId: $postId}) {
        __typename
        message
        success
        list {
          __typename
          _id
          name
          description
          ownerId
          posts
          likes
          subscribers
          media {
            __typename
            image
            thumbnail
          }
        }
      }
    }
    """

  public let operationName: String = "addPostToList"

  public var listId: GraphQLID
  public var postId: GraphQLID

  public init(listId: GraphQLID, postId: GraphQLID) {
    self.listId = listId
    self.postId = postId
  }

  public var variables: GraphQLMap? {
    return ["listId": listId, "postId": postId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("addPostToList", arguments: ["input": ["listId": GraphQLVariable("listId"), "postId": GraphQLVariable("postId")]], type: .nonNull(.object(AddPostToList.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(addPostToList: AddPostToList) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "addPostToList": addPostToList.resultMap])
    }

    public var addPostToList: AddPostToList {
      get {
        return AddPostToList(unsafeResultMap: resultMap["addPostToList"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "addPostToList")
      }
    }

    public struct AddPostToList: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["createListResponse"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message", type: .nonNull(.scalar(String.self))),
          GraphQLField("success", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("list", type: .object(List.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(message: String, success: Bool, list: List? = nil) {
        self.init(unsafeResultMap: ["__typename": "createListResponse", "message": message, "success": success, "list": list.flatMap { (value: List) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var message: String {
        get {
          return resultMap["message"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "message")
        }
      }

      public var success: Bool {
        get {
          return resultMap["success"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "success")
        }
      }

      public var list: List? {
        get {
          return (resultMap["list"] as? ResultMap).flatMap { List(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "list")
        }
      }

      public struct List: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["listDataRef"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("_id", type: .scalar(GraphQLID.self)),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("description", type: .scalar(String.self)),
            GraphQLField("ownerId", type: .scalar(GraphQLID.self)),
            GraphQLField("posts", type: .list(.scalar(GraphQLID.self))),
            GraphQLField("likes", type: .list(.scalar(GraphQLID.self))),
            GraphQLField("subscribers", type: .list(.scalar(GraphQLID.self))),
            GraphQLField("media", type: .list(.object(Medium.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(_id: GraphQLID? = nil, name: String? = nil, description: String? = nil, ownerId: GraphQLID? = nil, posts: [GraphQLID?]? = nil, likes: [GraphQLID?]? = nil, subscribers: [GraphQLID?]? = nil, media: [Medium?]? = nil) {
          self.init(unsafeResultMap: ["__typename": "listDataRef", "_id": _id, "name": name, "description": description, "ownerId": ownerId, "posts": posts, "likes": likes, "subscribers": subscribers, "media": media.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var _id: GraphQLID? {
          get {
            return resultMap["_id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "_id")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var description: String? {
          get {
            return resultMap["description"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "description")
          }
        }

        public var ownerId: GraphQLID? {
          get {
            return resultMap["ownerId"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "ownerId")
          }
        }

        public var posts: [GraphQLID?]? {
          get {
            return resultMap["posts"] as? [GraphQLID?]
          }
          set {
            resultMap.updateValue(newValue, forKey: "posts")
          }
        }

        public var likes: [GraphQLID?]? {
          get {
            return resultMap["likes"] as? [GraphQLID?]
          }
          set {
            resultMap.updateValue(newValue, forKey: "likes")
          }
        }

        public var subscribers: [GraphQLID?]? {
          get {
            return resultMap["subscribers"] as? [GraphQLID?]
          }
          set {
            resultMap.updateValue(newValue, forKey: "subscribers")
          }
        }

        public var media: [Medium?]? {
          get {
            return (resultMap["media"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Medium?] in value.map { (value: ResultMap?) -> Medium? in value.flatMap { (value: ResultMap) -> Medium in Medium(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }, forKey: "media")
          }
        }

        public struct Medium: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["outputMedia"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("image", type: .scalar(String.self)),
              GraphQLField("thumbnail", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(image: String? = nil, thumbnail: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "outputMedia", "image": image, "thumbnail": thumbnail])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var image: String? {
            get {
              return resultMap["image"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "image")
            }
          }

          public var thumbnail: String? {
            get {
              return resultMap["thumbnail"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "thumbnail")
            }
          }
        }
      }
    }
  }
}

public final class AddEventToListMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation addEventToList($listId: ID!, $eventId: ID!) {
      addEventToList(input: {listId: $listId, eventId: $eventId}) {
        __typename
        message
        success
        list {
          __typename
          _id
          name
          description
          ownerId
          posts
          likes
          subscribers
          media {
            __typename
            image
            thumbnail
          }
        }
      }
    }
    """

  public let operationName: String = "addEventToList"

  public var listId: GraphQLID
  public var eventId: GraphQLID

  public init(listId: GraphQLID, eventId: GraphQLID) {
    self.listId = listId
    self.eventId = eventId
  }

  public var variables: GraphQLMap? {
    return ["listId": listId, "eventId": eventId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("addEventToList", arguments: ["input": ["listId": GraphQLVariable("listId"), "eventId": GraphQLVariable("eventId")]], type: .nonNull(.object(AddEventToList.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(addEventToList: AddEventToList) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "addEventToList": addEventToList.resultMap])
    }

    public var addEventToList: AddEventToList {
      get {
        return AddEventToList(unsafeResultMap: resultMap["addEventToList"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "addEventToList")
      }
    }

    public struct AddEventToList: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["createListResponse"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message", type: .nonNull(.scalar(String.self))),
          GraphQLField("success", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("list", type: .object(List.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(message: String, success: Bool, list: List? = nil) {
        self.init(unsafeResultMap: ["__typename": "createListResponse", "message": message, "success": success, "list": list.flatMap { (value: List) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var message: String {
        get {
          return resultMap["message"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "message")
        }
      }

      public var success: Bool {
        get {
          return resultMap["success"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "success")
        }
      }

      public var list: List? {
        get {
          return (resultMap["list"] as? ResultMap).flatMap { List(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "list")
        }
      }

      public struct List: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["listDataRef"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("_id", type: .scalar(GraphQLID.self)),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("description", type: .scalar(String.self)),
            GraphQLField("ownerId", type: .scalar(GraphQLID.self)),
            GraphQLField("posts", type: .list(.scalar(GraphQLID.self))),
            GraphQLField("likes", type: .list(.scalar(GraphQLID.self))),
            GraphQLField("subscribers", type: .list(.scalar(GraphQLID.self))),
            GraphQLField("media", type: .list(.object(Medium.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(_id: GraphQLID? = nil, name: String? = nil, description: String? = nil, ownerId: GraphQLID? = nil, posts: [GraphQLID?]? = nil, likes: [GraphQLID?]? = nil, subscribers: [GraphQLID?]? = nil, media: [Medium?]? = nil) {
          self.init(unsafeResultMap: ["__typename": "listDataRef", "_id": _id, "name": name, "description": description, "ownerId": ownerId, "posts": posts, "likes": likes, "subscribers": subscribers, "media": media.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var _id: GraphQLID? {
          get {
            return resultMap["_id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "_id")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var description: String? {
          get {
            return resultMap["description"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "description")
          }
        }

        public var ownerId: GraphQLID? {
          get {
            return resultMap["ownerId"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "ownerId")
          }
        }

        public var posts: [GraphQLID?]? {
          get {
            return resultMap["posts"] as? [GraphQLID?]
          }
          set {
            resultMap.updateValue(newValue, forKey: "posts")
          }
        }

        public var likes: [GraphQLID?]? {
          get {
            return resultMap["likes"] as? [GraphQLID?]
          }
          set {
            resultMap.updateValue(newValue, forKey: "likes")
          }
        }

        public var subscribers: [GraphQLID?]? {
          get {
            return resultMap["subscribers"] as? [GraphQLID?]
          }
          set {
            resultMap.updateValue(newValue, forKey: "subscribers")
          }
        }

        public var media: [Medium?]? {
          get {
            return (resultMap["media"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Medium?] in value.map { (value: ResultMap?) -> Medium? in value.flatMap { (value: ResultMap) -> Medium in Medium(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }, forKey: "media")
          }
        }

        public struct Medium: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["outputMedia"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("image", type: .scalar(String.self)),
              GraphQLField("thumbnail", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(image: String? = nil, thumbnail: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "outputMedia", "image": image, "thumbnail": thumbnail])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var image: String? {
            get {
              return resultMap["image"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "image")
            }
          }

          public var thumbnail: String? {
            get {
              return resultMap["thumbnail"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "thumbnail")
            }
          }
        }
      }
    }
  }
}

public final class DeleteUserListMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation DeleteUserList($listId: ID!, $userId: ID!) {
      deleteUserList(input: {listId: $listId, userId: $userId}) {
        __typename
        message
        success
        list {
          __typename
          _id
          name
          description
          ownerId {
            __typename
            name
          }
          posts
          subscribers
          media {
            __typename
            image
            thumbnail
          }
        }
      }
    }
    """

  public let operationName: String = "DeleteUserList"

  public var listId: GraphQLID
  public var userId: GraphQLID

  public init(listId: GraphQLID, userId: GraphQLID) {
    self.listId = listId
    self.userId = userId
  }

  public var variables: GraphQLMap? {
    return ["listId": listId, "userId": userId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("deleteUserList", arguments: ["input": ["listId": GraphQLVariable("listId"), "userId": GraphQLVariable("userId")]], type: .nonNull(.object(DeleteUserList.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(deleteUserList: DeleteUserList) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "deleteUserList": deleteUserList.resultMap])
    }

    public var deleteUserList: DeleteUserList {
      get {
        return DeleteUserList(unsafeResultMap: resultMap["deleteUserList"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "deleteUserList")
      }
    }

    public struct DeleteUserList: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["deleteListResponse"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message", type: .nonNull(.scalar(String.self))),
          GraphQLField("success", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("list", type: .object(List.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(message: String, success: Bool, list: List? = nil) {
        self.init(unsafeResultMap: ["__typename": "deleteListResponse", "message": message, "success": success, "list": list.flatMap { (value: List) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var message: String {
        get {
          return resultMap["message"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "message")
        }
      }

      public var success: Bool {
        get {
          return resultMap["success"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "success")
        }
      }

      public var list: List? {
        get {
          return (resultMap["list"] as? ResultMap).flatMap { List(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "list")
        }
      }

      public struct List: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["listRef"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("_id", type: .scalar(GraphQLID.self)),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("description", type: .scalar(String.self)),
            GraphQLField("ownerId", type: .object(OwnerId.selections)),
            GraphQLField("posts", type: .list(.scalar(GraphQLID.self))),
            GraphQLField("subscribers", type: .list(.scalar(GraphQLID.self))),
            GraphQLField("media", type: .list(.object(Medium.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(_id: GraphQLID? = nil, name: String? = nil, description: String? = nil, ownerId: OwnerId? = nil, posts: [GraphQLID?]? = nil, subscribers: [GraphQLID?]? = nil, media: [Medium?]? = nil) {
          self.init(unsafeResultMap: ["__typename": "listRef", "_id": _id, "name": name, "description": description, "ownerId": ownerId.flatMap { (value: OwnerId) -> ResultMap in value.resultMap }, "posts": posts, "subscribers": subscribers, "media": media.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var _id: GraphQLID? {
          get {
            return resultMap["_id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "_id")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var description: String? {
          get {
            return resultMap["description"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "description")
          }
        }

        public var ownerId: OwnerId? {
          get {
            return (resultMap["ownerId"] as? ResultMap).flatMap { OwnerId(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "ownerId")
          }
        }

        public var posts: [GraphQLID?]? {
          get {
            return resultMap["posts"] as? [GraphQLID?]
          }
          set {
            resultMap.updateValue(newValue, forKey: "posts")
          }
        }

        public var subscribers: [GraphQLID?]? {
          get {
            return resultMap["subscribers"] as? [GraphQLID?]
          }
          set {
            resultMap.updateValue(newValue, forKey: "subscribers")
          }
        }

        public var media: [Medium?]? {
          get {
            return (resultMap["media"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Medium?] in value.map { (value: ResultMap?) -> Medium? in value.flatMap { (value: ResultMap) -> Medium in Medium(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }, forKey: "media")
          }
        }

        public struct OwnerId: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["userDataRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("name", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(name: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "userDataRef", "name": name])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }
        }

        public struct Medium: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["outputMedia"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("image", type: .scalar(String.self)),
              GraphQLField("thumbnail", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(image: String? = nil, thumbnail: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "outputMedia", "image": image, "thumbnail": thumbnail])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var image: String? {
            get {
              return resultMap["image"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "image")
            }
          }

          public var thumbnail: String? {
            get {
              return resultMap["thumbnail"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "thumbnail")
            }
          }
        }
      }
    }
  }
}

public final class SubscribeToAListMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation SubscribeToAList($listId: ID!, $userId: ID!) {
      subscribeToAList(input: {listId: $listId, userId: $userId}) {
        __typename
        message
        success
      }
    }
    """

  public let operationName: String = "SubscribeToAList"

  public var listId: GraphQLID
  public var userId: GraphQLID

  public init(listId: GraphQLID, userId: GraphQLID) {
    self.listId = listId
    self.userId = userId
  }

  public var variables: GraphQLMap? {
    return ["listId": listId, "userId": userId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("subscribeToAList", arguments: ["input": ["listId": GraphQLVariable("listId"), "userId": GraphQLVariable("userId")]], type: .nonNull(.object(SubscribeToAList.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(subscribeToAList: SubscribeToAList) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "subscribeToAList": subscribeToAList.resultMap])
    }

    public var subscribeToAList: SubscribeToAList {
      get {
        return SubscribeToAList(unsafeResultMap: resultMap["subscribeToAList"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "subscribeToAList")
      }
    }

    public struct SubscribeToAList: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Response"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message", type: .nonNull(.scalar(String.self))),
          GraphQLField("success", type: .nonNull(.scalar(Bool.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(message: String, success: Bool) {
        self.init(unsafeResultMap: ["__typename": "Response", "message": message, "success": success])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var message: String {
        get {
          return resultMap["message"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "message")
        }
      }

      public var success: Bool {
        get {
          return resultMap["success"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "success")
        }
      }
    }
  }
}

public final class UnSubscribeToAListMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation UnSubscribeToAList($listId: ID!, $userId: ID!) {
      unSubscribeToAList(input: {listId: $listId, userId: $userId}) {
        __typename
        message
        success
      }
    }
    """

  public let operationName: String = "UnSubscribeToAList"

  public var listId: GraphQLID
  public var userId: GraphQLID

  public init(listId: GraphQLID, userId: GraphQLID) {
    self.listId = listId
    self.userId = userId
  }

  public var variables: GraphQLMap? {
    return ["listId": listId, "userId": userId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("unSubscribeToAList", arguments: ["input": ["listId": GraphQLVariable("listId"), "userId": GraphQLVariable("userId")]], type: .nonNull(.object(UnSubscribeToAList.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(unSubscribeToAList: UnSubscribeToAList) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "unSubscribeToAList": unSubscribeToAList.resultMap])
    }

    public var unSubscribeToAList: UnSubscribeToAList {
      get {
        return UnSubscribeToAList(unsafeResultMap: resultMap["unSubscribeToAList"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "unSubscribeToAList")
      }
    }

    public struct UnSubscribeToAList: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Response"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message", type: .nonNull(.scalar(String.self))),
          GraphQLField("success", type: .nonNull(.scalar(Bool.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(message: String, success: Bool) {
        self.init(unsafeResultMap: ["__typename": "Response", "message": message, "success": success])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var message: String {
        get {
          return resultMap["message"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "message")
        }
      }

      public var success: Bool {
        get {
          return resultMap["success"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "success")
        }
      }
    }
  }
}

public final class DeletePostFromAListMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation deletePostFromAList($listId: ID!, $postId: ID!) {
      deletePostFromAList(input: {listId: $listId, postId: $postId}) {
        __typename
        message
        success
        list {
          __typename
          _id
          name
          description
          ownerId
          posts
          likes
          subscribers
          media {
            __typename
            image
            thumbnail
          }
        }
      }
    }
    """

  public let operationName: String = "deletePostFromAList"

  public var listId: GraphQLID
  public var postId: GraphQLID

  public init(listId: GraphQLID, postId: GraphQLID) {
    self.listId = listId
    self.postId = postId
  }

  public var variables: GraphQLMap? {
    return ["listId": listId, "postId": postId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("deletePostFromAList", arguments: ["input": ["listId": GraphQLVariable("listId"), "postId": GraphQLVariable("postId")]], type: .nonNull(.object(DeletePostFromAList.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(deletePostFromAList: DeletePostFromAList) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "deletePostFromAList": deletePostFromAList.resultMap])
    }

    public var deletePostFromAList: DeletePostFromAList {
      get {
        return DeletePostFromAList(unsafeResultMap: resultMap["deletePostFromAList"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "deletePostFromAList")
      }
    }

    public struct DeletePostFromAList: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["createListResponse"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message", type: .nonNull(.scalar(String.self))),
          GraphQLField("success", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("list", type: .object(List.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(message: String, success: Bool, list: List? = nil) {
        self.init(unsafeResultMap: ["__typename": "createListResponse", "message": message, "success": success, "list": list.flatMap { (value: List) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var message: String {
        get {
          return resultMap["message"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "message")
        }
      }

      public var success: Bool {
        get {
          return resultMap["success"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "success")
        }
      }

      public var list: List? {
        get {
          return (resultMap["list"] as? ResultMap).flatMap { List(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "list")
        }
      }

      public struct List: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["listDataRef"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("_id", type: .scalar(GraphQLID.self)),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("description", type: .scalar(String.self)),
            GraphQLField("ownerId", type: .scalar(GraphQLID.self)),
            GraphQLField("posts", type: .list(.scalar(GraphQLID.self))),
            GraphQLField("likes", type: .list(.scalar(GraphQLID.self))),
            GraphQLField("subscribers", type: .list(.scalar(GraphQLID.self))),
            GraphQLField("media", type: .list(.object(Medium.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(_id: GraphQLID? = nil, name: String? = nil, description: String? = nil, ownerId: GraphQLID? = nil, posts: [GraphQLID?]? = nil, likes: [GraphQLID?]? = nil, subscribers: [GraphQLID?]? = nil, media: [Medium?]? = nil) {
          self.init(unsafeResultMap: ["__typename": "listDataRef", "_id": _id, "name": name, "description": description, "ownerId": ownerId, "posts": posts, "likes": likes, "subscribers": subscribers, "media": media.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var _id: GraphQLID? {
          get {
            return resultMap["_id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "_id")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var description: String? {
          get {
            return resultMap["description"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "description")
          }
        }

        public var ownerId: GraphQLID? {
          get {
            return resultMap["ownerId"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "ownerId")
          }
        }

        public var posts: [GraphQLID?]? {
          get {
            return resultMap["posts"] as? [GraphQLID?]
          }
          set {
            resultMap.updateValue(newValue, forKey: "posts")
          }
        }

        public var likes: [GraphQLID?]? {
          get {
            return resultMap["likes"] as? [GraphQLID?]
          }
          set {
            resultMap.updateValue(newValue, forKey: "likes")
          }
        }

        public var subscribers: [GraphQLID?]? {
          get {
            return resultMap["subscribers"] as? [GraphQLID?]
          }
          set {
            resultMap.updateValue(newValue, forKey: "subscribers")
          }
        }

        public var media: [Medium?]? {
          get {
            return (resultMap["media"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Medium?] in value.map { (value: ResultMap?) -> Medium? in value.flatMap { (value: ResultMap) -> Medium in Medium(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [Medium?]) -> [ResultMap?] in value.map { (value: Medium?) -> ResultMap? in value.flatMap { (value: Medium) -> ResultMap in value.resultMap } } }, forKey: "media")
          }
        }

        public struct Medium: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["outputMedia"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("image", type: .scalar(String.self)),
              GraphQLField("thumbnail", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(image: String? = nil, thumbnail: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "outputMedia", "image": image, "thumbnail": thumbnail])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var image: String? {
            get {
              return resultMap["image"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "image")
            }
          }

          public var thumbnail: String? {
            get {
              return resultMap["thumbnail"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "thumbnail")
            }
          }
        }
      }
    }
  }
}

public final class AddLikeToEventsMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation AddLikeToEvents($id: ID!, $userId: ID!) {
      addLikeToEvents(input: {id: $id, userId: $userId}) {
        __typename
        message
        success
        like {
          __typename
          name
          email
          userSub
          phoneNumber
          photo
          lockProfile
          _id
        }
      }
    }
    """

  public let operationName: String = "AddLikeToEvents"

  public var id: GraphQLID
  public var userId: GraphQLID

  public init(id: GraphQLID, userId: GraphQLID) {
    self.id = id
    self.userId = userId
  }

  public var variables: GraphQLMap? {
    return ["id": id, "userId": userId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("addLikeToEvents", arguments: ["input": ["id": GraphQLVariable("id"), "userId": GraphQLVariable("userId")]], type: .nonNull(.object(AddLikeToEvent.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(addLikeToEvents: AddLikeToEvent) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "addLikeToEvents": addLikeToEvents.resultMap])
    }

    public var addLikeToEvents: AddLikeToEvent {
      get {
        return AddLikeToEvent(unsafeResultMap: resultMap["addLikeToEvents"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "addLikeToEvents")
      }
    }

    public struct AddLikeToEvent: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["addLikeResponse"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message", type: .nonNull(.scalar(String.self))),
          GraphQLField("success", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("like", type: .object(Like.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(message: String, success: Bool, like: Like? = nil) {
        self.init(unsafeResultMap: ["__typename": "addLikeResponse", "message": message, "success": success, "like": like.flatMap { (value: Like) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var message: String {
        get {
          return resultMap["message"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "message")
        }
      }

      public var success: Bool {
        get {
          return resultMap["success"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "success")
        }
      }

      public var like: Like? {
        get {
          return (resultMap["like"] as? ResultMap).flatMap { Like(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "like")
        }
      }

      public struct Like: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["userProfileRef"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("email", type: .scalar(String.self)),
            GraphQLField("userSub", type: .scalar(String.self)),
            GraphQLField("phoneNumber", type: .scalar(String.self)),
            GraphQLField("photo", type: .scalar(String.self)),
            GraphQLField("lockProfile", type: .scalar(Int.self)),
            GraphQLField("_id", type: .scalar(GraphQLID.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(name: String? = nil, email: String? = nil, userSub: String? = nil, phoneNumber: String? = nil, photo: String? = nil, lockProfile: Int? = nil, _id: GraphQLID? = nil) {
          self.init(unsafeResultMap: ["__typename": "userProfileRef", "name": name, "email": email, "userSub": userSub, "phoneNumber": phoneNumber, "photo": photo, "lockProfile": lockProfile, "_id": _id])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var email: String? {
          get {
            return resultMap["email"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "email")
          }
        }

        public var userSub: String? {
          get {
            return resultMap["userSub"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "userSub")
          }
        }

        public var phoneNumber: String? {
          get {
            return resultMap["phoneNumber"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "phoneNumber")
          }
        }

        public var photo: String? {
          get {
            return resultMap["photo"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "photo")
          }
        }

        public var lockProfile: Int? {
          get {
            return resultMap["lockProfile"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "lockProfile")
          }
        }

        public var _id: GraphQLID? {
          get {
            return resultMap["_id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "_id")
          }
        }
      }
    }
  }
}

public final class AddEventMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation AddEvent($title: String, $description: String, $user: ID, $business: ID, $eventSchedule: eventScheduleInput, $recurring: [Int], $media: [String], $listId: ID, $taggedUsers: [ID], $taggedLists: [ID]) {
      addEvent(
        input: {title: $title, description: $description, user: $user, business: $business, eventSchedule: $eventSchedule, recurring: $recurring, media: $media, listId: $listId, taggedUsers: $taggedUsers, taggedLists: $taggedLists}
      ) {
        __typename
        message
        success
        event {
          __typename
          _id
          business {
            __typename
            _id
            company_name
          }
          user {
            __typename
            _id
            name
            photo
          }
          title
          description
          eventSchedule {
            __typename
            start_time
            end_time
          }
          recurring
          media
        }
      }
    }
    """

  public let operationName: String = "AddEvent"

  public var title: String?
  public var description: String?
  public var user: GraphQLID?
  public var business: GraphQLID?
  public var eventSchedule: eventScheduleInput?
  public var recurring: [Int?]?
  public var media: [String?]?
  public var listId: GraphQLID?
  public var taggedUsers: [GraphQLID?]?
  public var taggedLists: [GraphQLID?]?

  public init(title: String? = nil, description: String? = nil, user: GraphQLID? = nil, business: GraphQLID? = nil, eventSchedule: eventScheduleInput? = nil, recurring: [Int?]? = nil, media: [String?]? = nil, listId: GraphQLID? = nil, taggedUsers: [GraphQLID?]? = nil, taggedLists: [GraphQLID?]? = nil) {
    self.title = title
    self.description = description
    self.user = user
    self.business = business
    self.eventSchedule = eventSchedule
    self.recurring = recurring
    self.media = media
    self.listId = listId
    self.taggedUsers = taggedUsers
    self.taggedLists = taggedLists
  }

  public var variables: GraphQLMap? {
    return ["title": title, "description": description, "user": user, "business": business, "eventSchedule": eventSchedule, "recurring": recurring, "media": media, "listId": listId, "taggedUsers": taggedUsers, "taggedLists": taggedLists]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("addEvent", arguments: ["input": ["title": GraphQLVariable("title"), "description": GraphQLVariable("description"), "user": GraphQLVariable("user"), "business": GraphQLVariable("business"), "eventSchedule": GraphQLVariable("eventSchedule"), "recurring": GraphQLVariable("recurring"), "media": GraphQLVariable("media"), "listId": GraphQLVariable("listId"), "taggedUsers": GraphQLVariable("taggedUsers"), "taggedLists": GraphQLVariable("taggedLists")]], type: .nonNull(.object(AddEvent.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(addEvent: AddEvent) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "addEvent": addEvent.resultMap])
    }

    public var addEvent: AddEvent {
      get {
        return AddEvent(unsafeResultMap: resultMap["addEvent"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "addEvent")
      }
    }

    public struct AddEvent: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["addEventResponse"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message", type: .nonNull(.scalar(String.self))),
          GraphQLField("success", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("event", type: .object(Event.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(message: String, success: Bool, event: Event? = nil) {
        self.init(unsafeResultMap: ["__typename": "addEventResponse", "message": message, "success": success, "event": event.flatMap { (value: Event) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var message: String {
        get {
          return resultMap["message"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "message")
        }
      }

      public var success: Bool {
        get {
          return resultMap["success"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "success")
        }
      }

      public var event: Event? {
        get {
          return (resultMap["event"] as? ResultMap).flatMap { Event(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "event")
        }
      }

      public struct Event: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["eventRef"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("_id", type: .scalar(GraphQLID.self)),
            GraphQLField("business", type: .object(Business.selections)),
            GraphQLField("user", type: .object(User.selections)),
            GraphQLField("title", type: .scalar(String.self)),
            GraphQLField("description", type: .scalar(String.self)),
            GraphQLField("eventSchedule", type: .object(EventSchedule.selections)),
            GraphQLField("recurring", type: .list(.scalar(Int.self))),
            GraphQLField("media", type: .list(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(_id: GraphQLID? = nil, business: Business? = nil, user: User? = nil, title: String? = nil, description: String? = nil, eventSchedule: EventSchedule? = nil, recurring: [Int?]? = nil, media: [String?]? = nil) {
          self.init(unsafeResultMap: ["__typename": "eventRef", "_id": _id, "business": business.flatMap { (value: Business) -> ResultMap in value.resultMap }, "user": user.flatMap { (value: User) -> ResultMap in value.resultMap }, "title": title, "description": description, "eventSchedule": eventSchedule.flatMap { (value: EventSchedule) -> ResultMap in value.resultMap }, "recurring": recurring, "media": media])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var _id: GraphQLID? {
          get {
            return resultMap["_id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "_id")
          }
        }

        public var business: Business? {
          get {
            return (resultMap["business"] as? ResultMap).flatMap { Business(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "business")
          }
        }

        public var user: User? {
          get {
            return (resultMap["user"] as? ResultMap).flatMap { User(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "user")
          }
        }

        public var title: String? {
          get {
            return resultMap["title"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "title")
          }
        }

        public var description: String? {
          get {
            return resultMap["description"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "description")
          }
        }

        public var eventSchedule: EventSchedule? {
          get {
            return (resultMap["eventSchedule"] as? ResultMap).flatMap { EventSchedule(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "eventSchedule")
          }
        }

        public var recurring: [Int?]? {
          get {
            return resultMap["recurring"] as? [Int?]
          }
          set {
            resultMap.updateValue(newValue, forKey: "recurring")
          }
        }

        public var media: [String?]? {
          get {
            return resultMap["media"] as? [String?]
          }
          set {
            resultMap.updateValue(newValue, forKey: "media")
          }
        }

        public struct Business: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["businessRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("_id", type: .scalar(GraphQLID.self)),
              GraphQLField("company_name", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(_id: GraphQLID? = nil, companyName: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "businessRef", "_id": _id, "company_name": companyName])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var _id: GraphQLID? {
            get {
              return resultMap["_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }

          public var companyName: String? {
            get {
              return resultMap["company_name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "company_name")
            }
          }
        }

        public struct User: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["userProfileRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("_id", type: .scalar(GraphQLID.self)),
              GraphQLField("name", type: .scalar(String.self)),
              GraphQLField("photo", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(_id: GraphQLID? = nil, name: String? = nil, photo: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "userProfileRef", "_id": _id, "name": name, "photo": photo])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var _id: GraphQLID? {
            get {
              return resultMap["_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }

          public var photo: String? {
            get {
              return resultMap["photo"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "photo")
            }
          }
        }

        public struct EventSchedule: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["eventScheduleRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("start_time", type: .scalar(String.self)),
              GraphQLField("end_time", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(startTime: String? = nil, endTime: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "eventScheduleRef", "start_time": startTime, "end_time": endTime])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var startTime: String? {
            get {
              return resultMap["start_time"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "start_time")
            }
          }

          public var endTime: String? {
            get {
              return resultMap["end_time"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "end_time")
            }
          }
        }
      }
    }
  }
}

public final class CreateCommentMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation CreateComment($itemId: ID, $userId: ID, $body: String, $created_on: Date) {
      createComment(
        input: {itemId: $itemId, userId: $userId, body: $body, created_on: $created_on}
      ) {
        __typename
        message
        success
        post {
          __typename
          _id
          userId {
            __typename
            _id
            list_ids
            name
            blurb
            photo
            createdAt
            updatedAt
          }
          itemId {
            __typename
            _id
          }
          body
          replies {
            __typename
            userId {
              __typename
              _id
              list_ids
              name
              blurb
              photo
              createdAt
              updatedAt
            }
            body
            created_on
          }
          createdAt
          updatedAt
        }
      }
    }
    """

  public let operationName: String = "CreateComment"

  public var itemId: GraphQLID?
  public var userId: GraphQLID?
  public var body: String?
  public var created_on: String?

  public init(itemId: GraphQLID? = nil, userId: GraphQLID? = nil, body: String? = nil, created_on: String? = nil) {
    self.itemId = itemId
    self.userId = userId
    self.body = body
    self.created_on = created_on
  }

  public var variables: GraphQLMap? {
    return ["itemId": itemId, "userId": userId, "body": body, "created_on": created_on]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("createComment", arguments: ["input": ["itemId": GraphQLVariable("itemId"), "userId": GraphQLVariable("userId"), "body": GraphQLVariable("body"), "created_on": GraphQLVariable("created_on")]], type: .nonNull(.object(CreateComment.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(createComment: CreateComment) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "createComment": createComment.resultMap])
    }

    public var createComment: CreateComment {
      get {
        return CreateComment(unsafeResultMap: resultMap["createComment"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "createComment")
      }
    }

    public struct CreateComment: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["commentResponse"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message", type: .nonNull(.scalar(String.self))),
          GraphQLField("success", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("post", type: .list(.object(Post.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(message: String, success: Bool, post: [Post?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "commentResponse", "message": message, "success": success, "post": post.flatMap { (value: [Post?]) -> [ResultMap?] in value.map { (value: Post?) -> ResultMap? in value.flatMap { (value: Post) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var message: String {
        get {
          return resultMap["message"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "message")
        }
      }

      public var success: Bool {
        get {
          return resultMap["success"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "success")
        }
      }

      public var post: [Post?]? {
        get {
          return (resultMap["post"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Post?] in value.map { (value: ResultMap?) -> Post? in value.flatMap { (value: ResultMap) -> Post in Post(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Post?]) -> [ResultMap?] in value.map { (value: Post?) -> ResultMap? in value.flatMap { (value: Post) -> ResultMap in value.resultMap } } }, forKey: "post")
        }
      }

      public struct Post: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["commentRef"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("_id", type: .scalar(GraphQLID.self)),
            GraphQLField("userId", type: .object(UserId.selections)),
            GraphQLField("itemId", type: .object(ItemId.selections)),
            GraphQLField("body", type: .scalar(String.self)),
            GraphQLField("replies", type: .list(.object(Reply.selections))),
            GraphQLField("createdAt", type: .scalar(String.self)),
            GraphQLField("updatedAt", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(_id: GraphQLID? = nil, userId: UserId? = nil, itemId: ItemId? = nil, body: String? = nil, replies: [Reply?]? = nil, createdAt: String? = nil, updatedAt: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "commentRef", "_id": _id, "userId": userId.flatMap { (value: UserId) -> ResultMap in value.resultMap }, "itemId": itemId.flatMap { (value: ItemId) -> ResultMap in value.resultMap }, "body": body, "replies": replies.flatMap { (value: [Reply?]) -> [ResultMap?] in value.map { (value: Reply?) -> ResultMap? in value.flatMap { (value: Reply) -> ResultMap in value.resultMap } } }, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var _id: GraphQLID? {
          get {
            return resultMap["_id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "_id")
          }
        }

        public var userId: UserId? {
          get {
            return (resultMap["userId"] as? ResultMap).flatMap { UserId(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "userId")
          }
        }

        public var itemId: ItemId? {
          get {
            return (resultMap["itemId"] as? ResultMap).flatMap { ItemId(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "itemId")
          }
        }

        public var body: String? {
          get {
            return resultMap["body"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "body")
          }
        }

        public var replies: [Reply?]? {
          get {
            return (resultMap["replies"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Reply?] in value.map { (value: ResultMap?) -> Reply? in value.flatMap { (value: ResultMap) -> Reply in Reply(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [Reply?]) -> [ResultMap?] in value.map { (value: Reply?) -> ResultMap? in value.flatMap { (value: Reply) -> ResultMap in value.resultMap } } }, forKey: "replies")
          }
        }

        public var createdAt: String? {
          get {
            return resultMap["createdAt"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String? {
          get {
            return resultMap["updatedAt"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct UserId: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["userRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("_id", type: .scalar(GraphQLID.self)),
              GraphQLField("list_ids", type: .list(.scalar(GraphQLID.self))),
              GraphQLField("name", type: .scalar(String.self)),
              GraphQLField("blurb", type: .scalar(String.self)),
              GraphQLField("photo", type: .scalar(String.self)),
              GraphQLField("createdAt", type: .scalar(String.self)),
              GraphQLField("updatedAt", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(_id: GraphQLID? = nil, listIds: [GraphQLID?]? = nil, name: String? = nil, blurb: String? = nil, photo: String? = nil, createdAt: String? = nil, updatedAt: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "userRef", "_id": _id, "list_ids": listIds, "name": name, "blurb": blurb, "photo": photo, "createdAt": createdAt, "updatedAt": updatedAt])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var _id: GraphQLID? {
            get {
              return resultMap["_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }

          public var listIds: [GraphQLID?]? {
            get {
              return resultMap["list_ids"] as? [GraphQLID?]
            }
            set {
              resultMap.updateValue(newValue, forKey: "list_ids")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }

          public var blurb: String? {
            get {
              return resultMap["blurb"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "blurb")
            }
          }

          public var photo: String? {
            get {
              return resultMap["photo"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "photo")
            }
          }

          public var createdAt: String? {
            get {
              return resultMap["createdAt"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String? {
            get {
              return resultMap["updatedAt"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "updatedAt")
            }
          }
        }

        public struct ItemId: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["postRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("_id", type: .scalar(GraphQLID.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(_id: GraphQLID? = nil) {
            self.init(unsafeResultMap: ["__typename": "postRef", "_id": _id])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var _id: GraphQLID? {
            get {
              return resultMap["_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }
        }

        public struct Reply: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["replyRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("userId", type: .object(UserId.selections)),
              GraphQLField("body", type: .scalar(String.self)),
              GraphQLField("created_on", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(userId: UserId? = nil, body: String? = nil, createdOn: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "replyRef", "userId": userId.flatMap { (value: UserId) -> ResultMap in value.resultMap }, "body": body, "created_on": createdOn])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var userId: UserId? {
            get {
              return (resultMap["userId"] as? ResultMap).flatMap { UserId(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "userId")
            }
          }

          public var body: String? {
            get {
              return resultMap["body"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "body")
            }
          }

          public var createdOn: String? {
            get {
              return resultMap["created_on"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "created_on")
            }
          }

          public struct UserId: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["userRef"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("_id", type: .scalar(GraphQLID.self)),
                GraphQLField("list_ids", type: .list(.scalar(GraphQLID.self))),
                GraphQLField("name", type: .scalar(String.self)),
                GraphQLField("blurb", type: .scalar(String.self)),
                GraphQLField("photo", type: .scalar(String.self)),
                GraphQLField("createdAt", type: .scalar(String.self)),
                GraphQLField("updatedAt", type: .scalar(String.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(_id: GraphQLID? = nil, listIds: [GraphQLID?]? = nil, name: String? = nil, blurb: String? = nil, photo: String? = nil, createdAt: String? = nil, updatedAt: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "userRef", "_id": _id, "list_ids": listIds, "name": name, "blurb": blurb, "photo": photo, "createdAt": createdAt, "updatedAt": updatedAt])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var _id: GraphQLID? {
              get {
                return resultMap["_id"] as? GraphQLID
              }
              set {
                resultMap.updateValue(newValue, forKey: "_id")
              }
            }

            public var listIds: [GraphQLID?]? {
              get {
                return resultMap["list_ids"] as? [GraphQLID?]
              }
              set {
                resultMap.updateValue(newValue, forKey: "list_ids")
              }
            }

            public var name: String? {
              get {
                return resultMap["name"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "name")
              }
            }

            public var blurb: String? {
              get {
                return resultMap["blurb"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "blurb")
              }
            }

            public var photo: String? {
              get {
                return resultMap["photo"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "photo")
              }
            }

            public var createdAt: String? {
              get {
                return resultMap["createdAt"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "createdAt")
              }
            }

            public var updatedAt: String? {
              get {
                return resultMap["updatedAt"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "updatedAt")
              }
            }
          }
        }
      }
    }
  }
}

public final class CreateReplyMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation CreateReply($_id: ID!, $userId: ID!, $body: String!) {
      createReply(input: {_id: $_id, userId: $userId, body: $body}) {
        __typename
        message
        success
        reply {
          __typename
          _id
          userId {
            __typename
            _id
            name
            photo
          }
          body
          created_on
        }
      }
    }
    """

  public let operationName: String = "CreateReply"

  public var _id: GraphQLID
  public var userId: GraphQLID
  public var body: String

  public init(_id: GraphQLID, userId: GraphQLID, body: String) {
    self._id = _id
    self.userId = userId
    self.body = body
  }

  public var variables: GraphQLMap? {
    return ["_id": _id, "userId": userId, "body": body]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("createReply", arguments: ["input": ["_id": GraphQLVariable("_id"), "userId": GraphQLVariable("userId"), "body": GraphQLVariable("body")]], type: .nonNull(.object(CreateReply.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(createReply: CreateReply) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "createReply": createReply.resultMap])
    }

    public var createReply: CreateReply {
      get {
        return CreateReply(unsafeResultMap: resultMap["createReply"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "createReply")
      }
    }

    public struct CreateReply: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["replyResponse"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message", type: .nonNull(.scalar(String.self))),
          GraphQLField("success", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("reply", type: .object(Reply.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(message: String, success: Bool, reply: Reply? = nil) {
        self.init(unsafeResultMap: ["__typename": "replyResponse", "message": message, "success": success, "reply": reply.flatMap { (value: Reply) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var message: String {
        get {
          return resultMap["message"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "message")
        }
      }

      public var success: Bool {
        get {
          return resultMap["success"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "success")
        }
      }

      public var reply: Reply? {
        get {
          return (resultMap["reply"] as? ResultMap).flatMap { Reply(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "reply")
        }
      }

      public struct Reply: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["replyDataRef"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("_id", type: .scalar(GraphQLID.self)),
            GraphQLField("userId", type: .object(UserId.selections)),
            GraphQLField("body", type: .scalar(String.self)),
            GraphQLField("created_on", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(_id: GraphQLID? = nil, userId: UserId? = nil, body: String? = nil, createdOn: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "replyDataRef", "_id": _id, "userId": userId.flatMap { (value: UserId) -> ResultMap in value.resultMap }, "body": body, "created_on": createdOn])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var _id: GraphQLID? {
          get {
            return resultMap["_id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "_id")
          }
        }

        public var userId: UserId? {
          get {
            return (resultMap["userId"] as? ResultMap).flatMap { UserId(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "userId")
          }
        }

        public var body: String? {
          get {
            return resultMap["body"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "body")
          }
        }

        public var createdOn: String? {
          get {
            return resultMap["created_on"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "created_on")
          }
        }

        public struct UserId: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["userProfileRef"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("_id", type: .scalar(GraphQLID.self)),
              GraphQLField("name", type: .scalar(String.self)),
              GraphQLField("photo", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(_id: GraphQLID? = nil, name: String? = nil, photo: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "userProfileRef", "_id": _id, "name": name, "photo": photo])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var _id: GraphQLID? {
            get {
              return resultMap["_id"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }

          public var photo: String? {
            get {
              return resultMap["photo"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "photo")
            }
          }
        }
      }
    }
  }
}

public final class AddLikeToCommentMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation AddLikeToComment($id: ID!, $userId: ID!) {
      addLikeToComment(input: {id: $id, userId: $userId}) {
        __typename
        message
        success
        postId
        commentId
        like {
          __typename
          name
          email
          userSub
          phoneNumber
          photo
          lockProfile
          _id
        }
      }
    }
    """

  public let operationName: String = "AddLikeToComment"

  public var id: GraphQLID
  public var userId: GraphQLID

  public init(id: GraphQLID, userId: GraphQLID) {
    self.id = id
    self.userId = userId
  }

  public var variables: GraphQLMap? {
    return ["id": id, "userId": userId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("addLikeToComment", arguments: ["input": ["id": GraphQLVariable("id"), "userId": GraphQLVariable("userId")]], type: .nonNull(.object(AddLikeToComment.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(addLikeToComment: AddLikeToComment) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "addLikeToComment": addLikeToComment.resultMap])
    }

    public var addLikeToComment: AddLikeToComment {
      get {
        return AddLikeToComment(unsafeResultMap: resultMap["addLikeToComment"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "addLikeToComment")
      }
    }

    public struct AddLikeToComment: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["addLikeResponse"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message", type: .nonNull(.scalar(String.self))),
          GraphQLField("success", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("postId", type: .scalar(GraphQLID.self)),
          GraphQLField("commentId", type: .scalar(GraphQLID.self)),
          GraphQLField("like", type: .object(Like.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(message: String, success: Bool, postId: GraphQLID? = nil, commentId: GraphQLID? = nil, like: Like? = nil) {
        self.init(unsafeResultMap: ["__typename": "addLikeResponse", "message": message, "success": success, "postId": postId, "commentId": commentId, "like": like.flatMap { (value: Like) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var message: String {
        get {
          return resultMap["message"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "message")
        }
      }

      public var success: Bool {
        get {
          return resultMap["success"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "success")
        }
      }

      public var postId: GraphQLID? {
        get {
          return resultMap["postId"] as? GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "postId")
        }
      }

      public var commentId: GraphQLID? {
        get {
          return resultMap["commentId"] as? GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "commentId")
        }
      }

      public var like: Like? {
        get {
          return (resultMap["like"] as? ResultMap).flatMap { Like(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "like")
        }
      }

      public struct Like: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["userProfileRef"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("email", type: .scalar(String.self)),
            GraphQLField("userSub", type: .scalar(String.self)),
            GraphQLField("phoneNumber", type: .scalar(String.self)),
            GraphQLField("photo", type: .scalar(String.self)),
            GraphQLField("lockProfile", type: .scalar(Int.self)),
            GraphQLField("_id", type: .scalar(GraphQLID.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(name: String? = nil, email: String? = nil, userSub: String? = nil, phoneNumber: String? = nil, photo: String? = nil, lockProfile: Int? = nil, _id: GraphQLID? = nil) {
          self.init(unsafeResultMap: ["__typename": "userProfileRef", "name": name, "email": email, "userSub": userSub, "phoneNumber": phoneNumber, "photo": photo, "lockProfile": lockProfile, "_id": _id])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var email: String? {
          get {
            return resultMap["email"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "email")
          }
        }

        public var userSub: String? {
          get {
            return resultMap["userSub"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "userSub")
          }
        }

        public var phoneNumber: String? {
          get {
            return resultMap["phoneNumber"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "phoneNumber")
          }
        }

        public var photo: String? {
          get {
            return resultMap["photo"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "photo")
          }
        }

        public var lockProfile: Int? {
          get {
            return resultMap["lockProfile"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "lockProfile")
          }
        }

        public var _id: GraphQLID? {
          get {
            return resultMap["_id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "_id")
          }
        }
      }
    }
  }
}
