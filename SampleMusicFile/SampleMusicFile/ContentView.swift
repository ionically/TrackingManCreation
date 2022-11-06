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
            BicycleView()
        }.onAppear {
            vm.playSound()
        }
    }
     
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(vm: .init())
        
    }
}

