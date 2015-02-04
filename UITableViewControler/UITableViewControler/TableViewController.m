//
//  ViewController.m
//  UITableViewControler
//
//  Created by luoliang on 15/2/4.
//  Copyright (c) 2015年 luoliang. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.dataSource=self;
    
    UIView *view=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 320, 50)];
    view.backgroundColor=[UIColor orangeColor];
    self.tableView.tableHeaderView=view;
    UIView *view2=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 320, 100)];
    view2.backgroundColor=[UIColor groupTableViewBackgroundColor];
    self.tableView.tableFooterView=view2;
    
    
    self.refreshControl=[[UIRefreshControl alloc]initWithFrame:CGRectMake(0, 0, 320, 100)];
   [self.refreshControl addTarget:self action:@selector(load:) forControlEvents:UIControlEventValueChanged];
    self.refreshControl.backgroundColor=[UIColor redColor];
    
}

-(IBAction)load:(id)sender{
 
    
    
    NSLog(@"  reload  ");
    
//    self.navigationItem.rightBarButtonItem.enabled = NO;
//    
//    NSURLSessionTask *task = [Post globalTimelinePostsWithBlock:^(NSArray *posts, NSError *error) {
//        if (!error) {
//            self.posts = posts;
//            [self.tableView reloadData];
//        }
//    }];
//    
//    [UIAlertView showAlertViewForTaskWithErrorOnCompletion:task delegate:nil];
//    [self.refreshControl setRefreshingWithStateOfTask:task];
    
   [self.refreshControl endRefreshing];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 3;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString * identifyName=@"uitableView";
    UITableViewCell * cell=[tableView dequeueReusableCellWithIdentifier:identifyName];
    if (!cell) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifyName];
        
    }
    //    cell.backgroundColor=[UIColor redColor];
    return cell;
}

@end