//
//  NSString+OVSSTimeAdditions.m
//  Core Data RunLog
//
//  Created by John's MacBook on 3/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "NSString+OVSSTimeAdditions.h"


@implementation NSString (NSString_OVSSTimeAdditions)
+(NSString *)OVSSStringWithHours:(int)hours Minutes:(int)minutes Seconds:(int)seconds{
    NSString *hourstring;
    NSString *minutestring;
    NSString *secondstring;
    NSString *final;
    if (hours<0 | minutes<0 | seconds<0) {
        return @"error: invalid time value entered.";
    }
    if (hours==0 & minutes==0 & seconds==0) {
        return @"";
    }
    
    if (hours==0) {
       hourstring=[NSString stringWithFormat:@""];
    } 
    
    if (hours>0) {
        hourstring=[NSString stringWithFormat:@"%d:",hours];
    }
    if (minutes==0) {
        minutestring=[NSString stringWithFormat:@""];
    }
    if (minutes>0 & hours==0) {
        minutestring=[NSString stringWithFormat:@"%d:",minutes];
    }
    if (minutes>0 & hours>0) {
        minutestring=[NSString stringWithFormat:@"0%d:",minutes];
    }
    if (minutes>10) {
        minutestring=[NSString stringWithFormat:@"%d:",minutes];
    }
    if (seconds<10) {
        secondstring=[NSString stringWithFormat:@"0%d",seconds];
    }
    if (seconds>=10) {
        secondstring=[NSString stringWithFormat:@"%d",seconds];
    }
    if (hours==0 & minutes==0 & seconds!=0) {
        return [NSString stringWithFormat:@"00:%@",secondstring];
    }
    if (hours==0) {
        final=[NSString stringWithFormat:@"%@%@",minutestring,secondstring];
        return final;
    }
    if (hours!=0 & seconds!=0 & minutes==0) {
        return [NSString stringWithFormat:@"%@00:%@",hourstring,secondstring];
    }
    if (minutes==0 & seconds==0) {
        return [NSString stringWithFormat:@"%@00:00",hourstring];
    }
    final=[NSString stringWithFormat:@"%@%@%@",hourstring,minutestring,secondstring];
    return final;
    
}
@end
