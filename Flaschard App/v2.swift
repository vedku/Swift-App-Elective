import SwiftUI
struct DefaultsKeys{
    static let keyOne = "firstStringKey"
    static let keyTwo = "secondStringKey"
}

struct ContentView: View {
    @State var fronttext UserDefaults.standard.string(forKey: DefaultsKeys.keyOne) ?? "Front"
    @State var backtext UserDefaults.standard.string(forKey: DefaultsKeys.keyTwo) ?? "Back"
    var body: some View{
        VStack{
            Text("Flashcards") 
                .font(.system(.largeTitle, design: .monospaced))
            TextEditor(text: $fronttext)
                .font(.system(.body, design: .monospaced))
                .border(.mint) 
        }
        VStack{
            TextEditor(text: $backtext)
                .font(.system(.body, design: .monospaced))
                .border(.mint) 
        }
    }
}
