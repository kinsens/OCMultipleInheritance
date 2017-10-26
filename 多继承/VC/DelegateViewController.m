//
//  DelegateViewController.m
//  多继承
//
//  Created by ehsy-pc on 2017/10/25.
//  Copyright © 2017年 ehsy-pc. All rights reserved.
//

#import "DelegateViewController.h"
#import "DelegateClassA.h"
#import "DelegateClassB.h"
@interface DelegateViewController ()<TestDelegateOfClassA,TestDelegateOfClassB>
@property (nonatomic, strong) DelegateClassA *delegateClassA;
@property (nonatomic, strong) DelegateClassB *delegateClassB;
@end

@implementation DelegateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    _delegateClassA = [[DelegateClassA alloc] init];
    
    _delegateClassA.delegateA= self;//此处不要忘记设置代理
    _delegateClassB = [[DelegateClassB alloc] init];
    
    _delegateClassB.delegateB = self;
    
    self.title = @"代理";
    
    // Do any additional setup after loading the view.
}

//Controller只要在定义DelegateClassA的时候指定其代理为自身，就可以知道Timer的每次执行：
-(void)testOfClassAWithParam:(NSString *)testStr
{
    NSLog(@"testStr==%@",testStr);
}
-(void)testOfClassBWithParam:(NSString *)testStr
{
    NSLog(@"testStr==%@",testStr);
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
