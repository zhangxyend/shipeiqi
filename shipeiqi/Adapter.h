//
//  Adapter.h
//  shipeiqi
//
//  Created by zhang on 2018/8/16.
//  Copyright © 2018年 zhang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Adapter : NSObject<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,strong)NSMutableArray * array;
@property(nonatomic,strong)NSString * identifier;
@end
