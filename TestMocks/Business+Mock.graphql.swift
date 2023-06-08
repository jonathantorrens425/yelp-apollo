// @generated
// This file was automatically generated and should not be edited.

import ApolloTestSupport
import ApolloSchemaPackage

public class Business: MockObject {
  public static let objectType: Object = ApolloSchemaPackage.Objects.Business
  public static let _mockFields = MockFields()
  public typealias MockValueCollectionType = Array<Mock<Business>>

  public struct MockFields {
    @Field<Coordinates>("coordinates") public var coordinates
    @Field<String>("display_phone") public var display_phone
    @Field<Double>("distance") public var distance
    @Field<[Hours?]>("hours") public var hours
    @Field<String>("id") public var id
    @Field<Location>("location") public var location
    @Field<String>("name") public var name
    @Field<[String?]>("photos") public var photos
    @Field<Double>("rating") public var rating
    @Field<Int>("review_count") public var review_count
    @Field<String>("url") public var url
  }
}

public extension Mock where O == Business {
  convenience init(
    coordinates: Mock<Coordinates>? = nil,
    display_phone: String? = nil,
    distance: Double? = nil,
    hours: [Mock<Hours>?]? = nil,
    id: String? = nil,
    location: Mock<Location>? = nil,
    name: String? = nil,
    photos: [String]? = nil,
    rating: Double? = nil,
    review_count: Int? = nil,
    url: String? = nil
  ) {
    self.init()
    self.coordinates = coordinates
    self.display_phone = display_phone
    self.distance = distance
    self.hours = hours
    self.id = id
    self.location = location
    self.name = name
    self.photos = photos
    self.rating = rating
    self.review_count = review_count
    self.url = url
  }
}
