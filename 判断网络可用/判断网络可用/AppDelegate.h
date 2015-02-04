//
//  AppDelegate.h
//  判断网络可用
//
//  Created by luoliang on 15/1/28.
//  Copyright (c) 2015年 luoliang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Reachability.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) Reachability *reach;

@end

