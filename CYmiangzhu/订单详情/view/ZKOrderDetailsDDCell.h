//
//  ZKOrderDetailsDDCell.h
//  CYmiangzhu
//
//  Created by 王小腊 on 16/5/17.
//  Copyright © 2016年 WangXiaoLa. All rights reserved.
//
extern NSString *const ZKOrderDetailsDDCellID;
#import <UIKit/UIKit.h>
@class ZKOrderDetailsMode;

@interface ZKOrderDetailsDDCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIButton *ewmButton;

@property(nonatomic, strong) ZKOrderDetailsMode *dataList;
@end
