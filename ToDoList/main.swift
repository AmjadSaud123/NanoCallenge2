//
//  main.swift
//  ToDoList
//
//  Created by AmjadAltukhaim on 19/05/1443 AH.
//

import Foundation

print("Enter name please")
var name = readLine()!
print("hello \(name)")

var  userChoise = ""
var todo = TodoList ()
repeat {
    
    print("_________________📝___________________")
    print("Hello welcome to Application To do list")
    print("_________________Menu__________________")
    print("please choose from the menu")
    print("1.Add task")
    print("2.display task")
    print("3.modification task")
    print("4.delete task")
    print("5.exit")
    print("_______________________________________")
    print("_______________________________________")
    
    // print menu
    
    
    if let  userChoise  = readLine() {
        
        switch  userChoise {  //beginning switch
            
        case "1":
            print("you chose 1 (add task)")
            todo.addTask()
        case "2":
            
            print("you chose 2 (view all tasks)")
            todo.displayTask ()
        case "3":
            print("you chose 3")
            todo.displayTask ()
            print("please choice number task in list")
            if let x = readLine() {
                if let index = Int(x){
                    let y = index  - 1
                    print("pleas enter new value")
                    if let i = readLine(){
                        
                        todo.modification (index: y , newTodo: i )
                    }
                }
            }
        case "4":
            print("you chose 4")
            todo.deleteTask ()
        case "5":
            exit(0)
        default :
            print("not extit")
            
        } // end switch
        
        
    }
    
}  while userChoise != "5"

// end loop



class TodoList {
    
    var todos: [String] =  []  //init array
    
    func addTask () {         //funcation addtask
        
        var check = true
        
        repeat{
            print("pleas Enter a task or Done when your finish")
            if let task : String = readLine() {
                if ( task.lowercased() == "done") {
                    check = false
                    print("your task is done ✅")
                    print(todos)
                    break
                }
                else {
                    
                    todos.append(task)
                    //print(task) after add
                }
            }
        } while check
        
        
        
    } //  end func addTask
    
    
    
    
    func displayTask () {
        if todos.count == 0 {
            print("the list is empty")//the list is empty
            
        }  else {
            print("the to do list contatins \(todos)") // print to do list isn't empty
        }
        
    } //end func displayTask
    
    
    
    func deleteTask (){
        
        displayTask ()
        print("which number task do want delete")
        if let choice = readLine(){
            if let userValue = Int(choice){
                todos.remove(at: userValue - 1)
            }
            print("task delete ✅")
            displayTask ()
        }
        
    } // end func deleteTask
    
    
    
    func modification (index:Int,newTodo:String) {
        
        for x in 0..<todos.count{
            if x == index {
                todos[x] = newTodo
                print(" list after update:\(todos)✅")
            }
            
            
        } // end loop for
    } // end func modification
    
} // end class










