//
//  AppDelegate.m
//  cesGit
//
//  Created by zhaishuang on 2019/11/1.
//  Copyright © 2019 dongyangTan. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate (){
    
    NSMutableArray * mutableArr;
}

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

   NSString*str= @"测试0827";
    NSLog(@"%@",str);
    
    mutableArr = [NSMutableArray array];
    NSArray * array = @[@"1",@"2",@"3",@"4",@"5",@"6",@"7"];
    [self groupArray:array count:0];
    NSLog(@"%@",mutableArr);
    return YES;
}

 - (void)groupArray:(NSArray *)arr count:(NSInteger)count {
    NSMutableArray * tempArray = [NSMutableArray array];
    while (count < arr.count) {
        [tempArray addObject:arr[count]];
        count++;
        if (count% 3 == 0) {
            break;
        }
        if (count == arr.count) {
            [mutableArr addObject:tempArray];
            return;
        }
    }
    [mutableArr addObject:tempArray];
    [self groupArray:arr count:count];
}
-(void)application{
    NSLog(@"UISceneSession lifecycle");
 
}

#pragma mark - UISceneSession lifecycle
- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // QQQQQCalled when a new scene session is being created.
    // QQQQQqe this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
