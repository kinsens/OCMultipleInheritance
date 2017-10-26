//
//  ProtocolViewController.m
//  多继承
//
//  Created by ehsy-pc on 2017/10/25.
//  Copyright © 2017年 ehsy-pc. All rights reserved.
//

#import "ProtocolViewController.h"
#import "PersonA.h"
#import "PersonB.h"
@interface ProtocolViewController ()<PersonAProtocol,PersonBProtocol>

@end

@implementation ProtocolViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"协议";
    
    [self methodA];
    [self methodB];
    
    // Do any additional setup after loading the view.
}
-(void)methodA{

    NSLog(@"methodA");
    
}
-(void)methodB
{
    NSLog(@"methodB");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
