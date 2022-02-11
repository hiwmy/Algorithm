//
//  MYBinarySearchHandler.m
//  MYBinarySearch
//
//  Created by wangmingyu on 2022/2/10.
//

#import "MYBinarySearchHandler.h"

@implementation MYBinarySearchHandler

+ (NSInteger)binarySearchInArray:(NSArray *)list targetElement:(NSNumber *)element {
    if (list.count == 0) {
        assert("list count is 0");
        return -1;
    }
    NSInteger minIndex = 0;
    NSInteger maxIndex = list.count - 1;
    while (minIndex <= maxIndex) {
        NSNumber *midElement = list[(minIndex+maxIndex)/2];
        if (midElement > element) {
            maxIndex = (minIndex + maxIndex)/2-1;
        } else if (midElement == element)  {
            return (minIndex+maxIndex)/2;
        } else {
            minIndex = (minIndex + maxIndex)/2+1;
        }
    }
    return -1;
}

@end
