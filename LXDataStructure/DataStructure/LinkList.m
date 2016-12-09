//
//  LinkList.m
//  LXDataStructure
//
//  Created by 李旭 on 16/12/6.
//  Copyright © 2016年 lixu. All rights reserved.
//

#import "LinkList.h"
#import "Node.h"

@interface LinkList ()

@property (nonatomic, strong) Node *currentNode;

@end

@implementation LinkList

- (void)appendNodeToTail:(NSObject *)data
{
    Node *tailNode = [Node createNode:data];
    
    if (self.currentNode == nil) {
        self.currentNode = tailNode;
        _headNode = tailNode;
    } else {
        Node *temp = self.currentNode;
        while (temp.next != nil) {
            temp = temp.next;
        }
        temp.next = tailNode;
    }
}

- (void)deleteNodeWithObject:(NSObject *)object
{
    Node *temp = self.headNode;
    if (temp.data == object) {
        _headNode = temp.next;
    }
    
    while (temp.next != nil) {
        if (temp.next.data == object) {
            temp.next = temp.next.next;
            break;
        }
        temp = temp.next;
    }
}

@end
