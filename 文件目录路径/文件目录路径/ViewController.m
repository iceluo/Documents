//
//  ViewController.m
//  文件目录路径
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

    [self test02];

}


-(void)test01{
    // 获取沙盒主目录路径
    NSString *homeDir = NSHomeDirectory();
    // 获取Documents目录路径
    NSArray *paths1 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *docDir = [paths1 objectAtIndex:0];
    // 获取Caches目录路径
    NSArray *paths2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
    
    NSLog(@"%@",paths2);
    NSString *cachesDir = [paths2 objectAtIndex:0];
    // 获取tmp目录路径
    NSString *tmpDir =  NSTemporaryDirectory();
    NSLog(@"\n1-%@,\n2-%@,\n3-%@,\n4-%@",homeDir,docDir,cachesDir,tmpDir);
    
    NSArray *paths3=NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSLog(@"%@",paths3);
}
-(void)test02{
    NSArray *paths=NSSearchPathForDirectoriesInDomains(NSDocumentDirectory
                                                       , NSUserDomainMask
                                                       , YES);
    NSLog(@"Get document path: %@",[paths objectAtIndex:0]);
    
    NSString *fileName=[[paths objectAtIndex:0] stringByAppendingPathComponent:@"myFile"];
    NSString *content=@"a";
    NSData *contentData=[content dataUsingEncoding:NSASCIIStringEncoding];
    if ([contentData writeToFile:fileName atomically:YES]) {
        NSLog(@">>write ok.");
    }
}

@end
