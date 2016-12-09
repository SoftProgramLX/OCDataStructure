//
//  Stack.h
//  LXDataStructure
//
//  Created by 李旭 on 16/12/6.
//  Copyright © 2016年 lixu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Stack : NSObject

//弹栈
- (NSObject *)pop;
//入栈
- (void)push:(NSObject *)object;
//查看当前栈顶数据
- (NSObject *)peek;

@end
