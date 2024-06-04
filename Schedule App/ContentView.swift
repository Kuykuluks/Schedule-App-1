//
//  ContentView.swift
//  Schedule App
//
//  Created by Leo dos Remedios on 6/3/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    

    var body: some View { //basic layout for day selection
        VStack{
            Text("Stinky Phooc App")
                .font(.title)
                .bold()
            
            Rectangle()
                .frame(height: 1)
                .foregroundColor(.blue)
            
            HStack{ //horizontally stack buttons and date
                //back button
                Button {
                    print("forward")
                } label:{
                    Image(systemName: "lessthan")
                        .bold()
                }
                
                Spacer()
                    .frame(width: 30)
                
                //Day of week and Date
                VStack{
                    Text("Tuesday")
                        .font(.title2)
                        .bold()
                    Text("June 4, 2024")
                }
                
                Spacer()
                    .frame(width: 30)
                
                //forward button
                Button {
                    print("forward")
                } label:{
                    Image(systemName: "greaterthan")
                        .bold()
                }
            }
            
        }
        .padding()
    }

   
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
