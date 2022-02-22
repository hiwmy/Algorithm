//
//  main.m
//  MYHeapSort
//
//  Created by wangmingyu on 2022/2/17.
//

#import <Foundation/Foundation.h>
#import "MYHeapSortHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        NSMutableArray *list = [@[@4, @10, @3, @5, @1, @2] mutableCopy];
        [MYHeapSortHandler buildHeapWithList:list];
        NSLog(@"list is %@", list);
        
        NSMutableArray *list1 = [@[@5, @10, @6, @11, @12, @7, @8] mutableCopy];
        [MYHeapSortHandler buildHeapWithList:list1];
        NSLog(@"list1 is %@", list1);
        
        [MYHeapSortHandler heapSortWithList:list1];
        NSLog(@"list1 is %@", list1);
        
    }
    return 0;
}
