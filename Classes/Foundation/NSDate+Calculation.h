//
//  NSDate+Calculation.h
//  dev-kit-demo
//
//  Created by 张超 on 2018/5/31.
//  Copyright © 2018年 gerinn. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (Calculation)


/**
 公历计算固定日期差的日期

 @param unit 计算单位
 @param value 差值
 @return 公历日期
 */
- (NSDate*)calculate:(NSCalendarUnit)unit value:(NSInteger)value;

/**
 农历计算固定日期差的日期
 
 @param unit 计算单位
 @param value 差值
 @return 公历日期
 */
- (NSDate*)lunar_calculate:(NSCalendarUnit)unit value:(NSInteger)value;


/**
 计算日期差

 @param date 目的日期
 @param unit 统计单位
 @return 计数值
 */
- (NSInteger)calculateFromDate:(NSDate*)date unit:(NSCalendarUnit)unit;

@end
