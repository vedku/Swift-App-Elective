import SwiftUI
struct ContentView: View {
    @State var n45lbs = 0.00
    @State var n35lbs = 0.00
    @State var n25lbs = 0.00
    @State var n10lbs = 0.00
    @State var n5lbs = 0.00
    @State var n2pt5lbs = 0.00
    @State var weight = 0.00
    @State var weightCalc = 0.00
    
    var body: some View {
        VStack {
            Text("How much weight do you want to lift?")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .padding()
        
        HStack {
            TextField("Input here", value: $weight, format: .number)
            .textFieldStyle(.roundedBorder)
            .border(.green, width: 4)
            .keyboardType(.decimalPad)
            
            
        }
            Button("Calculate!"){
                weightCalc = weight
                weightCalc = weightCalc - 45
                
                n45lbs = weightCalc/45
                weightCalc = weightCalc - n45lbs*45
                
                n35lbs = weightCalc/35
                weightCalc = weightCalc - n35lbs*35
                
                n25lbs = weightCalc/25
                weightCalc = weightCalc - n25lbs*25
                
                n10lbs = weightCalc/10
                weightCalc = weightCalc - n10lbs*10
                
                n5lbs = weightCalc/5
                weightCalc = weightCalc - n5lbs*5
                
                n2pt5lbs = weightCalc/2.5
                weightCalc = weightCalc - n2pt5lbs*2.5
            }
            HStack {
                Text(String(n45lbs))
                Text(String(n35lbs))
                Text(String(n25lbs))
                Text(String(n10lbs))
                Text(String(n5lbs))
                Text(String(n2pt5lbs))
            }
    }
    }
}
