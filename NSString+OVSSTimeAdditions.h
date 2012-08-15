//
//  NSString+OVSSTimeAdditions.h
//  Core Data RunLog
//
//  Created by John's MacBook on 3/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSString (NSString_OVSSTimeAdditions)
+(NSString *)OVSSStringWithHours:(int)hours Minutes:(int)minutes Seconds:(int)seconds;
@end
