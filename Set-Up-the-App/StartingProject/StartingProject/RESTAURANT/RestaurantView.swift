import SwiftUI

struct RestaurantView: View {
    let restaurant: RestaurantLocation
    
    var body: some View {
        VStack(alignment: .leading, spacing: 3) {
            Text(restaurant.city)
                .font(.title2)

            HStack {
                Text(restaurant.neighborhood)
                Text("–")
                Text(restaurant.phoneNumber)
            }
            .font(.caption)
            .foregroundColor(.gray)
        }
    }
}

struct Restaurant_Previews: PreviewProvider {
    static var previews: some View {
        let sampleRestaurant = RestaurantLocation(city: "Las Vegas", neighborhood: "Downtown", phoneNumber: "(702) 555-9898")
        RestaurantView(restaurant: sampleRestaurant)
    }
}
