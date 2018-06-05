//
//  NSObject+ios_foundation.h
//  ios-foundation
//
//  Created by 张超 on 2018/6/5.
//  Copyright © 2018年 gerinn. All rights reserved.
//

#import <Foundation/Foundation.h>


NS_ASSUME_NONNULL_BEGIN
@interface NSObject (ios_foundation)
{
    
}

@property (nonatomic, readonly, class) id (^instanceWithDictionary)(NSDictionary* d);
@property (nonatomic, readonly, class) id (^instanceWithJson)(NSString* json);

@end
NS_ASSUME_NONNULL_END
