//
//  ViewController.m
//  NSLocalizedString
//
//  Created by luoliang on 15/1/29.
//  Copyright (c) 2015年 luoliang. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad {
   
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];//得到当前用户默认设置
    NSArray *language = [defaults objectForKey:@"AppleLauages"];//获得设备支持的所有语言，
    NSString *currentLanguage = [language objectAtIndex:0];//数组第一位的是用户当前使用的语言。
    [defaults setObject:currentLanguage forKey:@"user_lang_string"];//设置用户当前语言为当前系统语言。
    
    NSLog(@"\n%@\n%@\n%@",defaults,language,currentLanguage);
    
    self.title = NSLocalizedString(@"name",nil);
    
    NSLog(@"\nmy title is :%@",self.title);
    
    
    
}

@end
