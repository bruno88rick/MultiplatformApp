//
//  Filter.swift
//  MultiplatformApp
//
//  Created by Bruno Oliveira on 24/05/24.
//

import Foundation

struct Filter: Identifiable, Hashable {
    var id: UUID
    var name: String
    var icon: String
    var minModificationDate = Date.distantPast
    var tag: Tag?
    
    static var all = Filter(id: UUID(), name: "AllTasks", icon: "tray")
    static var recent = Filter(id: UUID(), name: "Recent Tasks", icon: "clock", minModificationDate: .now.addingTimeInterval(86400 * -7))
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    

    /*No contexto da função estática de comparação ﻿==(lhs:rhs: ) em Swift, ﻿lhs e ﻿rhs são abreviações para "left-hand side" (lado esquerdo) e "right-hand side" (lado direito), respectivamente. Esses nomes são frequentemente usados em operadores e funções de comparação para distinguir entre os dois valores que estão sendo comparados.*/
    static func ==(lhs: Filter, rhs: Filter) -> Bool {
        lhs.id == rhs.id
    }
    
}
