//
//  ContentView.swift
//  War Card Game
//
//  Created by Nicodemus Bezuahyeho on 10/23/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var pcard = "card7"
    @State var cpucard = "card13"
    
    @State var pscore = 0
    @State var cpuscore = 0
    
    var body: some View {
        
        ZStack {
            
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack(alignment: .center) {
                Spacer()
                Image("logo")
                Spacer()
                HStack
                {
                    Spacer()
                    Image(pcard)
                    Spacer()
                    Image(cpucard)
                    Spacer()
                }
                Spacer()
                
                Button(action: {
                    deal()
                }, label: {
                    Image("button")
                })
                .foregroundColor(.white)
                
                Spacer()
                HStack(alignment: .center) {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(pscore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuscore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
               
            }
            .padding()
            
        }
        
        
    }
    
    func deal() {
        // Randomize the player's cards
        let pval = Int.random(in: 2...14)
        pcard = "card" + String(pval)
        // Randomize the cpu's cards
        let cpuval = Int.random(in: 2...14)
        cpucard = "card" + String(cpuval)
        // Update the score
        if pval > cpuval {
            pscore += 1
        } else if cpuval > pval {
            cpuscore += 1
        }
    }
}

#Preview {
    ContentView()
}
