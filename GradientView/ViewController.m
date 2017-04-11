//
//  ViewController.m
//  GradientView
//
//  Created by yiqiwang(王一棋) on 2017/4/11.
//  Copyright © 2017年 melody5417. All rights reserved.
//

#import "ViewController.h"
#import "CAGradientLayer+YQExtension.h"
#import "YQGradientView.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Layer Demo:
    [self.view setWantsLayer:YES];

    CAGradientLayer *gradientLayer = [CAGradientLayer gradientLayerWithFrame:self.view.bounds
                                                          startPoint:CGPointMake(0, 0)
                                                            endPoint:CGPointMake(0, 1)
                                                              colors:@[[NSColor blueColor], [NSColor yellowColor]]
                                                           locations:@[@(0.5f), @(1.0f)]];
    [gradientLayer setAutoresizingMask:kCALayerWidthSizable | kCALayerHeightSizable];
    [self.view.layer addSublayer:gradientLayer];


//    // View Demo:
//    //默认是垂直的
//    YQGradientView *gradientViewV = [[YQGradientView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width / 2, self.view.frame.size.height / 2) startColor:[NSColor redColor] endColor:[NSColor greenColor]];
//    [self.view addSubview:gradientViewV];
//
//    //水平
//    YQGradientView *gradientViewH = [[YQGradientView alloc]initWithFrame:CGRectMake(self.view.frame.size.width / 2, 0, self.view.frame.size.width / 2, self.view.frame.size.height / 2) startColor:[NSColor redColor] endColor:[NSColor greenColor]];
//    [gradientViewH setGradientViewType:kGradientViewTypeHorizontal];
//    [self.view addSubview:gradientViewH];
//
//    //从左上角开始倾斜
//    YQGradientView *gradientViewIL = [[YQGradientView alloc]initWithFrame:CGRectMake(0, self.view.frame.size.height / 2, self.view.frame.size.width / 2, self.view.frame.size.height / 2) startColor:[NSColor redColor] endColor:[NSColor greenColor]];
//    [gradientViewIL setGradientViewType:kGradientViewTypeInclinedLeft];
//    [self.view addSubview:gradientViewIL];
//
//    //从右上角开始倾斜
//    YQGradientView *gradientViewIR = [[YQGradientView alloc]initWithFrame:CGRectMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2, self.view.frame.size.width / 2, self.view.frame.size.height / 2) startColor:[NSColor redColor] endColor:[NSColor greenColor]];
//    [gradientViewIR setGradientViewType:kGradientViewTypeInclinedRight];
//    [self.view addSubview:gradientViewIR];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
