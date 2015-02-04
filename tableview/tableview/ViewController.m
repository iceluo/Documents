//
//  ViewController.m
//  tableview
//
//  Created by luoliang on 15/2/4.
//  Copyright (c) 2015年 luoliang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.tableView.dataSource=self;
    
    UIView *view=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 320, 50)];
    view.backgroundColor=[UIColor orangeColor];
    self.tableView.tableHeaderView=view;
    UIView *view2=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 320, 100)];
    view2.backgroundColor=[UIColor groupTableViewBackgroundColor];
    self.tableView.tableFooterView=view2;

}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 33;
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
