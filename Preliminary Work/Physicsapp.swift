//a simple program that allows the user to input values and check if they were correct with a hint button
import SwiftUI

func RandomPrompt() -> String{
    let values = ["Mass", "Seconds", "Kilograms", "Ampere", "Kelvin", "Candela", "Mole"]
    return String(values.randomElement()!)
}

struct ContentView: View {
    @State var GoodThing1: String = ""
    @State var GoodThing2: String = ""
    @State var GoodThing3: String = ""
    @State var GoodThing4: String = ""
    @State var GoodThing5: String = ""
    @State var GoodThing6: String = ""
    @State var GoodThing7: String = ""
    @State var GoodThing8: String = ""
    @State var GoodThingPrompt: String = ""
    
    var body: some View {
        VStack {
            Text("What are the SI base units?")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .padding()
            Text(GoodThingPrompt)
            TextField("1st", text: $GoodThing1)
                .textFieldStyle(.roundedBorder)
            TextField("2nd", text: $GoodThing2)
                .textFieldStyle(.roundedBorder)
            TextField("3rd", text: $GoodThing3)
                .textFieldStyle(.roundedBorder)
        }
        VStack {
            TextField("4th", text: $GoodThing4)
                .textFieldStyle(.roundedBorder)
            TextField("5th", text: $GoodThing5)
                .textFieldStyle(.roundedBorder)
            TextField("6th", text: $GoodThing6)
                .textFieldStyle(.roundedBorder)
            TextField("7th", text: $GoodThing7)
                .textFieldStyle(.roundedBorder)
            TextField("8th", text: $GoodThing8)
                .textFieldStyle(.roundedBorder)
            Button("Click me for a hint!"){
                GoodThingPrompt = RandomPrompt()
            }
            .buttonStyle(.bordered)
        }
        
    }
}
