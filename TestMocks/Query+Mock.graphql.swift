// @generated
// This file was automatically generated and should not be edited.

import ApolloTestSupport
import ApolloSchemaPackage

public class Query: MockObject {
  public static let objectType: Object = ApolloSchemaPackage.Objects.Query
  public static let _mockFields = MockFields()
  public typealias MockValueCollectionType = Array<Mock<Query>>

  public struct MockFields {
    @Field<Businesses>("search") public var search
  }
}

public extension Mock where O == Query {
  convenience init(
    search: Mock<Businesses>? = nil
  ) {
    self.init()
    self.search = search
  }
}
