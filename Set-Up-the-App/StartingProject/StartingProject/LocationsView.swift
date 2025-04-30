import SwiftUI

struct LocationsView: View {
    @EnvironmentObject var model:Model
    var body: some View {
        VStack {
            LittleLemonLogo() // 1
                .padding(.top, 50)
            
            if model.displayingReservationForm {
                Text("Reservation Details")
                    .padding([.leading, .trailing], 40)
                    .padding([.top, .bottom], 8)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(20)
            } else {
                Text("Select a location")
                    .padding([.leading, .trailing], 40)
                    .padding([.top, .bottom], 8)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(20)
            }// 2
            
            NavigationView {
                List(model.restaurants) { restaurant in
                    NavigationLink(destination: ReservationForm(restaurant: restaurant)) {
                        RestaurantView(restaurant: restaurant)
                    }
                }
                .scrollContentBackground(.hidden)
                .background(Color.white)
                .navigationBarTitle("")
                .navigationBarHidden(true)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView().environmentObject(Model())
    }
}
