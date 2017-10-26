//
//  DelegateClassA.h
//  多继承
//
//  Created by ehsy-pc on 2017/10/26.
//  Copyright © 2017年 ehsy-pc. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol TestDelegateOfClassA<NSObject>
-(void)testOfClassAWithParam:(NSString *)testStr;
@end;
@interface DelegateClassA : NSObject
@property (nonatomic,weak) id<TestDelegateOfClassA>delegateA;

@property (nonatomic,strong)NSTimer *timer;
@end
