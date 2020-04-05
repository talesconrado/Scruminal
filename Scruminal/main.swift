//  Copyright © 2020 Jéssica & Tales. All rights reserved.
import Foundation


//testes
var novoBacklog = Backlog()
novoBacklog.addItem(itemName: "Cair", priority: 13)
novoBacklog.addItem(itemName: "Comer", priority: 13000)
novoBacklog.addItem(itemName: "Beber", priority: 14000)

novoBacklog.editItem(index: 0, itemName: "Pao de queijo")

print(novoBacklog.items)
