//
//  LinkList.h
//  LXDataStructure
//
//  Created by 李旭 on 16/12/6.
//  Copyright © 2016年 lixu. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Node;

//单向链表
@interface LinkList : NSObject

@property (nonatomic, strong, readonly) Node *headNode;

//添加节点
- (void)appendNodeToTail:(NSObject *)data;
//删除节点
- (void)deleteNodeWithObject:(NSObject *)object;


@end
