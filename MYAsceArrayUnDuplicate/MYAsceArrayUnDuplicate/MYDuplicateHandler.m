//
//  MYDuplicateHandler.m
//  MYAsceArrayUnDuplicate
//
//  Created by wangmingyu on 2022/2/8.
//

#import "MYDuplicateHandler.h"

@implementation MYDuplicateHandler

+ (NSInteger)lengthRemoveDuplicateToArray:(NSMutableArray *)list {
    if (list.count == 1) {
        return 1;
    } else {
        NSInteger index = 0;
        for (int i = 1; i < list.count; i++) {
            if (list[i] > list[index]) {
                index = index + 1;
                list[index] = list[i];
            }
        }
        return index+1;
    }
}

@end
