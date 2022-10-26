//incomplete
import SwiftUI
struct ContentView: View {
    @State var n45lbs = 0
    @State var n35lbs = 0
    @State var n25lbs = 0
    @State var n10lbs = 0
    @State var n5lbs = 0
    @State var n2pt5lbs = 0
    @State var weight = []
    
    var body: some View{
        VStack{
            Text("How much weight do you want to lift?")
                .font(.title    )
        }
        HStack{
            TextField("Input here", value: $n45lbs, format: .number)
            Text(String())
        }
    }
}
