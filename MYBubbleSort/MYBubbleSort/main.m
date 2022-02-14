//
//  main.m
//  MYBubbleSort
//
//  Created by wangmingyu on 2022/2/14.
//

#import <Foundation/Foundation.h>
#import "MYBubbleSortHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        NSMutableArray *list = [@[@1, @7, @10, @8, @10, @2, @12] mutableCopy];
        [MYBubbleSortHandler bubbleSortWithList:list];
        NSLog(@"List after bubble sort is %@", list);
    }
    return 0;
}
