// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class LocationAndSearchTermQuery: GraphQLQuery {
  public static let operationName: String = "LocationAndSearchTermQuery"
  public static let document: ApolloAPI.DocumentType = .notPersisted(
    definition: .init(
      #"""
      query LocationAndSearchTermQuery($location: String!, $term: String!, $radius: Float!, $limit: Int!, $offset: Int!) {
        search(
          term: $term
          location: $location
          radius: $radius
          limit: $limit
          offset: $offset
        ) {
          __typename
          total
          business {
            __typename
            location {
              __typename
              address1
              address2
              address3
              city
              postal_code
              state
              formatted_address
            }
            coordinates {
              __typename
              latitude
              longitude
            }
            display_phone
            distance
            hours {
              __typename
              hours_type
              is_open_now
            }
            review_count
            photos
            id
            name
            rating
            url
          }
        }
      }
      """#
    ))

  public var location: String
  public var term: String
  public var radius: Double
  public var limit: Int
  public var offset: Int

  public init(
    location: String,
    term: String,
    radius: Double,
    limit: Int,
    offset: Int
  ) {
    self.location = location
    self.term = term
    self.radius = radius
    self.limit = limit
    self.offset = offset
  }

  public var __variables: Variables? { [
    "location": location,
    "term": term,
    "radius": radius,
    "limit": limit,
    "offset": offset
  ] }

  public struct Data: ApolloSchemaPackage.SelectionSet {
    public let __data: DataDict
    public init(data: DataDict) { __data = data }

    public static var __parentType: ApolloAPI.ParentType { ApolloSchemaPackage.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("search", Search?.self, arguments: [
        "term": .variable("term"),
        "location": .variable("location"),
        "radius": .variable("radius"),
        "limit": .variable("limit"),
        "offset": .variable("offset")
      ]),
    ] }

    /// Search for businesses on Yelp.
    public var search: Search? { __data["search"] }

    /// Search
    ///
    /// Parent Type: `Businesses`
    public struct Search: ApolloSchemaPackage.SelectionSet {
      public let __data: DataDict
      public init(data: DataDict) { __data = data }

      public static var __parentType: ApolloAPI.ParentType { ApolloSchemaPackage.Objects.Businesses }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("total", Int?.self),
        .field("business", [Business?]?.self),
      ] }

      /// Total number of businesses found.
      public var total: Int? { __data["total"] }
      /// A list of business Yelp finds based on the search criteria.
      public var business: [Business?]? { __data["business"] }

      /// Search.Business
      ///
      /// Parent Type: `Business`
      public struct Business: ApolloSchemaPackage.SelectionSet {
        public let __data: DataDict
        public init(data: DataDict) { __data = data }

        public static var __parentType: ApolloAPI.ParentType { ApolloSchemaPackage.Objects.Business }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("location", Location?.self),
          .field("coordinates", Coordinates?.self),
          .field("display_phone", String?.self),
          .field("distance", Double?.self),
          .field("hours", [Hour?]?.self),
          .field("review_count", Int?.self),
          .field("photos", [String?]?.self),
          .field("id", String.self),
          .field("name", String.self),
          .field("rating", Double?.self),
          .field("url", String?.self),
        ] }

        /// The location of this business, including address, city, state, postal code and country.
        public var location: Location? { __data["location"] }
        /// The coordinates of this business.
        public var coordinates: Coordinates? { __data["coordinates"] }
        /// Phone number of the business formatted nicely to be displayed to users. The format is the standard phone number format for the business's country.
        public var display_phone: String? { __data["display_phone"] }
        /// When searching, this provides the distance of the business from the search location in meters
        public var distance: Double? { __data["distance"] }
        /// Opening hours of the business.
        public var hours: [Hour?]? { __data["hours"] }
        /// Number of reviews for this business.
        public var review_count: Int? { __data["review_count"] }
        /// URLs of up to three photos of the business.
        public var photos: [String?]? { __data["photos"] }
        /// Yelp ID of this business.
        public var id: String { __data["id"] }
        /// Name of this business.
        public var name: String { __data["name"] }
        /// Rating for this business (value ranges from 1, 1.5, ... 4.5, 5).
        public var rating: Double? { __data["rating"] }
        /// URL for business page on Yelp.
        public var url: String? { __data["url"] }

        /// Search.Business.Location
        ///
        /// Parent Type: `Location`
        public struct Location: ApolloSchemaPackage.SelectionSet {
          public let __data: DataDict
          public init(data: DataDict) { __data = data }

          public static var __parentType: ApolloAPI.ParentType { ApolloSchemaPackage.Objects.Location }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("address1", String.self),
            .field("address2", String?.self),
            .field("address3", String?.self),
            .field("city", String.self),
            .field("postal_code", String?.self),
            .field("state", String?.self),
            .field("formatted_address", String?.self),
          ] }

          /// Street address of this business.
          public var address1: String { __data["address1"] }
          /// Street address of this business, continued.
          public var address2: String? { __data["address2"] }
          /// Street address of this business, continued.
          public var address3: String? { __data["address3"] }
          /// City of this business.
          public var city: String { __data["city"] }
          /// Postal code of this business.
          public var postal_code: String? { __data["postal_code"] }
          /// ISO 3166-2 (with a few exceptions) state code of this business.
          public var state: String? { __data["state"] }
          /// Array of strings that if organized vertically give an address that is in the standard address format for the business's country.
          public var formatted_address: String? { __data["formatted_address"] }
        }

        /// Search.Business.Coordinates
        ///
        /// Parent Type: `Coordinates`
        public struct Coordinates: ApolloSchemaPackage.SelectionSet {
          public let __data: DataDict
          public init(data: DataDict) { __data = data }

          public static var __parentType: ApolloAPI.ParentType { ApolloSchemaPackage.Objects.Coordinates }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("latitude", Double.self),
            .field("longitude", Double.self),
          ] }

          /// The latitude of this business.
          public var latitude: Double { __data["latitude"] }
          /// The longitude of this business.
          public var longitude: Double { __data["longitude"] }
        }

        /// Search.Business.Hour
        ///
        /// Parent Type: `Hours`
        public struct Hour: ApolloSchemaPackage.SelectionSet {
          public let __data: DataDict
          public init(data: DataDict) { __data = data }

          public static var __parentType: ApolloAPI.ParentType { ApolloSchemaPackage.Objects.Hours }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("hours_type", String?.self),
            .field("is_open_now", Bool?.self),
          ] }

          /// The type of the opening hours information. Right now, this is always REGULAR.
          public var hours_type: String? { __data["hours_type"] }
          /// Describes if the business is open now.
          public var is_open_now: Bool? { __data["is_open_now"] }
        }
      }
    }
  }
}
