//ideally would allow the user to input stuff in the UI, lock answer buttons. all coming in v2
import SwiftUI
let prompts = ["Formula for Force?", "Avogadro's Constant?", "Kinetic Energy Formula?", "What is the formula for Weight?", "How does Weight differ from Mass?", "Units for Mass?", "Is momentum a vector?"]
let answers = ["F=Ma", "6.023x10^23", "1/2Mv^2", "W=Mg", "Weight is measured in Newtons and is a Vector, whereas Mass is a scalar and measured in Kilograms", "Kilograms", "Yes"]
struct ContentView: View {
    @State var prompt_num = 0 
    @State var answer_num = 0
    var body: some View {
        VStack {
            Text(prompts[prompt_num])
                .font(.title)
                .padding()
            Button("New Prompt"){
                prompt_num = prompt_num + 1
            }
            .buttonStyle(.bordered)
            .padding()

        }
        VStack {
            Text(answers[answer_num])
                .font(.title)
                .padding()
            Button("Show Answer"){
                answer_num = answer_num + 1
            }
            .buttonStyle(.bordered)
            .padding()
        }
    }
}
