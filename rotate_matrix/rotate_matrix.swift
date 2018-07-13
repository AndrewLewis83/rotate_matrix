//
//  rotate_matrix.swift
//  rotate_matrix
//
//  Created by Andrew Lewis on 7/9/18.
//  Copyright © 2018 Andrew Lewis. All rights reserved.
//

import Foundation
//import PhotosUI

class rotate_matrix {
    
    func startingPoint(){
        let originalArray = [[1,2,3,4],[5,6,7,8],[9,10,11,12],[13,14,15,16]]
        var placeHolder: Int
        
        let n = originalArray.count
        let m = originalArray[n-1].count
        
        var newArray = [[Int]]()
        
        for row in 0...n-1{
            var columnArray = Array<Int>()
            for column in 0...m-1{
                columnArray.append(0)
            }
            newArray.append(columnArray)
        }
        
        for elements in originalArray{
           print(elements)
        }
        
        print("******")
        
        for row in 0...originalArray.count-1{
            for column in 0...originalArray[row].count-1{
                newArray[column][row] = originalArray[row][column]
            }
        }
        for elements in newArray{
            print(elements)
        }
        
        
//        int [][] rotate(int [][] input){
//
//            int n =input.length();
//            int m = input[0].length();
//            int [][] output = new int [m][n];
//
//            for (int i=0; i<n; i++)
//            for (int j=0;j<m; j++)
//            output [j][n-1-i] = input[i][j];
//            return output;
//        }

        
    }
    
}
