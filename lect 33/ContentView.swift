//
//  ContentView.swift
//  lect 33
//
//  Created by عايشة on 28/12/2020.
//

import SwiftUI

struct ContentView: View {
    @State var height: String = ""
    @State var weight: String = ""
    @State var bmi: Double = 0
    
    var body: some View {
        
        
        VStack() {
                Text("calculate the BMI")
                    .font(.largeTitle)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            
                Text("BMI")
                    .font(.system(size: 30))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding()
            Text("Statue")
                .font(.system(size: 30))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding()

                
                TextField("Height (m)", text: $height)
                TextField("Weight (kg)", text: $weight)
                Button("Calculate") {
                    let h = Double(height) ?? 0
                    let w = Double(weight) ?? 0
                    bmi = w / (h*h)
                }
                Text("\(bmi)")
                
               
            }
        }
       
    }



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
