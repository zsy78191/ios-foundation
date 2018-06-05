//
//  NSObject+ios_foundation.m
//  ios-foundation
//
//  Created by 张超 on 2018/6/5.
//  Copyright © 2018年 gerinn. All rights reserved.
//

#import "NSObject+ios_foundation.h"
@import YYKit;
@implementation NSObject (ios_foundation)

- (void)test
{
    
}

+ (id  _Nonnull (^)(NSDictionary * _Nonnull))instanceWithDictionary
{
    return ^(NSDictionary * d){
        return [[self class] modelWithDictionary:d];
    };
}

+ (id  _Nonnull (^)(NSString * _Nonnull))instanceWithJson
{
    return ^(NSString* json){
        return [[self class] modelWithJSON:json];
    };
}


@end
