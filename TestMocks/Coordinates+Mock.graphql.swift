// @generated
// This file was automatically generated and should not be edited.

import ApolloTestSupport
import ApolloSchemaPackage

public class Coordinates: MockObject {
  public static let objectType: Object = ApolloSchemaPackage.Objects.Coordinates
  public static let _mockFields = MockFields()
  public typealias MockValueCollectionType = Array<Mock<Coordinates>>

  public struct MockFields {
    @Field<Double>("latitude") public var latitude
    @Field<Double>("longitude") public var longitude
  }
}

public extension Mock where O == Coordinates {
  convenience init(
    latitude: Double? = nil,
    longitude: Double? = nil
  ) {
    self.init()
    self.latitude = latitude
    self.longitude = longitude
  }
}
