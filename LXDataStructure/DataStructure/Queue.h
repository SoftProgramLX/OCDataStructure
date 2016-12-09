//
//  Queue.h
//  LXDataStructure
//
//  Created by 李旭 on 16/12/6.
//  Copyright © 2016年 lixu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Queue : NSObject

//进入队列
- (void)enqueue:(NSObject *)item;
//出队列
- (NSObject *)dequeue;

@end
