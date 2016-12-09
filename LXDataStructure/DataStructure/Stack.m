//
//  Stack.m
//  LXDataStructure
//
//  Created by 李旭 on 16/12/6.
//  Copyright © 2016年 lixu. All rights reserved.
//

#import "Stack.h"
#import "Node.h"

@interface Stack ()

@property (nonatomic, strong) Node *top;

@end

@implementation Stack

- (NSObject *)pop
{
    if (self.top.data != nil) {
        NSObject *object = self.top.data;
        self.top = self.top.next;
        return object;
    }
    
    return nil;
}

- (void)push:(NSObject *)item
{
    Node *node = [Node createNode:item];
    node.next = self.top;
    self.top = node;
}

- (NSObject *)peek
{
    return self.top.data;
}

@end
