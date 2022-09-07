//doesn't work yet lmao
import SwiftUI
let prompts = ["Formula for Force?", "Avogadro's Constant?", "Kinetic Energy Formula?", "What is the formula for Weight?", "How does Weight differ from Mass?", "Units for Mass?", "Is momentum a vector?"]
struct ContentView: View {
    @State var prompt_num = 0 
    var body: some View {
        VStack {
            Text(prompts[0])
                .font(.title)
                .padding()
            Button("New Prompt"){
                prompt_num = prompt_num += 1
            }
            .buttonStyle(.bordered)
            .padding()
            
        }
    }
}
