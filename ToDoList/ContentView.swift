//
//  ContentView.swift
//  ToDoList
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI
import SwiftData

struct ContentView: View { //content view start
    
    @State private var showNewTask = false
    @Query var toDos: [ToDoItem]
    
    var body: some View {
        VStack { //start vstack
            
            HStack { //start hstack
                Text("To-Do List")
                .font(.system(size: 40))
                .fontWeight(.black)
                
            Spacer() //push right
                
            Button {
                withAnimation{
                showNewTask = true
                }
            } label: {
                Text("+")
                    .font(.title)
                .fontWeight(.bold)
                }
                
            } //end hstack
            Spacer() //push up
            
            List{
                ForEach(toDos) { toDoItem in
                    if toDoItem.isImportant{
                        Text("‼️" + toDoItem.title)
                    }
                    else {
                    Text(toDoItem.title)}
                }
            }
        .listStyle(.plain)
        } //end vstack
        
        if showNewTask {
            NewToDoView(showNewTask: $showNewTask, ToDoItem: ToDoItem(title: "", isImportant:false))
        }
        
    }
} //content view end
#Preview {
    ContentView()
        .modelContainer(for: ToDoItem.self, inMemory: true)
}
