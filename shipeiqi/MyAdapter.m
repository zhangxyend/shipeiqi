//
//  MyAdapter.m
//  shipeiqi
//
//  Created by zhang on 2018/8/16.
//  Copyright © 2018年 zhang. All rights reserved.
//

#import "MyAdapter.h"

@implementation MyAdapter

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:self.identifier];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:self.identifier];
    }
    cell.textLabel.text = [self.array objectAtIndex:indexPath.row];
    return cell;
}
@end
