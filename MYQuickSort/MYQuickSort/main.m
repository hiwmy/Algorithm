//
//  main.m
//  MYQuickSort
//
//  Created by wangmingyu on 2022/2/12.
//  Copyright © 2022 imeilu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MYQuickSortHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSMutableArray *task1List = [@[@3, @1, @4, @7, @2, @5, @6] mutableCopy];
        [MYQuickSortHandler quickSortForList:task1List leftIndex:0 rightIndex:task1List.count-1];
        NSLog(@"task1List is %@",task1List);
        
        NSMutableArray *task2List = [@[@3, @1, @2, @5, @6] mutableCopy];
        [MYQuickSortHandler quickSortForList:task2List leftIndex:0 rightIndex:task2List.count-1];
        NSLog(@"task2List is %@",task2List);
    }
    return 0;
}
