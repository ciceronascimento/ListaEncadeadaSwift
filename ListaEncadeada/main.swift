//
//  main.swift
//  ListaEncadeada
//
//  Created by Cicero Nascimento on 31/08/22.
//

import Foundation


let linkedList = LinkedList<Any>()

linkedList.addLink(key: "primeiro adicionado")

linkedList.addLink(key: "segundo adicionado")

linkedList.addLink(key: "terceiro adicionado")

print("Itens atuais:")
linkedList.printAllKeys()

linkedList.removeLink(index: 0)

print("\nItens apos remover indice 0")
linkedList.printAllKeys()

print("\nItens na lista: \(linkedList.count)")
