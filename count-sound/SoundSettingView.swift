//
//  SoundSettingView.swift
//  count-sound
//
//  Created by 南奈弥 on 2023/07/04.
//

import SwiftUI
import AudioToolbox

struct SoundSettingView: View {
    @State private var soundIdRing:SystemSoundID = 0
    @State private var selection: [Bool] = []
    @State private var audioFilesCount: Int = 0
    @State private var audioFiles: [URL: Bool] = [:]
    
    private var fileOperation = FileOperation()
    
    //    init() {
    //
    //        self.audioFiles += fileOperation.getFile(URL(string: "/System/Library/Audio/UISounds")!)
    ////        self.audioFilesCount = audioFiles.count
    //        self.selection = Array(repeating: false, count: self.audioFilesCount)
    //    }
    
    
    var body: some View {
        List {
            
//            ForEach(fileOperation.getFile(URL(string: "/System/Library/Audio/UISounds")!), id: \.self) { url in
//
//
//                self.index += 1
//
//                Button(action: {
//                    if selection[index] {
//                        selection[index] = false
//                    } else {
//                        selection[index] = true
//                        AudioServicesCreateSystemSoundID(url as CFURL, &soundIdRing)
//                        AudioServicesPlaySystemSound(soundIdRing)
//                    }
//                }) {
//                    Text(audioFiles[index].lastPathComponent)
//                        .font(.title2)
//                        .tint(.black)
//                        .background(selection[index] ? .blue : .white)
//                }
//            }
            
            
            
//            ForEach(audioFiles, id: \.self) { url in
//                Text(url.absoluteString)
                
//            }
            
            
            
            
            
            
        }.onAppear {
//            audioFiles += fileOperation.getFile(URL(string: "/System/Library")!)
//            selection = Array(repeating: false, count: audioFiles.count)
            
//            var index: Int = 0
            
//            for audioFile in fileOperation.getFile(URL(string: "/System/Library")!) {
//                audioFiles[index].key = audioFile
//                audioFiles[audioFile].value = false
//                index += 1
//            }
            
        }
    }
}
    
    
    
    //            Text(fileOperation.getFile(URL(string: "/System/Library/Audio/UISounds")!)[0].lastPathComponent)
    
    
struct SoundSettingView_Previews: PreviewProvider {
    static var previews: some View{
        SoundSettingView()
    }
}
    

