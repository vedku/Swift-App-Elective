import SwiftUI
struct ContentView: View {
    @State var n45lbs = 0.00
    @State var n35lbs = 0.00
    @State var n25lbs = 0.00
    @State var n10lbs = 0.00
    @State var n5lbs = 0.00
    @State var n2pt5lbs = 0.00
    @State var weight = 0.00
    
    var body: some View {
        VStack {
            Text("How much weight do you want to lift?")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .padding()
        }
        HStack {
            TextField("Input here", value: $weight, format: .number)
                .textFieldStyle(.roundedBorder)
                .border(.green, width: 4)
                .keyboardType(.decimalPad)
            Text("\(weight*2, specifier: "%.2f")")
                .padding()
        }
    }
}
