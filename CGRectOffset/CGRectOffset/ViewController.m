//
//  ViewController.m
//  CGRectOffset
//
//  Created by luoliang on 15/1/30.
//  Copyright (c) 2015年 luoliang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    CGRect rect=CGRectMake(0, 0, 100, 100);
    
    NSLog(@"\n\n%@\n\n",NSStringFromCGRect(rect));
    
    CGRect rect2=CGRectOffset(rect, 100, 100);
    
    NSLog(@"\n\n%@\n\n",NSStringFromCGRect(rect2));

    
}



@end
