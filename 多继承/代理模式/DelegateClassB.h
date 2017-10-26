//
//  DelegateClassB.h
//  多继承
//
//  Created by ehsy-pc on 2017/10/26.
//  Copyright © 2017年 ehsy-pc. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol TestDelegateOfClassB<NSObject>
-(void)testOfClassBWithParam:(NSString *)testStr;
@end;
@interface DelegateClassB : NSObject

@property (nonatomic,weak) id<TestDelegateOfClassB>delegateB;
@property (nonatomic,strong)NSTimer *timer;
@end
