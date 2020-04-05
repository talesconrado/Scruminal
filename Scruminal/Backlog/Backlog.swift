//  Copyright © 2020 Jéssica & Tales. All rights reserved.
//

import Foundation

enum BacklogErrors:Error{
    case invalidIndex
}

class Backlog{
    
    struct Item{
        var itemName:String
        var priority:Int
    }
    
    //every time it changes, orders the array by priority
    var items = [Item]() {
        didSet {
            items = items.sorted(by: {$0.priority > $1.priority} )
        }
    }
    
    func addItem(itemName:String, priority:Int){
        let newItem = Item(itemName: itemName, priority: priority)
        items.append(newItem)
    }
    
    //you can change just one attribute or both
    func editItem(index:Int, itemName:String? = nil, priority:Int? = nil){
        if let itemName = itemName{
            items[index].itemName = itemName
        }
        if let priority = priority{
            items[index].priority = priority
        }
    }
    
    func removeItem(index:Int) throws {
        if index < items.count, index >= 0{
            items.remove(at: index)
        } else {
            throw BacklogErrors.invalidIndex
        }
    }
}
