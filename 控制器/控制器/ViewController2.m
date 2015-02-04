//
//  ViewController2.m
//  控制器
//
//  Created by luoliang on 15/1/27.
//  Copyright (c) 2015年 luoliang. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()
- (IBAction)dd:(id)sender;

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"%@",self.name);
 }


- (IBAction)dd:(id)sender {
    
 [self dismissViewControllerAnimated:YES completion:^{
     NSLog(@"221213");
 }];

}
@end
