//
//  MYHeapSortHandler.h
//  MYHeapSort
//
//  Created by wangmingyu on 2022/2/17.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MYHeapSortHandler : NSObject

+ (void)buildHeapWithList:(NSMutableArray *)list;

+ (void)heapSortWithList:(NSMutableArray *)list;

@end

NS_ASSUME_NONNULL_END
