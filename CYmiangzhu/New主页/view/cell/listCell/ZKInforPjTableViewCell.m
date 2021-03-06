//
//  ZKInforPjTableViewCell.m
//  CYmiangzhu
//
//  Created by 小腊 on 16/5/15.
//  Copyright © 2016年 WangXiaoLa. All rights reserved.
//

NSString *const ZKInforPjCellID = @"ZKInforPjCellID";

#import "ZKInforPjTableViewCell.h"
#import "ZKInforPjCollectionViewCell.h"

@implementation ZKInforPjTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc]init];
    [flowLayout setItemSize:CGSizeMake(50, 50)];//设置cell的尺寸
    [flowLayout setScrollDirection:
     UICollectionViewScrollDirectionVertical];//设置其布局方向
    flowLayout.minimumInteritemSpacing = 5;
    flowLayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    flowLayout.sectionInset = UIEdgeInsetsMake(5, 10, 5, 10);//设置其边界
    self.collectionView.collectionViewLayout = flowLayout;

    self.collectionView.dataSource = self;
    self.collectionView.delegate = self;
    self.collectionView.backgroundColor = [UIColor whiteColor];
    [self.collectionView registerNib:[UINib nibWithNibName:@"ZKInforPjCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:ZKInforPjCollectionViewCellID];

    
}

#pragma mark <UICollectionViewDataSource>


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return 3;
}

- (ZKInforPjCollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    ZKInforPjCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:ZKInforPjCollectionViewCellID forIndexPath:indexPath];
    return cell;
}


- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
