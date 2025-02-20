//
//  ContentView.swift
//  PizzaTime
//
//  Created by Amogh Sharma  on 20/2/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name: String = ""
    @State private var pepperoniSelected: Bool = false
    @State private var mushroomsSelected: Bool = false
    @State private var cheeseSelected: Bool = false
    @State private var color = Color(.sRGB, red: 0.9, green: 0.8, blue: 0.5)
    @State private var date = Date()
    
    
    var body: some View {
        ZStack {
            Color.blue.opacity(0.25)
                .ignoresSafeArea(edges: .all)
            
            VStack {
                Text("🍕")
                    .font(.system(size: 100))
                
                Text("It's Pizza Time!")
                    .fontWeight(.bold)
                    .fontDesign(.monospaced)
                
                Spacer()
                
                ZStack{
                    Color.indigo
                        .opacity(0.25)
//                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.red, lineWidth: 2))
                    
                    VStack{
                        Spacer()

                        Text("Your Name: ")
                        TextField("Please enter your name:", text: $name)
                            .padding()
                            .frame(width: 300, height: 50)
                            .overlay(RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.gray, lineWidth: 2))
                        Spacer()

                        Text("Your Pizza Toppings:")
                        Toggle(isOn: $pepperoniSelected) {
                            Text("Pepperoni")

                        }
                        Toggle(isOn: $mushroomsSelected) {
                            Text("Mushrooms")

                        }
                        Toggle(isOn: $cheeseSelected) {
                            Text("Cheese")
                        }
                        Spacer()
                        ZStack{
                            Color.gray.opacity(0.25)
                                .frame(width: 350, height: 75)
                                .cornerRadius(30)
                            ColorPicker("This is the colour of your pizza box", selection: $color)
                                .padding()

                        }
                        Spacer()
                        ZStack{
                            Color.gray.opacity(0.25)
                                .frame(width: 350, height: 75)
                                .cornerRadius(30)
                            DatePicker("Enter the date", selection: $date)
                                .padding()

                        }
                        
                        Spacer()

                        Button("Order Now") {
                            
                        }
                        .fontDesign(.monospaced)
                        .fontWeight(.bold)
                        .buttonStyle(.borderedProminent)

                    }
                    .padding(40)
                    
                }
                
                Spacer()
            }
            
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
