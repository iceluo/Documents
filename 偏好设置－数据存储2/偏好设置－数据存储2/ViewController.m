//
//  ViewController.m
//  偏好设置－数据存储2
//
//  Created by luoliang on 15/2/4.
//  Copyright (c) 2015年 luoliang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    NSUserDefaults *user=[NSUserDefaults standardUserDefaults];

}

-(IBAction)aaa:(id)sender{
    
    NSUserDefaults *user=[NSUserDefaults standardUserDefaults];
    [user setObject:@"hao" forKey:@"name"];
    [user setBool:NO forKey:@"isTure"];
    [user synchronize];
    
    
}
-(IBAction)bbb:(id)sender{
    
    NSUserDefaults *user=[NSUserDefaults standardUserDefaults];
//    NSLog(@"%@",[user objectForKey:@"name"]);
    NSLog(@"%@",[user dictionaryRepresentation]);
    
}
-(IBAction)ccc:(id)sender{
    
    NSUserDefaults *userDefatluts = [NSUserDefaults standardUserDefaults];
    NSDictionary *dictionary = [userDefatluts dictionaryRepresentation];
    
//    for(NSString* key in [dictionary allKeys]){
//        [userDefatluts removeObjectForKey:key];
//    }
    
    for( id obj in dictionary){
       
        [userDefatluts removeObjectForKey:obj];
        NSLog(@"%@",obj);
    }
    
    
    [userDefatluts synchronize];
    
    
    
}
//取消2
-(IBAction)ddd:(id)sender{
    NSString *appDomain = [[NSBundle mainBundle] bundleIdentifier];
    NSUserDefaults *userDefatluts = [NSUserDefaults standardUserDefaults];
    NSLog(@"%@ \n persist:%@",appDomain,[userDefatluts persistentDomainForName:appDomain]);
    [userDefatluts removePersistentDomainForName:appDomain];
   
}
//读取2
-(IBAction)quxiao:(id)sender{
    NSString *appDomain = [[NSBundle mainBundle] bundleIdentifier];
    NSUserDefaults *userDefatluts = [NSUserDefaults standardUserDefaults];
    NSLog(@"%@",[userDefatluts persistentDomainForName:appDomain]);

}


@end
