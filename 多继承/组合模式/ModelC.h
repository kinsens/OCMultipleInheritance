//
//  ModelC.h
//  多继承
//
//  Created by ehsy-pc on 2017/10/25.
//  Copyright © 2017年 ehsy-pc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ModelA.h"
#import "ModelB.h"
@interface ModelC : NSObject
{
    ModelA *modelA;
    ModelB *modelB;
}
-(id)initWithModelA:(ModelA *)A modelB:(ModelB *)B;
-(void)methodA;
-(void)methodB;
@end
