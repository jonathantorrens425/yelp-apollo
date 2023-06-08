// @generated
// This file was automatically generated and should not be edited.

import ApolloTestSupport
import ApolloSchemaPackage

public class Businesses: MockObject {
  public static let objectType: Object = ApolloSchemaPackage.Objects.Businesses
  public static let _mockFields = MockFields()
  public typealias MockValueCollectionType = Array<Mock<Businesses>>

  public struct MockFields {
    @Field<[Business?]>("business") public var business
    @Field<Int>("total") public var total
  }
}

public extension Mock where O == Businesses {
  convenience init(
    business: [Mock<Business>?]? = nil,
    total: Int? = nil
  ) {
    self.init()
    self.business = business
    self.total = total
  }
}
