//
//  rotate_matrix.swift
//  rotate_matrix
//
//  Created by Andrew Lewis on 7/9/18.
//  Copyright © 2018 Andrew Lewis. All rights reserved.
//

// I had to consult quite a few articles for this one. The algorithm was pretty challenging.
// https://stackoverflow.com/questions/24051490/multidimensional-arrays-in-swift
// https://www.careercup.com/question?id=5667482614366208

// The meat of this is based off of the following code
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

import Foundation

class rotate_matrix {
    
    func startingPoint(){
        let originalArray = [[1,2,3,4],[5,6,7,8],[9,10,11,12],[13,14,15,16]]
        
        let n = originalArray.count
        let m = originalArray[n-1].count
        
        var newArray = [[Int]]()
        
        // apparently, Swift doesn't allow you to declare empty arrays of N values, so I had to populate one with zeroes.
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
        print("The array, rotated 90 degrees to the right")
        
        for row in 0...originalArray.count-1{
            for column in 0...originalArray[row].count-1{
                newArray[column][n-1-row] = originalArray[row][column]
            }
        }
        for elements in newArray{
            print(elements)
        }
    }
}
