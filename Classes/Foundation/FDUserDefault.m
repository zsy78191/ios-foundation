//
//  FDUserDefault.m
//  ios-foundation
//
//  Created by 张超 on 2018/7/4.
//  Copyright © 2018年 gerinn. All rights reserved.
//

#import "FDUserDefault.h"

@implementation FDUserDefault

+ (void)setDefault:(NSDictionary *)dic
{
    NSUserDefaults* u = [NSUserDefaults standardUserDefaults];
    [u registerDefaults:dic];
}

+ (void)setObject:(id)obj key:(id)key
{
    NSUserDefaults* u = [NSUserDefaults standardUserDefaults];
    [u setObject:obj forKey:key];
    [u synchronize];
}

+ (id)objectOfKey:(id)key
{
    NSUserDefaults* u = [NSUserDefaults standardUserDefaults];
    return [u objectForKey:key];
}

+ (NSInteger)intOfKey:(id)key;
{
    NSUserDefaults* u = [NSUserDefaults standardUserDefaults];
    return [u integerForKey:key];
}
+ (BOOL)boolOfKey:(id)key;
{
    NSUserDefaults* u = [NSUserDefaults standardUserDefaults];
    return [u boolForKey:key];
}
+ (NSString*)stringOfKey:(id)key;
{
    NSUserDefaults* u = [NSUserDefaults standardUserDefaults];
    return [u stringForKey:key];
}
+ (NSArray*)arrayOfKey:(id)key;
{
    NSUserDefaults* u = [NSUserDefaults standardUserDefaults];
    return [u arrayForKey:key];
}

@end
