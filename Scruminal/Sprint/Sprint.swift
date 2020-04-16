//  Copyright © 2020 Jéssica & Tales. All rights reserved.
//

import Foundation

/*
 1. Cycle duration
 2. Sprint Backlog
 */

class Sprint{
    
    let cycle: Int
    let sprintBacklog: SprintBacklog
    let sprintOnGoing: SprintOnGoing

    init(cycle: Int){
        self.cycle = cycle
        sprintBacklog = SprintBacklog()
        sprintOnGoing = SprintOnGoing(sprintBacklog: sprintBacklog)
    }
    
    func addItemToSprintBacklog(backlog:Backlog.Item, difficulty: Int){
        sprintBacklog.addItemSprint(backlog: backlog, difficulty: difficulty)
    }

    func editDifficulty(index:Int, newDifficulty:Int){
        sprintBacklog.editDifficulty(index: index, newDifficulty: newDifficulty)
    }
    
    func removeSprintBacklog(index:Int) throws {
        try sprintBacklog.removeSprintBacklog(index: index)
    }
    
    func addItemToDoingList(listToRemoveFrom: inout [SprintOnGoing.ItemSprint], itemIndex:Int){
        sprintOnGoing.addItemToDoingList(listToRemoveFrom: &listToRemoveFrom, itemIndex: itemIndex)
    }
    
    func addItemToDoneList(listToRemoveFrom: inout [SprintOnGoing.ItemSprint], itemIndex: Int){
        sprintOnGoing.addItemToDoneList(listToRemoveFrom: &listToRemoveFrom, itemIndex: itemIndex)
    }
    
    func addItemToBacklog(listToRemoveFrom: inout [SprintOnGoing.ItemSprint], itemIndex: Int){
        sprintOnGoing.addItemToBacklog(listToRemoveFrom: &listToRemoveFrom, itemIndex: itemIndex)
    }
    
    
}
