//
//  ModelC.m
//  多继承
//
//  Created by ehsy-pc on 2017/10/25.
//  Copyright © 2017年 ehsy-pc. All rights reserved.
//

#import "ModelC.h"
@implementation ModelC
-(id)initWithModelA:(ModelA *)A modelB:(ModelB *)B
{
    self = [super init];
    if(self){
        modelA =A;//[A copy];
        modelB =B;//[B copy];;
        
    }
    return self;

}
-(void)methodA
{
    [modelA mothodOfModelA];
}
-(void)methodB
{
    [modelB mothodOfModelB];
}
@end
