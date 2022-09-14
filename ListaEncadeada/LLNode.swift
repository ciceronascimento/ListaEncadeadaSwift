//
//  LinkedList.swift
//  ListaEncadeada
//
//  Created by Cicero Nascimento on 31/08/22.
//

import Foundation



class LLNode<T> {
    var key: T?
    var next: LLNode?
    var previous: LLNode?
    
    
    internal init(key: T? = nil, next: LLNode<T>? = nil, previous: LLNode<T>? = nil) {
        self.key = key
        self.next = next
        self.previous = previous
    }
    
}
