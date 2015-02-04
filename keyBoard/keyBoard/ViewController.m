//
//  ViewController.m
//  keyBoard
//
//  Created by luoliang on 15/1/22.
//  Copyright (c) 2015年 luoliang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor=[UIColor groupTableViewBackgroundColor];
    UITextField *lb=[[UITextField alloc]init];
    lb.backgroundColor=[UIColor whiteColor];
    lb.frame=CGRectMake(30,250, 180, 40);
    lb.text=@"hi";
    lb.tag=1001;
    [self.view addSubview:lb];
    
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(keyboard:) name:UIKeyboardWillChangeFrameNotification object:nil];
    
    
}

/*
 UIKeyboardAnimationCurveUserInfoKey = 7;
 UIKeyboardAnimationDurationUserInfoKey = "0.25";
 UIKeyboardBoundsUserInfoKey = "NSRect: {{0, 0}, {320, 253}}";
 UIKeyboardCenterBeginUserInfoKey = "NSPoint: {160, 353.5}";
 UIKeyboardCenterEndUserInfoKey = "NSPoint: {160, 606.5}";
 UIKeyboardFrameBeginUserInfoKey = "NSRect: {{0, 227}, {320, 253}}";
 UIKeyboardFrameEndUserInfoKey = "NSRect: {{0, 480}, {320, 253}}";
 */

-(void)keyboard:(NSNotification *)notify{
    
    NSDictionary *dic=notify.userInfo;
    NSLog(@"%@",dic);
    CGRect eframe=[dic[@"UIKeyboardFrameEndUserInfoKey"] CGRectValue];
    CGFloat height= eframe.origin.y-self.view.frame.size.height;
    self.view.transform=CGAffineTransformMakeTranslation(0, height);

}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    NSLog(@"hai  --%@",event);
    
    UIWindow *keyWindow = [[UIApplication sharedApplication] keyWindow];
    UIView *firstResponderView = [keyWindow performSelector:@selector(firstResponder)];
  
    NSLog(@"%@",firstResponderView);
    
    [firstResponderView resignFirstResponder];
//    UITextField *utf=(UITextField *)[self.view viewWithTag:1001];
//    [utf resignFirstResponder];
    
    
    
};


@end
