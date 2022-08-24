import SwiftUI

struct ContentView: View {
    let mySize = CGSize(width: 300, height: 200)
    @State private var anim_counter = 0
    let image_choose = ["2meow","hdherbert","meow"]
    var body: some View {
        VStack {
            Button("Change cat") {
                if anim_counter == 2 {
                    anim_counter = -1
                }
                anim_counter += 1
            }
            Image(image_choose[anim_counter])
                .resizable()
                .scaledToFit()
            
        }
}



}
