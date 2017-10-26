//
//  MsgForwardViewController.m
//  多继承
//
//  Created by ehsy-pc on 2017/10/25.
//  Copyright © 2017年 ehsy-pc. All rights reserved.
//

#import "MsgForwardViewController.h"
#import "Teacher.h"
@interface MsgForwardViewController ()

@end

@implementation MsgForwardViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"消息转发";
    [self msg_forwarding];
    // Do any additional setup after loading the view.
}

/**
 消息转发
 */
-(void)msg_forwarding
{
    Teacher *teacher = [[Teacher alloc] init];
    [teacher performSelector:@selector(method1)];
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
