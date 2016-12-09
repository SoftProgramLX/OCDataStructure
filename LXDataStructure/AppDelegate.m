//
//  AppDelegate.m
//  LXDataStructure
//
//  Created by 李旭 on 16/12/6.
//  Copyright © 2016年 lixu. All rights reserved.
//

#import "AppDelegate.h"
#import "Node.h"
#import "LinkList.h"
#import "Stack.h"
#import "Queue.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    //测试单向链表
    [self testLinkList];
    //测试栈
    [self testStack];
    //测试队列
    [self testQueue];
    
    return YES;
}

-  (void)testLinkList
{
    LinkList *linkList = [[LinkList alloc] init];
    [linkList appendNodeToTail:@"first"];
    [linkList appendNodeToTail:@"two"];
    [linkList appendNodeToTail:@"three"];
    [linkList deleteNodeWithObject:@"two"];
    
    NSLog(@"%s %@", __func__, linkList.headNode.data);
    
    Node *node = linkList.headNode.next;
    NSLog(@"%s %@", __func__, node.data);
    [linkList appendNodeToTail:@"end"];
    node = node.next;
    NSLog(@"%s %@", __func__, node.data);
    node = node.next;
    NSLog(@"%s %@", __func__, node.data);
}

- (void)testStack
{
    Stack *stack = [[Stack alloc] init];
    [stack push:@"first"];
    NSLog(@"%s %@", __func__, [stack peek]);
    [stack push:@"two"];
    NSLog(@"%s %@", __func__, [stack peek]);
    
    [stack pop];
    NSLog(@"%s %@", __func__, [stack peek]);
    [stack pop];
    NSLog(@"%s %@", __func__, [stack peek]);
}

- (void)testQueue
{
    Queue *queue = [[Queue alloc] init];
    [queue enqueue:@"first"];
    NSLog(@"%s %@", __func__, [queue dequeue]);
    
    [queue enqueue:@"two"];
    [queue enqueue:@"three"];
    NSLog(@"%s %@", __func__, [queue dequeue]);
    NSLog(@"%s %@", __func__, [queue dequeue]);
    NSLog(@"%s %@", __func__, [queue dequeue]);
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
