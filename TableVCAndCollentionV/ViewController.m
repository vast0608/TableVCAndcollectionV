//
//  ViewController.m
//  CityDemo
//
//  Created by 李海瑞 on 16/4/18.
//  Copyright © 2016年 李海瑞. All rights reserved.
//

#import "ViewController.h"
#import "CityTableViewCell.h"
#import "CityTableViewCell1.h"
#define CityCellStr  @"CityTableViewCell"
#define CityCellStr1  @"CityTableViewCell1"
#import "ABCViewController.h"
@interface ViewController ()<DateCollectionViewCellDelegate,DateCollectionViewCellDelegate1>

@property (weak, nonatomic) IBOutlet UITableView *CityTbleview;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.CityTbleview registerNib:[UINib nibWithNibName:CityCellStr bundle:nil] forCellReuseIdentifier:CityCellStr];
    [self.CityTbleview registerNib:[UINib nibWithNibName:CityCellStr1 bundle:nil] forCellReuseIdentifier:CityCellStr1];
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section==0) {
        CityTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:CityCellStr];
        cell.index=indexPath;
        cell.delegate=self;
        [cell.Citycollectionview reloadData];
        return cell;
        
    }
        CityTableViewCell1 *cell1=[tableView dequeueReusableCellWithIdentifier:CityCellStr1];
        cell1.index1=indexPath;
        cell1.delegate1=self;
        [cell1.Citycollectionview1 reloadData];
        return cell1;
        
    
    
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 250;
}
-(void)didSelectedTableview:(NSIndexPath *)index withcollecttion:(NSIndexPath *)collectionindex
{
    NSLog(@"--+++--%ld -+++--%ld",index.section,collectionindex.row);
    
}
-(void)didSelectedTableview1:(NSIndexPath *)index withcollecttion1:(NSIndexPath *)collectionindex
{
    NSLog(@"----%ld ---%ld",index.section,collectionindex.row);
    if (collectionindex.row == 0) {
        ABCViewController *aa = [[ABCViewController alloc]init];
        [self presentViewController:aa animated:YES completion:nil];
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
