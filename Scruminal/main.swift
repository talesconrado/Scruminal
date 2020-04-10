//  Copyright © 2020 Jéssica & Tales. All rights reserved.
import Foundation


//testes
var novoBacklog = Backlog()
novoBacklog.addItem(itemName: "Cair", priority: 13)
novoBacklog.addItem(itemName: "Comer", priority: 13000)
novoBacklog.addItem(itemName: "Beber", priority: 14000)

novoBacklog.editItem(index: 0, itemName: "Pao de queijo")

let sprintBacklog = SprintBacklog()
sprintBacklog.addItemSprint(backlog: novoBacklog.items[0], dificulty: 3)
sprintBacklog.addItemSprint(backlog: novoBacklog.items[1], dificulty: 4)
sprintBacklog.addItemSprint(backlog: novoBacklog.items[2], dificulty: 10)

for i in 0..<sprintBacklog.listSprint.count{
    print(sprintBacklog.listSprint[i].backlog.itemName)
}

sprintBacklog.editDificulty(index: 2, newDificulty: 13)
try sprintBacklog.removeSprintBacklog(index: 1)

for i in 0..<sprintBacklog.listSprint.count{
    print("Lista com o item removido.")
    print(sprintBacklog.listSprint[i].backlog.itemName)
}



//print(novoBacklog.items)

