//
//  UIApplication+ios_uikit.m
//  ios-foundation
//
//  Created by 张超 on 2018/6/5.
//  Copyright © 2018年 gerinn. All rights reserved.
//

#import "UIApplication+ios_uikit.h"
@import YYKit;
@implementation UIApplication (ios_uikit)

- (void)test
{
    
}

- (NSURL *(^)(void))doucumentDictionary
{
    return ^{
        return [self documentsURL];
    };
}

- (NSString *(^)(void))bundleName
{
    return ^{
        return [self appBundleName];
    };
}

- (NSString *(^)(void))bundleID
{
    return ^{
        return [self appBundleID];
    };
}

- (NSString *(^)(void))buildVersion
{
    return ^{
        return [self appBuildVersion];
    };
}

- (NSString *(^)(void))version
{
    return ^{
        return [self appVersion];
    };
}



@end
