//
//  CollectionViewCell.h
//  PictureProcessingDemo
//
//  Created by 栗子 on 2018/6/27.
//  Copyright © 2018年 http://www.cnblogs.com/Lrx-lizi/.     https://github.com/lrxlizi/     https://blog.csdn.net/qq_33608748. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imageIV;
@property (weak, nonatomic) IBOutlet UILabel *nameLb;

@property (nonatomic,strong)NSDictionary *contentdic;


@end
