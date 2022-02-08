//
//  main.m
//  MYAsceArrayUnDuplicate
//
//  Created by wangmingyu on 2022/2/8.
//

#import <Foundation/Foundation.h>
#import "MYDuplicateHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *list = [@[@1, @2, @2, @3, @6, @7, @7] mutableCopy];
        NSInteger length = [MYDuplicateHandler lengthRemoveDuplicateToArray:list];
        for (int i = 0; i < length; i++) {
            NSLog(@"%@", list[i]);
        }
    }
    return 0;
}
