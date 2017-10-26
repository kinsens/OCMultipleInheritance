//
//  CombinaViewController.m
//  多继承
//
//  Created by ehsy-pc on 2017/10/25.
//  Copyright © 2017年 ehsy-pc. All rights reserved.
//

#import "CombinaViewController.h"
#import "ModelC.h"
@interface CombinaViewController ()

@end

@implementation CombinaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"组合方式";
    [self zuhemoshi];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
/**
 组合模式
 */
-(void)zuhemoshi

{
    ModelA *A = [[ModelA alloc] init];
    ModelB *B = [[ModelB alloc] init];
    
    ModelC *C = [[ModelC alloc] initWithModelA:A modelB:B];
    [C methodA];
    [C methodB];
    
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
