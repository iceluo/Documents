//
//  ViewController.m
//  文本框
//
//  Created by luoliang on 15/1/27.
//  Copyright (c) 2015年 luoliang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *hhhh;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    char st[]="dsf\n\0sdf";
    
    NSString *stt=[NSString stringWithUTF8String:st];
    
    self.hhhh.text=stt;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
