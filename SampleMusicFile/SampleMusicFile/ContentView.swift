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
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(vm: .init())
        
    }
}

struct BicycleView: View {
    @State private var rightPedaling = false
    @State private var jumping = false
    @State private var leftPedaling = false
    
   
    @State var tyre1  = false
    @State var tyre2 = false
    
    var body: some View {
        ZStack{
        VStack{
        
        ZStack{
            
          
            
            VStack{
                //Bycycle Animation
                HStack{
                    ZStack {
                        ZStack {
                            
                            Image("leg_l")  // Left Leg
                                .animation(Animation.interpolatingSpring(stiffness: 200, damping: 50).speed(3).repeatForever(autoreverses: true))
                                .rotationEffect(.degrees(leftPedaling ? -5 : 15), anchor: .topLeading)
                                .offset(x: -30, y: leftPedaling ? -50 : -65)
                                .onAppear() {
                                self.leftPedaling.toggle()
                                }
                            Image("face")  // Biker
                                .offset(y: -95)
                            
                            Image("leg_r") // Right leg
                                .animation(Animation.interpolatingSpring(stiffness: 200, damping: 50).speed(3).repeatForever(autoreverses: true))
                                .rotationEffect(.degrees(rightPedaling ? 15 : -15), anchor: .topLeading)
                                .offset(x: -40, y: rightPedaling ? -45 : -60)
                                .onAppear() {
                                    self.rightPedaling.toggle()
                                    }
                        }
                        .animation(Animation.interpolatingSpring(stiffness: 200, damping: 50).speed(3).repeatForever(autoreverses: true))
                         .offset(y: jumping ? -1 : 1)
                         .onAppear() {
                            self.jumping.toggle()
                        }
                    }
                    HStack{
                    Spacer()
                        .frame(width: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    VStack{
                    Text("100")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                    
                    Text("METERS")
                        .font(.footnote)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                    }
                    }
                    
                }
            }
        }
            
            Rectangle()
                .frame(width: 600, height: 5, alignment: .center)
                .foregroundColor(Color("Color"))
                .cornerRadius(25)
         }
        
        }
       
    }
}
