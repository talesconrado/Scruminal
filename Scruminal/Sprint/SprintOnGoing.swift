//  Copyright © 2020 Jéssica & Tales. All rights reserved.
//

//doing and done tasks trackers
//checkbox 
//interation with Kaban
import Foundation

class SprintOnGoing {
    
    //Array of SprintBacklog items
    //TODO: Change the Int's to SprintBacklog's struct
    var doingList = [Int]()
    var doneList = [Int]()
    var backlogList = [Int]()
    let sprintBacklog = SprintBacklog()
    
    //TODO: change this to use as a type the struct from SprintBacklog
    func addItemToDoingList(listToRemoveFrom: inout [Int], itemIndex:Int){
        //remove from SprintBacklog and...
        let itemToAdd = listToRemoveFrom.remove(at: itemIndex)
        doingList.append(itemToAdd)
    }
    
    //change references to items as int to items as struct from SprintBacklog
    func addItemToDoneList(listToRemoveFrom: inout [Int], itemIndex: Int){
        let itemToAdd = listToRemoveFrom.remove(at: itemIndex)
        doneList.append(itemToAdd)
    }
    
    //this one would be something like "going back" to sprint backlog, not actually just adding
    //TODO: this
    func addItemToBacklog(listToRemoveFrom: inout [Int], itemIndex: Int){
        let itemToAdd = listToRemoveFrom.remove(at: itemIndex)
        backlogList.append(itemToAdd)
    }
    
}



