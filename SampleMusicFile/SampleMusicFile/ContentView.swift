//
//  ContentView.swift
//  SampleMusicFile
//
//  Created by chandni chaudhari on 06/11/22.
//

import SwiftUI
import AVKit

struct ContentView: View {
    @ObservedObject private(set) var vm: ContentViewModel
    
    var body: some View {
        VStack {
            VideoPlayer(player: AVPlayer(url:  vm.getVideoURL()!))
                .frame(height: 400)

            Button(action: {
                print("Button action")
                vm.playSound()
            }) {
                Text("Button label")
            }
            .frame(width: 100, height: 40)
            .border(.gray)
            
            Button(action: {
                print("Button action")
                print("video file path is \(vm.getVideoURL())")
            }) {
                Text("Video File")
            }
            .frame(width: 100, height: 40)
            .border(.gray)
           
        }
     
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(vm: .init())
        
    }
}
