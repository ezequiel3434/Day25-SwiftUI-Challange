//
//  ContentView.swift
//  Day25-SwiftUI-Challange
//
//  Created by Ezequiel Parada Beltran on 11/08/2020.
//  Copyright © 2020 Ezequiel Parada. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var things = ["Rock","Paper","Scissors"]
    @State private var choice = "Paper"
    @State private var shouldWin = false
    @State private var score = 0
   
    
    
    
    func nextRound() {
        choice = things[Int.random(in: 0...2)]
        shouldWin = Bool.random()
    }

    var body: some View {
        

               
        VStack {
            
            Text("My Choice is \(choice)")
            Text("You must \(shouldWin ? "WIN" : "LOSE")")
            
//            ForEach(things, id: \.self) {
//                Button($0){}
//            }
            
            
            
            Button(things[0]) {
                if self.choice == self.things[2] && self.shouldWin == true || self.choice == self.things[1] && self.shouldWin == false {
                    self.score += 1
                } else {
                    self.score -= 1
                }
                self.nextRound()
            }
            Button(things[1]) {
                if self.choice == self.things[0] && self.shouldWin == true || self.choice == self.things[2] && self.shouldWin == false {
                    self.score += 1
                } else {
                    self.score -= 1
                }
                self.nextRound()

            }
            Button(things[2]) {
                if self.choice == self.things[1] && self.shouldWin == true || self.choice == self.things[0] && self.shouldWin == false {
                    self.score += 1
                } else {
                    self.score -= 1
                }

                self.nextRound()
            }
            Text("Your score is \(score)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
