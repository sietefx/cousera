import SwiftUI

struct ReservationCalendar: View {
    
    @State var ReservationDate = Date()
    
    var body: some View {
        Form {
            HStack {
                DatePicker(
                    selection: $ReservationDate, in: Date()...,
                    displayedComponents: [.date, .hourAndMinute]
                    ) {}
                Button(action: { print("do somenting!") }) {
                    HStack {
                        Image(systemName: "arrow.right.circle")
                        Text("Done")
                    }
                    .padding(20)
                }
            }
            Text("Date is \(ReservationDate.formatted(date: .long, time: .complete))")
        }
    }
}

struct ReservationCalendar_Previews: PreviewProvider {
    static var previews: some View {
        ReservationCalendar()
    }
}
