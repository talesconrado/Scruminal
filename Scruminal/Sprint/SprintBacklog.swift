//
//  SprintBacklog.swift
//  Scruminal
//
//  Created by Tales Conrado on 04/04/20.
//  Copyright © 2020 Jéssica & Tales. All rights reserved.
//


import Foundation

enum SprintBacklogErrors:Error{
    case invalidIndex
}


class SprintBacklog{
    
    struct ItemSprint {
        var backlog:Backlog.Item
        var difficulty:Int
    }
    
    var listSprint = [ItemSprint]()
    
    func addItemSprint(backlog:Backlog.Item, difficulty:Int){
        let newItemSprint = ItemSprint(backlog: backlog, difficulty: difficulty)
        listSprint.append(newItemSprint)
    }
    
    func editDifficulty(index:Int, newDifficulty:Int){
        listSprint[index].difficulty = newDifficulty
    }
    
    func removeSprintBacklog(index:Int) throws{
        if index < listSprint.count, index >= 0 {
            listSprint.remove(at: index)
        } else {
            throw SprintBacklogErrors.invalidIndex
        }
    }
}




