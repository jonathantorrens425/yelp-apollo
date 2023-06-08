// @generated
// This file was automatically generated and should not be edited.

import ApolloTestSupport
import ApolloSchemaPackage

public class Location: MockObject {
  public static let objectType: Object = ApolloSchemaPackage.Objects.Location
  public static let _mockFields = MockFields()
  public typealias MockValueCollectionType = Array<Mock<Location>>

  public struct MockFields {
    @Field<String>("address1") public var address1
    @Field<String>("address2") public var address2
    @Field<String>("address3") public var address3
    @Field<String>("city") public var city
    @Field<String>("formatted_address") public var formatted_address
    @Field<String>("postal_code") public var postal_code
    @Field<String>("state") public var state
  }
}

public extension Mock where O == Location {
  convenience init(
    address1: String? = nil,
    address2: String? = nil,
    address3: String? = nil,
    city: String? = nil,
    formatted_address: String? = nil,
    postal_code: String? = nil,
    state: String? = nil
  ) {
    self.init()
    self.address1 = address1
    self.address2 = address2
    self.address3 = address3
    self.city = city
    self.formatted_address = formatted_address
    self.postal_code = postal_code
    self.state = state
  }
}
