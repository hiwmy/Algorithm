//
//  main.m
//  MYSimpleExchangeSort
//
//  Created by wangmingyu on 2022/2/14.
//

#import <Foundation/Foundation.h>
#import "MYSimpleExchangeSortHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        NSMutableArray *list = [@[@1, @15, @3, @15, @17, @7] mutableCopy];
        [MYSimpleExchangeSortHandler simpleExchangeSortWithList:list];
        NSLog(@"The simpleExchangeSorted list is %@", list);
    }
    return 0;
}
