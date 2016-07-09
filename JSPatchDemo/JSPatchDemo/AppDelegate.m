//
//  AppDelegate.m
//  JSPatchDemo
//
//  Created by 陈博文 on 16/7/9.
//  Copyright © 2016年 陈博文. All rights reserved.
//

#import "AppDelegate.h"
#import <JSPatch/JSPatch.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
   
    // 通过appKey启动
    [JSPatch startWithAppKey:@"376f88051fa4a990"];
    // 同步JSPatch官网控制台中的js补丁
    [JSPatch sync];
    
    
    return YES;
}


@end
