//
//  CityTableViewCell.m
//  CityDemo
//
//  Created by 李海瑞 on 16/4/18.
//  Copyright © 2016年 李海瑞. All rights reserved.
//

#import "CityTableViewCell1.h"
#import "PlaceCell1.h"
#define CellID1 @"PlaceCell1"

@implementation CityTableViewCell1

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    self.Citycollectionview1.delegate=self;
    self.Citycollectionview1.dataSource=self;
    [self.Citycollectionview1 registerNib:[UINib nibWithNibName:CellID1 bundle:nil] forCellWithReuseIdentifier:CellID1];
}
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 6;
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    PlaceCell1 *cell1=[collectionView dequeueReusableCellWithReuseIdentifier:CellID1 forIndexPath:indexPath];
    cell1.placelabel1.text=[NSString stringWithFormat:@"第%ld部分 第%ld个",self.index1.section,indexPath.row];
    
    return cell1;
}
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CGSize size = CGSizeMake(100, 60);
    
    return size;
}
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    if (self.delegate1!=nil &&[self.delegate1 respondsToSelector:@selector(didSelectedTableview1:withcollecttion1:)]) {
        [self.delegate1 didSelectedTableview1:self.index1 withcollecttion1:indexPath];
    }
    
    
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
