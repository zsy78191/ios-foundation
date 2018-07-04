//
//  FDUserDefault.h
//  ios-foundation
//
//  Created by 张超 on 2018/7/4.
//  Copyright © 2018年 gerinn. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FDUserDefault : NSObject

+ (void)setDefault:(NSDictionary*)dic;
+ (void)setObject:(id)obj key:(id)key;
+ (id)objectOfKey:(id)key;
+ (NSInteger)intOfKey:(id)key;
+ (BOOL)boolOfKey:(id)key;
+ (NSString*)stringOfKey:(id)key;
+ (NSArray*)arrayOfKey:(id)key;

@end
