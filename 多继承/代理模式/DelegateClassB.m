//
//  DelegateClassB.m
//  多继承
//
//  Created by ehsy-pc on 2017/10/26.
//  Copyright © 2017年 ehsy-pc. All rights reserved.
//

#import "DelegateClassB.h"

@implementation DelegateClassB
-(id)init
{
    self = [super init];
    if(self){
        
        
        _timer = [NSTimer scheduledTimerWithTimeInterval:0.3 target:self selector:@selector(play) userInfo:nil repeats:YES];
        [_timer fire];
    }
    return self;
    
}

-(void)play
{
    [_delegateB testOfClassBWithParam:@"我就是从B传出去的值"];
    
}
@end
