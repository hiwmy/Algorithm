//
//  MYHeapSortHandler.m
//  MYHeapSort
//
//  Created by wangmingyu on 2022/2/17.
//

#import "MYHeapSortHandler.h"

@implementation MYHeapSortHandler

+ (void)heapSortWithList:(NSMutableArray *)list {
    [MYHeapSortHandler buildHeapWithList:list];
    for (NSInteger i = list.count - 1; i > 0; i--) {
        NSNumber *iIndexValue = list[i];
        list[i] = list[0];
        list[0] = iIndexValue;
        [MYHeapSortHandler heapifyWithList:list length:i index:0];
    }
}

+ (void)buildHeapWithList:(NSMutableArray *)list {
    for (NSInteger i = (list.count-1)/2; i >= 0; i--) {
        [MYHeapSortHandler heapifyWithList:list length:list.count index:i];
    }
}

+ (void)heapifyWithList:(NSMutableArray *)list length:(NSInteger)length index:(NSInteger)index {
    if (index >= length) {
        return;
    }
    
    NSInteger leftChildIndex = 2*index + 1;
    NSInteger rightChildIndex = 2*index + 2;
    NSInteger maxIndex = index;
    
    if ((leftChildIndex < length) && ([list[leftChildIndex] intValue] > [list[maxIndex] intValue])) {
        maxIndex = leftChildIndex;
    }
    
    if ((rightChildIndex < length) && ([list[rightChildIndex] intValue] > [list[maxIndex] intValue])) {
        maxIndex = rightChildIndex;
    }
    
    if (maxIndex != index) {
        NSNumber *temp = list[index];
        list[index] = list[maxIndex];
        list[maxIndex] = temp;
        [MYHeapSortHandler heapifyWithList:list length:length index:maxIndex];
    }
    
}

@end
