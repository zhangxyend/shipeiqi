//
//  Adapter.m
//  shipeiqi
//
//  Created by zhang on 2018/8/16.
//  Copyright © 2018年 zhang. All rights reserved.
//

#import "Adapter.h"
@interface Adapter()
@end
@implementation Adapter
- (instancetype)init
{
    self = [super init];
    if (self) {
        _array = [[NSMutableArray alloc]init];
    }
    return self;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _array.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:_identifier];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:_identifier];
    }
    cell.textLabel.text = [_array objectAtIndex:indexPath.row];
    return cell;
}
@end
