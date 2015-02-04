//
//  ViewController.m
//  图片拉伸
//
//  Created by luoliang on 15/1/28.
//  Copyright (c) 2015年 luoliang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];


    
    NSString *imagePath = [[NSBundle mainBundle] pathForResource:@"tx@2x" ofType:@"png"];

    UIImage *im3 =[UIImage imageNamed:@"tx.png"];
    UIImage *im4 =[im3 stretchableImageWithLeftCapWidth:im3.size.width*0.5-1 topCapHeight:im3.size.height*0.5-1];
    //[im3 drawAsPatternInRect:CGRectMake(0, 0, 10, 10)];
    UIImageView *view=[[UIImageView alloc]initWithImage:im4];
    view.frame=CGRectMake(55, 55, 55, 55);

   [self.view addSubview:view];
    
    
}

- (UIImage *)resizedImageWithName:(NSString *)name
{
    UIImage *image = [UIImage imageNamed:name];
    return [image stretchableImageWithLeftCapWidth:image.size.width * 0.5 topCapHeight:image.size.height * 0.5];
}




@end
