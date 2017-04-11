//
//  YQGradientView.h
//  GradientView
//
//  Created by yiqiwang(王一棋) on 2017/4/11.
//  Copyright © 2017年 melody5417. All rights reserved.
//

#import <Cocoa/Cocoa.h>

typedef NS_ENUM(NSInteger, GradientViewType){
    kGradientViewTypeHorizontal = 0,
    kGradientViewTypeVertical = 1,
    kGradientViewTypeInclinedLeft = 2,
    kGradientViewTypeInclinedRight = 3
};

@interface YQGradientView : NSView

@property (nonatomic, strong) NSColor *startColor;
@property (nonatomic, strong) NSColor *endColor;
@property (nonatomic, assign) GradientViewType gradientViewType;

- (id)initWithFrame:(CGRect)frame startColor:(NSColor *)startColor endColor:(NSColor *)endColor;

@end
