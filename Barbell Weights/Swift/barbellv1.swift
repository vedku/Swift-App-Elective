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
            let n45lbs = weight/90
            let weight = weight - n45lbs*90
            
            let n35lbs = weight/70
            let weight = weight - n35lbs*70
            
            let n25lbs = weight/50
            let weight = weight - n25lbs*50
            
            let n10lbs = weight/20
            let weight = weight - n10lbs*20
            
            let n5lbs = weight/10
            let weight = weight - n5lbs*10
            
            let n2pt5lbs = weight/5
            let weight = weight - n2pt5lbs*5
            
            Text(String(n45lbs))
            Text(String(n35lbs))
            Text(String(n25lbs))
            Text(String(n10lbs))
            Text(String(n5lbs))
            Text(String(n2pt5lbs))
        }
    }
}
