//
//  ContentView.swift33
//  count-sound
//
//  Created by 南奈弥 on 2023/06/28.
//

import SwiftUI
import Combine
import AudioToolbox

struct ContentView: View {
    @State private var sec: Float = 0
    @State private var initSec: Float = 0
    @State private var timerisOn: Bool = false
    @State private var timer: Timer? = Timer()
    @FocusState private var textfieldisFocus: Bool
    
    var body: some View {
        VStack {
            TextField("sec", value: $sec, format: .number.precision(.fractionLength(1)))
                .multilineTextAlignment(TextAlignment.center)
                .font(.largeTitle)
                .frame(width: 150.0, height: 50.0)
                .keyboardType(.numberPad)
                .focused($textfieldisFocus)
                .toolbar {
                    ToolbarItemGroup(placement: .keyboard) {
                        Spacer()
                        Button("Done") {
                            textfieldisFocus = false
                            initSec = sec
                        }
                        .font(.title3)
                    }
                }
                .onReceive(NotificationCenter.default.publisher(for: UITextField.textDidBeginEditingNotification)){ obj in
                    if let textField = obj.object as? UITextField {
                        textField.selectedTextRange = textField.textRange(
                            from: textField.beginningOfDocument,
                            to: textField.endOfDocument
                        )
                    }
                }
            
            Button(action: {
                if timerisOn {
                    timerisOn = false
                    timer?.invalidate()
                    sec = initSec
                    
                } else {
                    timerisOn = true
                    sec = initSec
                    timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true, block: {_ in
                        sec -= 0.1
                        if sec < 0.01 {
                            sec = initSec
                            let soundIdBell:SystemSoundID = 1000
                            
                            AudioServicesPlaySystemSound(soundIdBell)
                        }
                        
                    })
                }
            }){
                Text(timerisOn ? "Stop" : "Start")
                    .font(.largeTitle)
                    .frame(width: 100.0, height: 60.0)
                    .tint(.white)
                    .background(timerisOn ? .red : .blue)
            }
        }
        .padding()
        
    }
}
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 14")
    }
}

