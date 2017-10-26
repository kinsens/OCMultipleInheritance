//
//  ViewController.m
//  多继承
//
//  Created by ehsy-pc on 2017/10/25.
//  Copyright © 2017年 ehsy-pc. All rights reserved.
//

#import "ViewController.h"
#import "MsgForwardViewController.h"
#import "CombinaViewController.h"
#import "ProtocolViewController.h"
#import "DelegateViewController.h"
#import "ForceTransformViewController.h"
#import "CategoryViewController.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) NSArray *arrTitles;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _arrTitles = @[@"消息转发",@"组合模式",@"协议委托",@"代理模式",@"强制转换",@"类别"];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"OC_多继承";
    [self createTableView];
//    [self zuhemoshi];
    
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)createTableView
{
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
}
#pragma tableViewDataSource 代理方法
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 6;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    cell.textLabel.text = _arrTitles[indexPath.section];

    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
    
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    if(indexPath.section==0){//消息转发
        MsgForwardViewController *VC = [[MsgForwardViewController alloc] init];
        [self.navigationController pushViewController:VC animated:YES];
    }else if(indexPath.section==1){//组合模式
        CombinaViewController *VC = [[CombinaViewController alloc] init];
        [self.navigationController pushViewController:VC animated:YES];
    }else if(indexPath.section==2){//协议
        ProtocolViewController *VC = [[ProtocolViewController alloc] init];
        [self.navigationController pushViewController:VC animated:YES];
    }else if(indexPath.section==3){//代理
        DelegateViewController *VC = [[DelegateViewController alloc] init];
        [self.navigationController pushViewController:VC animated:YES];
    }else if(indexPath.section==4){//强制转换
        ForceTransformViewController *VC = [[ForceTransformViewController alloc] init];
        [self.navigationController pushViewController:VC animated:YES];
    }else{
        CategoryViewController *vc = [[CategoryViewController alloc ] init];
        [self.navigationController pushViewController:vc animated:YES];
    }
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
