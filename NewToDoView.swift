//
//  NewToDoView.swift
//  ToDoList
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI

struct NewToDoView: View {
    
    @Binding var showNewTask: Bool
    @Bindable var ToDoItem: ToDoItem
    @Environment(\.modelContext) var modelContext
    
    var body: some View {

    VStack { //start of VStack
        Text("Task title:")
            .font(.title)
            .fontWeight(.bold)
            
        TextField("Enter the task description...", text: $ToDoItem.title)
            .padding()
            .background(Color(.systemGroupedBackground))
            .cornerRadius(15)
            .padding()
        
        Toggle(isOn: $ToDoItem.isImportant) {
            Text("Is it important?")
        }
        
        Button{
        }
        label: {
            Text("Save")
        }
     
            } //end of VStack
    .padding()
        }
        
    func addToDo(){
        let toDo = ToDoList.ToDoItem(title: ToDoItem.title, isImportant: ToDoItem.isImportant)
        modelContext.insert(toDo)
    }
    
        }

#Preview {
   
}
