//
//  CAGradientLayer+YQExtension.m
//  GradientView
//
//  Created by yiqiwang(王一棋) on 2017/4/11.
//  Copyright © 2017年 melody5417. All rights reserved.
//

#import "CAGradientLayer+YQExtension.h"

@implementation CAGradientLayer (YQExtension)

+ (instancetype)gradientLayerWithFrame:(CGRect)frame
                            startPoint:(CGPoint)startPoint
                              endPoint:(CGPoint)endPoint
                                colors:(NSArray<NSColor *>*)colors
                             locations:(NSArray*)locations {
    // 生成一个渐变色的layer
    CAGradientLayer * layer = [CAGradientLayer layer];

    // 设置尺寸
    layer.frame = frame;

    // 渐变色区域的开始位置（位置范围 0 - 1）
    layer.startPoint = startPoint;

    // 渐变色区域的结束位置
    layer.endPoint = endPoint;

    // 设置颜色数组
    NSMutableArray * colorRefs = [NSMutableArray array];
    for (NSColor *color in colors) {
        [colorRefs addObject:(__bridge id)color.CGColor];
    }
    layer.colors = colorRefs;

    // 设置颜色的分割点（范围：0-1）
    layer.locations = locations;
    return layer;
}
@end
