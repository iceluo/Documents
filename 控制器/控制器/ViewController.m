//
//  ViewController.m
//  控制器
//
//  Created by luoliang on 15/1/27.
//  Copyright (c) 2015年 luoliang. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2.h"

@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSLog(@"fsfaaf");


}

-(IBAction)dd2d:(id)sender{
    
//    UIStoryboard *uib=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
//    UIViewController *ctl=[uib instantiateViewControllerWithIdentifier:@"ddd"];
    
//    
//    UIViewController *ctl=[[[NSBundle mainBundle] loadNibNamed:@"ddddd" owner:nil options:nil]firstObject];
//    
//    [self presentViewController:ctl animated:YES completion:nil];
    
    UIButton *bt=[[UIButton alloc]init];
    [self performSegueWithIdentifier:@"hhh" sender:bt];
    
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    ViewController2* vc= (ViewController2*)segue.destinationViewController;
    vc.name=@"sss";
    
    NSLog(@"传送者的信息%@",segue.identifier);
}

@end
