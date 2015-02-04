//
//  ViewController.m
//  多种样式颜色的文本
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
    
    NSString *timeStr=@"dafdasfa天。。。。小时。。。。分。。。秒 结束sdfsaafas";
    NSMutableAttributedString*str=[[NSMutableAttributedString alloc] initWithString:timeStr];
    [str addAttribute:NSForegroundColorAttributeName value:[UIColor blackColor] range:NSMakeRange(0, timeStr.length)];
    NSRange dayRange=[timeStr rangeOfString:@"天"];
    [str addAttribute:NSForegroundColorAttributeName value:[UIColor colorWithRed:.99 green:0 blue:.0 alpha:1] range:dayRange];
  
    [NSDictionary hash];
    UILabel *l=[UILabel new];
    l.frame=CGRectMake(20, 100, 300, 100);
    
    
   CGRect rect= [str boundingRectWithSize:CGSizeMake(100, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin context:nil];
    
    
    
    l.numberOfLines=0;
    l.attributedText=str;
    l.text=@"as\nf";

    [self.view addSubview:l];

    
}

@end
