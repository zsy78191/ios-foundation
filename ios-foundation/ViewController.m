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
//#import "UIApplication+ios_uikit.h"
//#import "UIDevice+ios_uikit.h"
#import "NSObject+ios_foundation.h"
#import "TestObj.h"
//#import "UIViewController+ios_uikit.h"
#import "GCDQuene.h"
//#import "IFToast.h"
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

    UIBarButtonItem* b = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(add:)];
    self.navigationItem.rightBarButtonItem = b;
    

}

- (void)add:(id)sender
{
    
//    IFToast* t = [IFToast toast];
//    [t showText:@""];
//    [t showInView:[UIApplication sharedApplication].keyWindow];
    
//    UIAlertController* a = [self actionsheet:@"提醒".l()
//                                   recommend:@"开始".l()
//                                      action:@"哈哈".l()
//                                      cancel:@"取消".l() block:^(NSInteger idx, __kindof UIViewController *vc) {
//                                          [vc hudWait:@"loading"];
//                                          dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//                                              [vc hudSuccess:@"finish"];
//                                          });
//                                      }];
//    [self showAsProver:a
//                  view:self.navigationController.navigationBar rect:CGRectMake(0, 0, 10, 10) arrow:UIPopoverArrowDirectionUp];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
