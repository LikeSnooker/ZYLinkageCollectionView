//
//  ViewController.m
//  ZYLinkageDemo
//
//  Created by 雨张 on 2018/5/29.
//  Copyright © 2018年 雨张. All rights reserved.
//

#import "ViewController.h"
#import "ZYCollectionView.h"
#import "CustomCell.h"
#define SCREEN_W [UIScreen mainScreen].bounds.size.width
#define SCREEN_H [UIScreen mainScreen].bounds.size.height
@interface ViewController ()<ZYCollectionViewDelegate,ZYCollectionViewDataSource>
@property (nonatomic,readonly) ZYCollectionView * collectionView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _collectionView = [[ZYCollectionView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_W, SCREEN_H)];
    self.collectionView.delegate   = self;
    self.collectionView.dataSource = self;
    [self.collectionView registerClass:[CustomCell class] forCellWithReuseIdentifier:@"CELL"];
    UIButton * btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 60, 30)];
    btn.backgroundColor = [UIColor grayColor];
    
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.collectionView];
    
    [self.view addSubview:btn];
    // Do any additional setup after loading the view, typically from a nib.
}


-(void)btnClick
{
    if(self.collectionView.style == ZYCollectionViewStyleOneItemPerRow)
        [self.collectionView setStyle:ZYCollectionViewStyleTwoItemPerRow];
    else
        [self.collectionView setStyle:ZYCollectionViewStyleOneItemPerRow];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark ZYCollectionVIewDataSource
- (NSInteger)collectionView:(ZYCollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 10;
}
- (NSInteger)numberOfSectionsInCollectionView:(ZYCollectionView *)collectionView
{
    return 10;
}

- (__kindof UICollectionViewCell *)collectionView:(ZYCollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CustomCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CELL" forIndexPath:indexPath];
    cell.textLabel.text = [NSString stringWithFormat:@"cell %ld",(long)indexPath.row];
    return cell;
}
/*
 * 返回不同section 的 title,此title 是右侧列表的 section title,同时将作为左侧列表cell 的文本内容
 */
- (nullable NSString *)collectionView:(ZYCollectionView *)collectionView titleForHeaderInSection
                                     :(NSInteger)section
{
    return [NSString stringWithFormat:@"this is section %ld",section];
}

/*
 * 返回section 的 image ,这个image 将显示在左侧列表的对应cell中
 */
- (nullable UIImage  *)collectionView:(ZYCollectionView *)collectionView imageForHeaderInSection
                                     :(NSInteger)section
{
    return nil;
}
@end
