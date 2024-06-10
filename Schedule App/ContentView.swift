//
//  ContentView.swift
//  Schedule App
//
//  Created by Leo dos Remedios on 6/3/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State var selectedMonth = 0

    var body: some View { //basic layout for day selection
        //title
        NavigationStack {
            VStack{
                Text("Stinky Phooc")
                    .font(.title)
                    .bold()
                
                    
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.blue)
                    
                //time selection
                VStack{
                    Text("Select a Time Frame")
                        .font(.title2)
                        .bold()
                    
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
                                .font(.title3)
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
                    VStack(spacing: 20) {
                        NavigationLink{
                            EmptyView()
                        }label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 25)
                                    .strokeBorder(.blue, lineWidth: 3)
                                    .fill(.clear)
                                    .frame(height: 100)
                                Text("Opening Shift")
                                    .bold()
                                    .font(.title2)
                                    .foregroundColor(.blue)
                            }
                        }
                        NavigationLink{
                            EmptyView()
                        }label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 25)
                                    .strokeBorder(.blue, lineWidth: 3)
                                    .fill(.clear)
                                    .frame(height: 100)
                                Text("Day Shift")
                                    .bold()
                                    .font(.title2)
                                    .foregroundColor(.blue)
                            }
                        }
                        NavigationLink{
                            EmptyView()
                        }label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 25)
                                    .strokeBorder(.blue, lineWidth: 3)
                                    .fill(.clear)
                                    .frame(height: 100)
                                Text("Closing Shift")
                                    .bold()
                                    .font(.title2)
                                    .foregroundColor(.blue)
                            }
                        }
                    }
                }
            }
            .padding()
        }
    }
}


#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
