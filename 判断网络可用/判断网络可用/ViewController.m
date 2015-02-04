//
//  ViewController.m
//  判断网络可用
//
//  Created by luoliang on 15/1/28.
//  Copyright (c) 2015年 luoliang. All rights reserved.
//

#import "ViewController.h"
#import "Reachability.h"
#import "AppDelegate.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeContactAdd];
    btn.center = CGPointMake(100, 200);
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
}

-(void)btnClick
{
    AppDelegate *appDlg = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    
    NSParameterAssert([appDlg.reach isKindOfClass: [Reachability class]]);
    NetworkStatus status = [appDlg.reach currentReachabilityStatus];
    
    if (status == NotReachable) {
        //        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:nil message:@"网络已断开" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil];
        //        [alertView show];
        NSLog(@"----Notification Says Unreachable");
    }else if(status == ReachableViaWWAN){
        //        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:nil message:@"移动网络" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil];
        //        [alertView show];
        NSLog(@"----Notification Says mobilenet");
    }else if(status == ReachableViaWiFi){
        //        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:nil message:@"WIfi网络" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil];
        //        [alertView show];
        NSLog(@"----Notification Says wifinet");
    }
}



@end
