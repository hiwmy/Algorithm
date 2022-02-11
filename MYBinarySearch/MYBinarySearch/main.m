//
//  main.m
//  MYBinarySearch
//
//  Created by wangmingyu on 2022/2/10.
//

#import <Foundation/Foundation.h>
#import "MYBinarySearchHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSArray *list  = @[@1, @3, @7, @10, @15, @17];
        NSInteger index = [MYBinarySearchHandler binarySearchInArray:list targetElement:@3];
        if (index == -1) {
            NSLog(@"元素不存在");
        } else {
            NSLog(@"元素存在,位置是%ld", index);
        }
    }
    return 0;
}
