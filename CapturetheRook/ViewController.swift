//
//  ViewController.swift
//  CapturetheRook
//
//  Created by Daniel Washington Ignacio on 27/05/21.
//


/*
 Write a function that returns true if two rooks can attack each other, and false otherwise.

 Examples

 canCapture(["A8", "E8"]) ➞ true

 canCapture(["A1", "B2"]) ➞ false

 canCapture(["H4", "H3"]) ➞ true

 canCapture(["F5", "C8"]) ➞ false
 Notes

 Assume no blocking pieces.
 Two rooks can attack each other if they share the same row (letter) or column (number).
 */


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       // print(canCapture(["A8", "E8"]))
       // print(canCapture(["A1", "B2"]))
       // print(canCapture(["H4", "H3"]))
        print(canCapture(["F5", "C8"]))
        
        
    }
    func canCapture(_ rooks: [String]) -> Bool {
        var characters: [String] = []
        var result: [String] = []
        var result1: [String] = []
        var count: Int = 0
        for n in rooks{
            if count < 1 {
                characters = n.map{String($0)}
                result.append(contentsOf: characters)
            } else{
            characters = n.map{String($0)}
            result1.append(contentsOf: characters)
            }
            count = count + 1
        }
        for n in result{
            for m in result1{
                if m == n{
                    return true
                }
            }
        }
        return false
    }


}

