//
//  ContentView.swift
//  ToDoList
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI

struct ContentView: View { //content view start
    var body: some View {
        VStack { //start vstack
            
            HStack { //start hstack
                Text("To-Do List")
                .font(.system(size: 40))
                .fontWeight(.black)
                
            Spacer() //push right
                
            Button {
            } label: {
                Text("+")
                    .font(.title)
                .fontWeight(.bold)
                }
                
            } //end hstack
            Spacer() //push up
        } //end vstack
        .padding()
    }
} //content view end
#Preview {
    ContentView()
}
