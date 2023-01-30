//
//  GameManager.swift
//  5.1 KingTicTacToe
//
//  Created by Alun King on 30/01/2023.
//

import Foundation

public let nought:Int = -1
public let cross:Int = 1

class GameManager: ObservableObject{
    
    
    var nextTurn = nought
    @Published var message: String = ""
    @Published var nextPlayer: String = "O to play"
    @Published var isGameActive:Bool = true
    @Published var board: Array<Int> = [0,0,0,0,0,0,0,0,0]{
        didSet{
            nextTurn *= -1
            if nextTurn == nought {
                nextPlayer = "O to play"
            }else{
                nextPlayer = "X to play"
            }
            //check for winner
        }
    }
    
    
    
    
    private let winningCombinations = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
    
    func reset(){
        board = [0,0,0,0,0,0,0,0,0]
        
    }
    
    
    
}
