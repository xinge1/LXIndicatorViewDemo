//
//  LXIncatorStyle1.m
//  JQIndicatorViewDemo
//
//  Created by 刘鑫 on 16/5/4.
//  Copyright © 2016年 JQ. All rights reserved.
//

#import "LXIncatorStyle1.h"

@interface LXIncatorStyle1 ()

@property (nonatomic,strong)UIActivityIndicatorView *activityView;

@end

@implementation LXIncatorStyle1

-(void)configAnimationAtLayer:(CALayer *)layer withTintColor:(UIColor *)color size:(CGSize)size{
    self.activityView=[[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    self.activityView.layer.position=CGPointMake(0, 0);
    [layer addSublayer:self.activityView.layer];
    [self.activityView startAnimating];
    
}


-(void)removeAnimation{
    [self.activityView stopAnimating];
}

@end
