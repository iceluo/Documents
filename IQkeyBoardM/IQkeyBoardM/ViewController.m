//
//  ViewController.m
//  IQkeyBoardM
//
//  Created by luoliang on 15/1/22.
//  Copyright (c) 2015年 luoliang. All rights reserved.
//

#import "ViewController.h"
//#import "IQKeyboardManager.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [IQKeyboardManager sharedManager];

    NSLog(@"来到viewDidLoad这里");
    
    
    UITextField *tf=[[UITextField alloc]init];
    tf.frame=CGRectMake(0, 100, 320, 50);
    
    [self.view addSubview:tf];
    
    tf.backgroundColor=[UIColor groupTableViewBackgroundColor];
    
    UITextField *tf2=[[UITextField alloc]init];
    tf2.frame=CGRectMake(0, 300, 320, 50);
    
    [self.view addSubview:tf2];
    
    tf2.backgroundColor=[UIColor groupTableViewBackgroundColor];
    
    
    UIButton *bt=[[UIButton alloc]init];
    bt.frame=CGRectMake(0, 200, 320, 30);
    [bt setBackgroundColor:[UIColor orangeColor]];
    [self.view addSubview:bt];
    
    [bt addTarget:self action:@selector(btClick:) forControlEvents:UIControlEventTouchUpInside];
    [bt sendActionsForControlEvents:UIControlEventTouchUpInside];
    

}


-(IBAction)btClick:(id)sender{
    NSLog(@"hai");
    
}
    
    
    
-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    
        self=[super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
        
        if(self){
            NSLog(@"来到来这里1");
            
            
        }
    NSLog(@"来到来这里2");

        return self;
}

-(instancetype)init{
    
    self=[super init];
    if (self) {

    };
    NSLog(@"来到来这里init");

    return self;
}

@end
