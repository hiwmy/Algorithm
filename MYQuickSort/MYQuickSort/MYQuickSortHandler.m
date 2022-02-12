//
//  MYQuickSortHandler.m
//  MYQuickSort
//
//  Created by wangmingyu on 2022/2/12.
//  Copyright © 2022 imeilu. All rights reserved.
//

#import "MYQuickSortHandler.h"

@implementation MYQuickSortHandler

+ (void)quickSortForList:(NSMutableArray *)list leftIndex:(NSInteger)leftIndex rightIndex:(NSInteger)rightIndex {
    
    if (rightIndex - leftIndex < 1) {
        return;
    }
    
    NSInteger tempLeftIndex = leftIndex;
    NSInteger tempRightIndex = rightIndex;
    NSInteger key = [list[leftIndex] intValue];
    
    while (tempLeftIndex < tempRightIndex) {
        while (key < [list[tempRightIndex] intValue]) {
            tempRightIndex = tempRightIndex - 1;
        }
        list[tempLeftIndex] = list[tempRightIndex];
        
        while ((tempLeftIndex < tempRightIndex) && (key > [list[tempLeftIndex] intValue])) {
            tempLeftIndex = tempLeftIndex + 1;
        }
        list[tempRightIndex] = list[tempLeftIndex];
    }
    
    list[tempLeftIndex] = [NSNumber numberWithInteger:key];
    
    [MYQuickSortHandler quickSortForList:list leftIndex:leftIndex rightIndex:tempLeftIndex - 1];
    [MYQuickSortHandler quickSortForList:list leftIndex:tempLeftIndex + 1 rightIndex:rightIndex];
}

@end

/*
 eg:
 3 1 2 5 6
 2 1 2 5 6
     *
 
 2 1 2 5 6
   *
 
 2 1 2 5 6
     *
     *
     3
 
 2 1
 
 5 6
 
 2 1
   *
 
 1 1
   *
   *
   2
 
 1 2
 
 1
 
 
 eg:
 3 1 4 7 2 5 6
 */
