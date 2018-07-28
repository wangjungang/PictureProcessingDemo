//
//  DataTool.m
//  PictureProcessingDemo
//
//  Created by 栗子 on 2018/6/27.
//  Copyright © 2018年 http://www.cnblogs.com/Lrx-lizi/.     https://github.com/lrxlizi/     https://blog.csdn.net/qq_33608748. All rights reserved.
//

#import "DataTool.h"
#import "PictureProcessTool.h"
#import "ColorMatrix.h"

@implementation DataTool

+(NSMutableArray *)pictureProcessData:(UIImage *)image{
    NSMutableArray *datasourse = [NSMutableArray array];
    NSDictionary *dic = @{@"image":image,@"name":@"原图"};
    [datasourse addObject:dic];
    NSDictionary *diclomo = @{@"image":[PictureProcessTool imageWithImage:image withColorMatrix:colormatrix_lomo],@"name":@"LOMO"};
    [datasourse addObject:diclomo];
    NSDictionary *dicheibai = @{@"image":[PictureProcessTool imageWithImage:image withColorMatrix:colormatrix_heibai],@"name":@"黑白"};
    [datasourse addObject:dicheibai];
    NSDictionary *dicRetro = @{@"image":[PictureProcessTool imageWithImage:image withColorMatrix:colormatrix_huajiu],@"name":@"复古"};
    [datasourse addObject:dicRetro];
    NSDictionary *dicgete = @{@"image":[PictureProcessTool imageWithImage:image withColorMatrix:colormatrix_gete],@"name":@"哥特"};
    [datasourse addObject:dicgete];
    NSDictionary *dicrui = @{@"image":[PictureProcessTool imageWithImage:image withColorMatrix:colormatrix_ruise],@"name":@"锐化"};
    [datasourse addObject:dicrui];
    NSDictionary *dicdany = @{@"image":[PictureProcessTool imageWithImage:image withColorMatrix:colormatrix_danya],@"name":@"淡雅"};
    [datasourse addObject:dicdany];
    NSDictionary *dicjiuhong = @{@"image":[PictureProcessTool imageWithImage:image withColorMatrix:colormatrix_jiuhong],@"name":@"酒红"};
    [datasourse addObject:dicjiuhong];
    NSDictionary *qingning = @{@"image":[PictureProcessTool imageWithImage:image withColorMatrix:colormatrix_qingning],@"name":@"清宁"};
    [datasourse addObject:qingning];
    NSDictionary *langman = @{@"image":[PictureProcessTool imageWithImage:image withColorMatrix:colormatrix_langman],@"name":@"浪漫"};
    [datasourse addObject:langman];
    NSDictionary *guangyun = @{@"image":[PictureProcessTool imageWithImage:image withColorMatrix:colormatrix_guangyun],@"name":@"光晕"};
    [datasourse addObject:guangyun];
    NSDictionary *landiao = @{@"image":[PictureProcessTool imageWithImage:image withColorMatrix:colormatrix_landiao],@"name":@"蓝调"};
    [datasourse addObject:landiao];
    NSDictionary *menghuan = @{@"image":[PictureProcessTool imageWithImage:image withColorMatrix:colormatrix_menghuan],@"name":@"梦幻"};
    [datasourse addObject:menghuan];
    NSDictionary *yese = @{@"image":[PictureProcessTool imageWithImage:image withColorMatrix:colormatrix_yese],@"name":@"夜色"};
    [datasourse addObject:yese];
    return datasourse;
}

@end
