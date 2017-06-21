//
//  CityTableViewCell.h
//  CityDemo
//
//  Created by 李海瑞 on 16/4/18.
//  Copyright © 2016年 李海瑞. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol DateCollectionViewCellDelegate1 <NSObject>

@optional

- (void)didSelectedTableview1:(NSIndexPath *)index withcollecttion1:(NSIndexPath *)collectionindex;

@end


@interface CityTableViewCell1 : UITableViewCell<UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>
@property (assign, nonatomic) id<DateCollectionViewCellDelegate1> delegate1;
@property (weak, nonatomic) IBOutlet UICollectionViewFlowLayout *Collayout1;
@property (weak,nonatomic) IBOutlet UICollectionView *Citycollectionview1;
@property (strong, nonatomic) NSIndexPath *index1;
@end
