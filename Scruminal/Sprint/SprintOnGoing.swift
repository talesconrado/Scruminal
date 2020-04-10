//  Copyright © 2020 Jéssica & Tales. All rights reserved.
//

//doing and done tasks trackers
//checkbox 
//interation with Kaban
import Foundation

class SprintOnGoing {
    
    typealias ItemSprint = SprintBacklog.ItemSprint
  
    var doingList = [ItemSprint]()
    var doneList = [ItemSprint]()
    let sprintBacklog:SprintBacklog
    
    init(sprintBacklog:SprintBacklog){
        self.sprintBacklog = sprintBacklog
    }
    
    func addItemToDoingList(listToRemoveFrom: inout [ItemSprint], itemIndex:Int){
        let itemToAdd = listToRemoveFrom.remove(at: itemIndex)
        doingList.append(itemToAdd)
    }
    
    func addItemToDoneList(listToRemoveFrom: inout [ItemSprint], itemIndex: Int){
        let itemToAdd = listToRemoveFrom.remove(at: itemIndex)
        doneList.append(itemToAdd)
    }
    
    func addItemToBacklog(listToRemoveFrom: inout [ItemSprint], itemIndex: Int){
        let itemToAdd = listToRemoveFrom.remove(at: itemIndex)
        sprintBacklog.listSprint.append(itemToAdd)
    }
    
}



