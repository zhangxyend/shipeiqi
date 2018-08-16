//
//  ViewController.m
//  shipeiqi
//
//  Created by zhang on 2018/8/16.
//  Copyright © 2018年 zhang. All rights reserved.
//

#import "ViewController.h"
#import "MyAdapter.h"
@interface ViewController ()
@property(nonatomic,strong) MyAdapter * adapter;
@property(nonatomic,strong) Adapter * sadapter;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   MyAdapter * adapter =[[MyAdapter alloc]init];
    UITableView * table = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width*0.5, self.view.bounds.size.height) style:UITableViewStylePlain];
    [self.view addSubview:table];
   
    table.delegate = adapter;
    table.dataSource = adapter;
    adapter.array = (NSMutableArray*)@[@"1",@"3",@"2"];
    _adapter = adapter;
    
    
    _sadapter = [[Adapter alloc]init];
    UITableView * table1 = [[UITableView alloc]initWithFrame:CGRectMake(self.view.bounds.size.width*0.5, 0, self.view.bounds.size.width*0.5, self.view.bounds.size.height) style:UITableViewStylePlain];
    [self.view addSubview:table1];
    table1.delegate = _sadapter;
    table1.dataSource = _sadapter;
    _sadapter.array =(NSMutableArray*)@[@"1",@"3",@"2",@"4"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
