import Foundation

struct RestaurantLocation:Hashable, Identifiable {
  let city: String
  let neighborhood: String
  let phoneNumber: String
  let id = UUID()
  
  init(city: String = "",
       neighborhood: String = "",
       phoneNumber: String = "") {
    self.city = city
    self.neighborhood = neighborhood
    self.phoneNumber = phoneNumber
  }
}


