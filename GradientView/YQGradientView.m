//
//  YQGradientView.m
//  GradientView
//
//  Created by yiqiwang(王一棋) on 2017/4/11.
//  Copyright © 2017年 melody5417. All rights reserved.
//

#import "YQGradientView.h"

@implementation YQGradientView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        _startColor = [NSColor colorWithWhite:1.0 alpha:1.0];
        _endColor = [NSColor colorWithWhite:0.0 alpha:1.0];
        _gradientViewType = kGradientViewTypeVertical;
    }
    return self;
}
- (id)initWithFrame:(CGRect)frame startColor:(NSColor *)startColor endColor:(NSColor *)endColor{
    self = [self initWithFrame:frame];
    if (self) {
        _startColor = startColor;
        _endColor = endColor;
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    CGContextRef context = (CGContextRef)[[NSGraphicsContext currentContext]
                                          graphicsPort];;
    CGPoint startPoint = NSZeroPoint;
    CGPoint endPoint = NSZeroPoint;
    //从上到下
    if (_gradientViewType == kGradientViewTypeVertical) {
        startPoint = CGPointZero;
        endPoint = CGPointMake(0, rect.size.height);
    }
    //从左到右
    if (_gradientViewType == kGradientViewTypeHorizontal) {
        startPoint = CGPointZero;
        endPoint = CGPointMake(rect.size.width, 0);
    }
    //从左上到右下
    if (_gradientViewType == kGradientViewTypeInclinedLeft) {
        startPoint = CGPointZero;
        endPoint = CGPointMake(rect.size.width, rect.size.height);
    }
    //从右上到左下
    if (_gradientViewType == kGradientViewTypeInclinedRight) {
        startPoint = CGPointMake(rect.size.width, 0);
        endPoint = CGPointMake(0, rect.size.height);
    }
    [self DrawGradientColor:context rect:rect point:startPoint point:endPoint options:kCGGradientDrawsAfterEndLocation startColor:_startColor endColor:_endColor];
}

/**
 画图形渐进色方法，此方法只支持双色值渐变
 @param context     图形上下文的CGContextRef
 @param clipRect    需要画颜色的rect
 @param startPoint  画颜色的起始点坐标
 @param endPoint    画颜色的结束点坐标
 @param options     CGGradientDrawingOptions
 @param startColor  开始的颜色值
 @param endColor    结束的颜色值
 */
- (void)DrawGradientColor:(CGContextRef)context
                     rect:(CGRect)clipRect
                    point:(CGPoint) startPoint
                    point:(CGPoint) endPoint
                  options:(CGGradientDrawingOptions) options
               startColor:(NSColor*)startColor
                 endColor:(NSColor*)endColor
{
    NSColor* colors [2] = {startColor,endColor};
    CGColorSpaceRef rgb = CGColorSpaceCreateDeviceRGB();
    CGFloat colorComponents[8];

    for (int i = 0; i < 2; i++) {
        NSColor *color = colors[i];
        CGColorRef temcolorRef = color.CGColor;

        const CGFloat *components = CGColorGetComponents(temcolorRef);
        for (int j = 0; j < 4; j++) {
            colorComponents[i * 4 + j] = components[j];
        }
    }

    CGGradientRef gradient =  CGGradientCreateWithColorComponents(rgb, colorComponents, NULL, 2);

    CGColorSpaceRelease(rgb);
    CGContextDrawLinearGradient(context, gradient, startPoint, endPoint, options);
    CGGradientRelease(gradient);
}

@end
