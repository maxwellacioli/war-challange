//
//  ContentView.swift
//  war-challanger
//
//  Created by Maxwell Acioli on 17/05/22.
//

import SwiftUI

struct ContentView: View {
    var getRandomCard = {
        return Int.random(in: 2..<15)
    }
    
    @State var playerCard = "card2"
    @State var cpuCard = "card2"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        ZStack {
            Image("background").edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                
                Image("logo")
                
                Spacer()
                
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                Spacer()
                
                Button {
                    let pc = getRandomCard()
                    print(pc)
                    let cc = getRandomCard()
                    playerCard = "card" + String(pc)
                    cpuCard = "card" + String(cc)
                    
                    if(pc > cc) {
                        playerScore += 1
                    } else if(cc > pc) {
                        cpuScore += 1
                    }
                } label: {
                    Image("dealbutton")
                }
                
                
                Spacer()
                
                HStack {
                    Spacer()
                
                    VStack {
                        Text("Player")
                            .foregroundColor(Color.white)
                            .padding(.bottom)
                        Text(String(playerScore)).font(.largeTitle).foregroundColor(Color.white)
                    }
                    
                    Spacer()
                    
                    VStack {
                        Text("CPU").foregroundColor(Color.white).padding(.bottom)
                        Text(String(cpuScore)).font(.largeTitle).foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
