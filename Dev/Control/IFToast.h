//
//  IFToast.h
//  ios-foundation
//
//  Created by 张超 on 2018/6/6.
//  Copyright © 2018年 gerinn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IFToast : UIView

@property (nonatomic, assign) UIEdgeInsets margin;
+ (instancetype)toast;
- (void)showInView:(__kindof UIView*)contentView;
- (void)showText:(NSString*)text;

@end
