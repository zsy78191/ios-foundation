//
//  ViewController.m
//  ios-foundation
//
//  Created by 张超 on 2018/6/4.
//  Copyright © 2018年 gerinn. All rights reserved.
//

#import "ViewController.h"
#import "NSString+ios_foundation.h"
#import "NSArray+ios_foundation.h"
#import "UIApplication+ios_uikit.h"
#import "UIDevice+ios_uikit.h"
#import "NSObject+ios_foundation.h"
#import "TestObj.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    UIApplication* a = [UIApplication sharedApplication];
//    NSLog(@"%@",a.bundleName());
//    NSLog(@"%@",a.bundleID());
//    NSLog(@"%@",a.buildVersion());
//    NSLog(@"%@",a.version());
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        NSLog(@"%@",@([UIDevice currentDevice].iPad()));
//    });
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
