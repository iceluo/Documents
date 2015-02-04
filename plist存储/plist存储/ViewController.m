//
//  ViewController.m
//  plist存储
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

    NSArray *paths=NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask,YES);
    NSString *str=[paths firstObject];
    NSString *filePath=[str stringByAppendingPathComponent:@"ifFirst.plist"];
    //1
    NSDictionary* dic2=[NSDictionary dictionaryWithContentsOfFile:filePath];
    
    NSLog(@"%@----%@------%@",[dic2 class],[NSMutableDictionary class],[NSDictionary class]);
    
    if (![[dic2 valueForKey:@"ifFirst213"]isEqualToString:@"55"]) {
        //NSDictionary *dic=@{@"ifFirst":@"Y"};
        [dic2 setValue:@"55" forKey:@"ifFirst213"];
    //2
        [dic2 writeToFile:filePath atomically:YES];
        NSLog(@"第一次");
    }else{
        NSLog(@"不是第一次了哦");
    }
    


}


@end
