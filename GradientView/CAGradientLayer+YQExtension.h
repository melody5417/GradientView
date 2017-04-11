//
//  CAGradientLayer+YQExtension.h
//  GradientView
//
//  Created by yiqiwang(王一棋) on 2017/4/11.
//  Copyright © 2017年 melody5417. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import <Cocoa/Cocoa.h>

@interface CAGradientLayer (YQExtension)

/**
 *  生成一个渐变色的layer
 *
 *  @param frame      layer的尺寸
 *  @param startPoint 渐变色的起始位置(范围：0-1)
 *  @param endPoint   渐变色的终止位置(范围：0-1）
 *  @param colors     颜色数组
 *  @param locations  颜色分割点 (范围：0-1)
 *
 *  @return 返回一个渐变色layer
 */
+ (instancetype)gradientLayerWithFrame:(CGRect)frame
                            startPoint:(CGPoint)startPoint
                              endPoint:(CGPoint)endPoint
                                colors:(NSArray<NSColor *>*)colors
                             locations:(NSArray*)locations;

@end
