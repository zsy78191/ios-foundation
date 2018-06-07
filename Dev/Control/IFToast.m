//
//  IFToast.m
//  ios-foundation
//
//  Created by 张超 on 2018/6/6.
//  Copyright © 2018年 gerinn. All rights reserved.
//

#import "IFToast.h"
#import "UIView+ios_uikit.h"
#import "UIColor+cui_theme.h"
#import "NSObject+Functional.h"
#import "UIImage+cui.h"
@interface IFPannelView: UIView

@end

@implementation IFPannelView



@end

@implementation IFToast

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.margin = UIEdgeInsetsMake(frame.size.height - 200, 10, 10, 10);
//        self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.3];
//        [self cui_addGradientLayer];
//        [self cui_setGradientColors:@[UIColor.hex(@"50C9C3").a(0.4),UIColor.hex(@"96DEDA").a(0.4)]];
     
        
    }
    return self;
}

+ (instancetype)toast
{
    UIScreen*  s = [UIScreen mainScreen];
    IFToast * t = [[IFToast alloc] initWithFrame:s.bounds];
    return t;
}

- (void)showInView:(__kindof UIView *)contentView
{
    [self setFrame:contentView.bounds];
    [contentView addSubview:self];
    [contentView bringSubviewToFront:self];
    self.alpha = 0;
    [UIView animateWithDuration:0.24 animations:^{
        self.alpha = 1;
    }];
}

- (void)showText:(NSString*)text
{
    [self loadPannel];
}

- (void)loadPannel
{
    CUIRect* r = [CUIRect instanceWithRect:self.bounds];
    r.margin(self.margin);
    CGRect rect1 = r.rect;
 
    CGRect rect2 = ({
        CGRect r = rect1;
        r.origin.y += 50;
        r.size.height -=50;
        r;
    });
//    NSLog(@"%@",NSStringFromCGRect(rect1));
//    NSLog(@"%@",NSStringFromCGRect(rect2));
    IFPannelView* pannel = [[IFPannelView alloc] initWithFrame:rect2];
//    [pannel setBackgroundColor:[UIColor blackColor]];
    pannel.tag = 1001;
//    pannel.layer.cornerRadius = 10;
//    pannel.clipsToBounds = YES;
//    NSLog(@"%@",UIColor.k(@"color1"));
//    [pannel cui_addGradientLayer];
//    [pannel cui_setGradientColors:@[UIColor.k(@"color1"),UIColor.k(@"color2")]];
//    pannel.cui_shadow([UIColor blackColor].a(0.3), CGSizeMake(0, 4), 5);
    UIImageView* bg = [[UIImageView alloc] initWithFrame:pannel.bounds];
    UIImage* i =
    UIImage.beginGradient()
    .addColor(UIColor.grayColor)
    .setSize(rect2.size)
    .setRadius(15)
    .draw();
    i = [i resizableImageWithCapInsets:UIEdgeInsetsMake(15, 15, 15, 15)];
    [bg setAutoresizingMask:0xff];
    [bg setImage:i];
    [bg setContentMode:UIViewContentModeScaleToFill];
    [pannel addSubview:bg];
    [self addSubview:pannel];
    
    UITapGestureRecognizer* p = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismiss:)];
    [self setPannelHeight:pannel.height];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self setPannelHeight:200];
    });
    [pannel addGestureRecognizer:p];
    pannel.cui_shadow([UIColor blackColor].a(0.3), CGSizeMake(0, 5), 5);
}

- (void)setPannelHeight:(CGFloat)height
{
    UIView* pannel = [self viewWithTag:1001];
    CGRect r = pannel.frame;
    r.origin.y += r.size.height - height;
    r.size.height = height;
    [UIView animateWithDuration:0.24 delay:0.24 options:UIViewAnimationOptionCurveLinear animations:^{
        pannel.frame = r;
    } completion:^(BOOL finished) {
        
    }];
}

- (void)dismiss:(id)sender
{
    UIView* pannel = [self viewWithTag:1001];
    [UIView animateWithDuration:0.24 animations:^{
        pannel.transform = CGAffineTransformMakeTranslation(0, 10);
        pannel.alpha = 0;
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:0.24 animations:^{
            self.alpha = 0;
        } completion:^(BOOL finished) {
            [self removeFromSuperview];
        }];
    }];
}

- (void)dealloc
{
    NSLog(@"%s",__func__);
}

@end
