//
//  main.m
//  MYListInvert
//
//  Created by wangmingyu on 2022/2/7.
//

#import <Foundation/Foundation.h>
#import "MYListNode.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        MYListNode *head = [MYListNode createListWithArray:@[@1, @3, @7, @9]];
        [MYListNode printListValueWithNodeHead:head];
    }
    return 0;
}
