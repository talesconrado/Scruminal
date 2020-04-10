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
        var dificulty:Int
    }
    
    var listSprint = [ItemSprint]()
    
    func addItemSprint(backlog:Backlog.Item, dificulty:Int){
        let newItemSprint = ItemSprint(backlog: backlog, dificulty: dificulty)
        listSprint.append(newItemSprint)
    }
    
    func editDificulty(index:Int, newDificulty:Int){
        listSprint[index].dificulty = newDificulty
    }
    
    func removeSprintBacklog(index:Int) throws{
        if index < listSprint.count, index >= 0 {
            listSprint.remove(at: index)
        } else {
            throw SprintBacklogErrors.invalidIndex
        }
    }
}




