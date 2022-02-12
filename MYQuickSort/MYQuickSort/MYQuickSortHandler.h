//
//  MYQuickSortHandler.h
//  MYQuickSort
//
//  Created by wangmingyu on 2022/2/12.
//  Copyright © 2022 imeilu. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MYQuickSortHandler : NSObject

+ (void)quickSortForList:(NSMutableArray *)list leftIndex:(NSInteger)leftIndex rightIndex:(NSInteger)rightIndex;

@end

NS_ASSUME_NONNULL_END
