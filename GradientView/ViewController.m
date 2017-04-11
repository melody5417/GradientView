//
//  ViewController.m
//  GradientView
//
//  Created by yiqiwang(王一棋) on 2017/4/11.
//  Copyright © 2017年 melody5417. All rights reserved.
//

#import "ViewController.h"
#import "CAGradientLayer+YQExtension.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    [self.view setWantsLayer:YES];

    CAGradientLayer *gradientLayer = [CAGradientLayer gradientLayerWithFrame:self.view.bounds
                                                          startPoint:CGPointMake(0, 0)
                                                            endPoint:CGPointMake(0, 1)
                                                              colors:@[[NSColor blueColor], [NSColor yellowColor]]
                                                           locations:@[@(0.5f), @(1.0f)]];
    [gradientLayer setAutoresizingMask:kCALayerWidthSizable | kCALayerHeightSizable];
    [self.view.layer addSublayer:gradientLayer];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
