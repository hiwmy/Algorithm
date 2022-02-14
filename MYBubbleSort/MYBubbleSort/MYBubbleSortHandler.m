//
//  MYBubbleSortHandler.m
//  MYBubbleSort
//
//  Created by wangmingyu on 2022/2/14.
//

#import "MYBubbleSortHandler.h"

@implementation MYBubbleSortHandler

+ (void)bubbleSortWithList:(NSMutableArray *)list {
    for (int i = 0; i < list.count; i++) {
        for (NSInteger j = list.count - 1; j > i; j--) {
            if ([list[j] intValue] < [list[j - 1] intValue]) {
                NSNumber *temp = list[j];
                list[j] = list[j - 1];
                list[j - 1] = temp;
            }
        }
    }
}

@end
