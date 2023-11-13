//
//  ContentView.swift
//  WorkOrderAssignments
//
//  Created by Tim Gibson on 11/12/23.
//

import SwiftUI

struct ContentView: View {
    @State private var userInput = ""
    @State private var assignmentText = ""
    @State private var assignedTo = ""
    var sclGreen = Color(red: 0, green: 0.5, blue: 0)
    
    var body: some View {
        VStack() {
            Text("Saddle Creek Logistics")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .lineLimit(1)
                .multilineTextAlignment(.leading)
                .foregroundColor(sclGreen)
                .padding(.horizontal)
            
            Text("Work Order Assignment System")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .lineLimit(1)
                .multilineTextAlignment(.leading)
                .foregroundColor(sclGreen)
                .padding(.horizontal)
            
            TextField("input description of work to be done", text: $userInput)
                .padding()
                .frame(height: 50)
                .border(.gray)
                .padding()
            
            
            Button("Assign") {
                // This is the action performed when the button is pressed
                //var generator = RandomNumberGenerator.self
                
                if true {
                    assignedTo = "Donny"
                } else {
                    //assignedTo = "Tim"
                }
                assignmentText = assignedTo + " is the one who should get this work order."

            }
            .buttonStyle(.borderedProminent)
            .accentColor(sclGreen)
            .shadow(color: sclGreen, radius: 5)
             
            Text(assignmentText)
                .multilineTextAlignment(.leading)
                .minimumScaleFactor(0.5)
                .padding()
                .frame(height: 350, alignment: .topLeading)
                .frame(maxWidth: .infinity)
            //.border(.gray)
                .padding()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
