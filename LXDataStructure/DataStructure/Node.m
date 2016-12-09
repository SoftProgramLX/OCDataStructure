//
//  Node.m
//  LXDataStructure
//
//  Created by 李旭 on 16/12/6.
//  Copyright © 2016年 lixu. All rights reserved.
//

#import "Node.h"

@implementation Node

+ (Node *)createNode:(NSObject *)data
{
    Node *node = [[Node alloc] init];
    node.data = data;
    return node;
}

@end
