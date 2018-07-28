//
//  CollectionViewCell.m
//  PictureProcessingDemo
//
//  Created by 栗子 on 2018/6/27.
//  Copyright © 2018年 http://www.cnblogs.com/Lrx-lizi/.     https://github.com/lrxlizi/     https://blog.csdn.net/qq_33608748. All rights reserved.
//

#import "CollectionViewCell.h"

@implementation CollectionViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setContentdic:(NSDictionary *)contentdic{
    _contentdic = contentdic;
    self.imageIV.image = contentdic[@"image"];
    self.nameLb.text = [NSString stringWithFormat:@"%@",contentdic[@"name"]];
    
}
@end
