//
//  PictureProcessTool.h
//  PictureProcessingDemo
//
//  Created by 栗子 on 2018/6/27.
//  Copyright © 2018年 http://www.cnblogs.com/Lrx-lizi/.     https://github.com/lrxlizi/     https://blog.csdn.net/qq_33608748. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <OpenGLES/ES1/gl.h>
#import <OpenGLES/ES1/glext.h>
#import <UIKit/UIKit.h>


@interface PictureProcessTool : NSObject

+ (UIImage *)imageWithImage:(UIImage*)inImage withColorMatrix:(const float*)f;

@end
