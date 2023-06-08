// @generated
// This file was automatically generated and should not be edited.

import ApolloTestSupport
import ApolloSchemaPackage

public class Hours: MockObject {
  public static let objectType: Object = ApolloSchemaPackage.Objects.Hours
  public static let _mockFields = MockFields()
  public typealias MockValueCollectionType = Array<Mock<Hours>>

  public struct MockFields {
    @Field<String>("hours_type") public var hours_type
    @Field<Bool>("is_open_now") public var is_open_now
  }
}

public extension Mock where O == Hours {
  convenience init(
    hours_type: String? = nil,
    is_open_now: Bool? = nil
  ) {
    self.init()
    self.hours_type = hours_type
    self.is_open_now = is_open_now
  }
}
