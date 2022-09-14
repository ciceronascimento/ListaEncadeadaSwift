//
//  File.swift
//  ListaEncadeada
//
//  Created by Cicero Nascimento on 14/09/22.
//

import Foundation

public class LinkedList<T> {
    
    internal init(head: LLNode<T> = LLNode<T>()) {
        self.head = head
    }
    
    
    //criar uma nova instancia de LLNode
    private var head: LLNode<T> = LLNode<T>()
    
    
    func printAllKeys(){
        var current: LLNode! = head;
        while (current != nil){
            print("\(current.key)")
            current = current.next
        }
    }
    
    //metodo para adicionar novo item a ista encadeada
    func addLink(key: T) {
        
        //verifica inicio da lista
        if(head.key == nil) {
            head.key = key;
//            print(head.key)
            return;
        }
        
        //
        var current: LLNode? = head
        
        while(current != nil) {
            if(current?.next == nil) {
                var childToUse:  LLNode = LLNode<T>()
                childToUse.key = key;
                childToUse.previous = current
                current!.next = childToUse;
//                print(childToUse.key)
                break;
            }
            
            current = current?.next
        }
    }
    
    func removeLink(index: Int) {
        var current: LLNode<T>? = head
        var trailer: LLNode<T>?
        var listIndex: Int = 0
        
        if(index == 0) {
            current = current?.next
            head = current!
            return
        }
        
        while(current != nil) {
            if(listIndex == index) {
                trailer!.next = current?.next
                current = nil
                break
            }
            
            trailer = current
            current = current?.next
            listIndex+=1
        }
    }
    
    var count: Int {
        if(head.key == nil) {
            return 0
        }
        else {
            var current: LLNode = head
            var x: Int = 1
            
            while ((current.next) != nil) {
                current = current.next!;
                x+=1
            }
            return x
        }
    }
}
