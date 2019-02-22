//
//  GasStation.swift
//  SwiftLeetcode
//
//  Created by Varun Jandhyala on 8/14/18.
//  Copyright © 2018 varun. All rights reserved.
//

import Foundation

/*
     https://leetcode.com/problems/gas-station/
 
     There are N gas stations along a circular route, where the amount of gas at station i is gas[i].
     
     You have a car with an unlimited gas tank and it costs cost[i] of gas to travel from station i to its next station (i+1). You begin the journey with an empty tank at one of the gas stations.
 
     Return the starting gas station's index if you can travel around the circuit once in the clockwise direction, otherwise return -1.
 
     Note:
 
     If there exists a solution, it is guaranteed to be unique.
     Both input arrays are non-empty and have the same length.
     Each element in the input arrays is a non-negative integer.
 */

class GasStation {
    func canCompleteCircuit(_ gas: [Int], _ cost: [Int]) -> Int {
        /* Approach: Filter to valid gas stations (gas[i] > cost[i])
                               Iterate over valid gas stations ->
                               Compute the circuit (Add gas to car, subtract cost, move to next point and repeat)
                               Return gas station index if route is valid
                               Outside loop -> return -1 (no valid route)
         */
        
        var tmpIndex = 0, currentGas = 0, count = 0

        for (startingPoint, _) in gas.enumerated() {
            tmpIndex = startingPoint

            count = 0

            var foundSolution = true

            while count <= gas.count  {
                // Iterate over 'count' number of elements and compute circuit
                currentGas += (gas[tmpIndex] - cost[tmpIndex])

                if currentGas < 0 {
                    foundSolution = false
                    currentGas = 0
                    break
                }
                // Move to next point
                tmpIndex += 1
                if tmpIndex >= gas.count { tmpIndex = 0 }

                count += 1
            }

            if foundSolution { return startingPoint }
        }

        return -1
    }
}
