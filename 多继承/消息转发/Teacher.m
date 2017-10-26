//
//  Teacher.m
//  多继承
//
//  Created by ehsy-pc on 2017/10/25.
//  Copyright © 2017年 ehsy-pc. All rights reserved.
//

#import "Teacher.h"

@implementation Teacher
-(id)forwardingTargetForSelector:(SEL)aSelector
{
    Doctor *doctor = [[Doctor alloc] init];
    if([doctor respondsToSelector:aSelector]){
        return doctor;
    }
    return nil;
}
@end
