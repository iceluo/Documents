//
//  ViewController.m
//  粘贴板
//
//  Created by luoliang on 15/2/4.
//  Copyright (c) 2015年 luoliang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (nonatomic, strong) UILabel *l;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];



    self.l=[UILabel new];
    
    self.l.frame=CGRectMake(0, 100, 320, 40);
     self.l.text=@"asdfdf";
     self.l.backgroundColor=[UIColor redColor];
     self.l.textAlignment=NSTextAlignmentCenter;

    
    [self.l setUserInteractionEnabled:YES];
    
    
    [self.l addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(clickCategory:)]];
//    [self.l addGestureRecognizer:[[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(clickCategory:)]];

    
    
    [self.view addSubview: self.l];
    
    
 
    
    
}



-(IBAction)clickCategory:(UITapGestureRecognizer *)sender{
  
    NSLog(@"%d---,%d",UIGestureRecognizerStateEnded,sender.state);
    
    if (sender.state == UIGestureRecognizerStateEnded)
    {
        // handling code
    }
    
    
    [self.view endEditing:YES];
//    [self.textField endEditing:YES];
    
    [self.l becomeFirstResponder];
    
    UIMenuController *menu=[UIMenuController sharedMenuController];
    [menu setMenuVisible:NO animated:YES];

    UIMenuItem *item1=[[UIMenuItem alloc]initWithTitle:@"取消" action:@selector(one:)];
    UIMenuItem *item2=[[UIMenuItem alloc]initWithTitle:@"张3⃣️" action:@selector(one:)];
    UIMenuItem *item3=[[UIMenuItem alloc]initWithTitle:@"李4⃣️" action:@selector(one:)];

    menu.menuItems=[[NSArray alloc]initWithObjects:item1,item2,item3, nil];

    [menu setTargetRect:self.l.frame inView:self.l.superview];
    [menu setMenuVisible:YES animated:YES];
    menu.menuItems=nil;
    [self.l resignFirstResponder];
    
    
}
-(IBAction)one:(id)sender{
    
    
    UIPasteboard *p=[UIPasteboard generalPasteboard];
    p.string=@"111";
    
    
}
-(BOOL)canBecomeFirstResponder{
    return YES;
}


@end
