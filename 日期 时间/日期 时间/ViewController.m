//
//  ViewController.m
//  日期 时间
//
//  Created by luoliang on 15/1/23.
//  Copyright (c) 2015年 luoliang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)dd32:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];


    NSDateFormatter*dateFomatter=[[NSDateFormatter alloc] init];
    
    [dateFomatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    
//    NSString*currentTimeStr=@"2014-01-01 12:12:12";// 拿到结束时间的字符串
//    NSString*endTime=@"2014-02-01 12:12:12";  // 拿到结束时间的字符串
    
    NSLog(@"%@",[self testwithyear:2014 withMonth:12 withDay:28 withhour:0 withMinute:33 withSecond:0]);
 
}

-(NSDate *)testwithyear:(double)Year withMonth:(double)Month withDay:(double)Day withhour:(double)hour withMinute:(double)Minute withSecond:(double)Second{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:0]];
    [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss z"];
    NSDateComponents *compt = [[NSDateComponents alloc] init];
    [compt setYear:Year];
    [compt setMonth:Month];
    [compt setDay:Day];
    [compt setHour:hour];
    [compt setMinute:Minute];
    [compt setSecond:Second];
    NSCalendar *calendar = [NSCalendar currentCalendar];
    [calendar setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:0]];
    NSDate *date = [calendar dateFromComponents:compt];
    return date;
};





- (IBAction)dd32:(id)sender {
}
@end
