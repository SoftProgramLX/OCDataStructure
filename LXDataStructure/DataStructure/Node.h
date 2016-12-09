//
//  Node.h
//  LXDataStructure
//
//  Created by 李旭 on 16/12/6.
//  Copyright © 2016年 lixu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject

@property (nonatomic, strong) NSObject *data;
@property (nonatomic, strong) Node *next;

//创建节点
+ (Node *)createNode:(NSObject *)data;

@end