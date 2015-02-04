//
//  ViewController.m
//  02-panduanwangluo
//
//  Created by luoliang on 15/1/29.
//  Copyright (c) 2015年 luoliang. All rights reserved.
//

#import "ViewController.h"
#import "Reachability.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];



    [self dd];

}

- (void)dd {
    
    // Allocate a reachability object
    Reachability* reach = [Reachability reachabilityWithHostname:@"www.baidu.com"];
    
    // Set the blocks
    reach.reachableBlock = ^(Reachability*reach)
    {
        // keep in mind this is called on a background thread
        // and if you are updating the UI it needs to happen
        // on the main thread, like this:
        
        dispatch_async(dispatch_get_main_queue(), ^{
            NSLog(@"通了!");
        });
    };
    
    reach.unreachableBlock = ^(Reachability*reach)
    {
        NSLog(@"不通!");
    };
    
    // Start the notifier, which will cause the reachability object to retain itself!
    [reach startNotifier];
}

@end
