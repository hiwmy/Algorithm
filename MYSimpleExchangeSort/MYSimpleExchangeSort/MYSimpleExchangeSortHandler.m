//
//  MYSimpleExchangeSortHandler.m
//  MYSimpleExchangeSort
//
//  Created by wangmingyu on 2022/2/14.
//

#import "MYSimpleExchangeSortHandler.h"

@implementation MYSimpleExchangeSortHandler

+ (void)simpleExchangeSortWithList:(NSMutableArray *)list {
    for (int i = 0; i < list.count; i++) {
        int minIndex = i;
        for (int j = i + 1; j < list.count; j++) {
            if ([list[j] intValue] < [list[minIndex] intValue]) {
                minIndex = j;
            }
        }
        if (minIndex != i) {
            NSNumber *temp = list[i];
            list[i] = list[minIndex];
            list[minIndex] = temp;
        }
    }
}

@end
