//
//  ViewController.m
//  PictureProcessingDemo
//
//  Created by 栗子 on 2018/6/27.
//  Copyright © 2018年 http://www.cnblogs.com/Lrx-lizi/.     https://github.com/lrxlizi/     https://blog.csdn.net/qq_33608748. All rights reserved.
//

#import "ViewController.h"

#import "CollectionViewCell.h"
#import "DataTool.h"

@interface ViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>

@property (weak, nonatomic) IBOutlet UIImageView *orginalImageV;
@property (weak, nonatomic) IBOutlet UIImageView *filterIV;
@property (weak, nonatomic) IBOutlet UILabel *textLB;
@property (strong ,nonatomic) UICollectionView *collectionView;
@property (strong ,nonatomic) NSMutableArray *datasourse;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.datasourse = [NSMutableArray array];
    self.datasourse = [DataTool pictureProcessData:self.orginalImageV.image];
    [self createUI];
    
   
    
}

- (void)createUI{
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc]init];
    layout.itemSize = CGSizeMake(70, 100);
    layout.minimumInteritemSpacing = 10;
    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    
    self.collectionView  = [[UICollectionView alloc]initWithFrame:CGRectMake(0,self.view.frame.size.height-110 , self.view.frame.size.width, 100) collectionViewLayout:layout];
    self.collectionView.dataSource = self;
    self.collectionView.delegate = self;
    self.collectionView.backgroundColor = [UIColor whiteColor];
    self.collectionView.showsVerticalScrollIndicator = NO;
    self.collectionView.showsHorizontalScrollIndicator = NO;
    [self.view addSubview:self.collectionView];
    [self.collectionView registerNib:[UINib nibWithNibName:@"CollectionViewCell" bundle:nil] forCellWithReuseIdentifier:@"CELLID"];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    if (self.datasourse.count) {
        return self.datasourse.count;
    }
    return 0;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CELLID" forIndexPath:indexPath];
    cell.contentdic = self.datasourse[indexPath.row];
    return cell;
    
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    NSDictionary *dic = self.datasourse[indexPath.row];
    UIImage *image = dic[@"image"];
    self.filterIV.image = image;
    self.textLB.text = [NSString stringWithFormat:@"%@",dic[@"name"]];
    
}

//- (void)assignment

@end
