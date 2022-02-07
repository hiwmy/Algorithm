//
//  MYListNode.m
//  MYListInvert
//
//  Created by wangmingyu on 2022/2/7.
//

#import "MYListNode.h"

@interface MYListNode ()

@property (nonatomic, strong) MYListNode *nextNode;
@property (nonatomic, strong) NSNumber *value;

@end

@implementation MYListNode

+ (MYListNode *)createListWithArray:(NSArray<NSNumber *> *)array {
    MYListNode *head = NULL;
    MYListNode *temp = NULL;
    for (NSNumber *item in array) {
        MYListNode *node = [[MYListNode alloc] init];
        node.value = item;
        if (head == NULL) {
            head = node;
            temp = node;
        } else {
            temp.nextNode = node;
            temp = node;
        }
    }
    return head;
}

+ (void)printListValueWithNodeHead:(MYListNode *)head {
    MYListNode *temp;
    temp = head;
    while (temp != NULL) {
        NSLog(@"List node value is %@", temp.value);
        temp = temp.nextNode;
    }
}

@end
