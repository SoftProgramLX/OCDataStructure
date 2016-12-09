//
//  Queue.m
//  LXDataStructure
//
//  Created by 李旭 on 16/12/6.
//  Copyright © 2016年 lixu. All rights reserved.
//

#import "Queue.h"
#import "Node.h"

@interface Queue ()

@property (nonatomic, strong) Node *first;
@property (nonatomic, strong) Node *last;

@end

@implementation Queue

- (void)enqueue:(NSObject *)item
{
    if (self.first == nil) {
        self.first = [Node createNode:item];
        self.last = self.first;
    } else {
        self.last.next = [Node createNode:item];
        self.last = self.last.next;
    }
}

- (NSObject *)dequeue
{
    if (self.first != nil) {
        NSObject *item = self.first.data;
        self.first = self.first.next;
        return item;
    }
    return nil;
}

@end
