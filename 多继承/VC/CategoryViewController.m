//
//  CategoryViewController.m
//  多继承
//
//  Created by ehsy-pc on 2017/10/26.
//  Copyright © 2017年 ehsy-pc. All rights reserved.
//

#import "CategoryViewController.h"
#import "NSString+Addition.h"
@interface CategoryViewController ()

@end

@implementation CategoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    //调用类别中拓展的方法
    NSLog(@"%@",[NSString getDocumentsPath]);//test
    // Do any additional setup after loading the view.
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
