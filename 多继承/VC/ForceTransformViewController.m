//
//  ForceTransformViewController.m
//  多继承
//
//  Created by ehsy-pc on 2017/10/25.
//  Copyright © 2017年 ehsy-pc. All rights reserved.
//

#import "ForceTransformViewController.h"
#import "Doctor.h"
#import "Teacher.h"
@interface ForceTransformViewController ()

@end
@implementation ForceTransformViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"强制转换";
    [self forceTransform];
    // Do any additional setup after loading the view.
}
/**
 导入头文件 强制类型转换
 */
-(void)forceTransform
{
    Teacher *teacher = [[Teacher alloc] init];
    [(Doctor *)teacher method1];//其实运行时这里的实例变量 teacher所属类 已经变成Doctor的，个人觉得和多继承概念没什么关系
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
