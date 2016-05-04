//
//  UIView+LXActiveIndictor.m
//  JQIndicatorViewDemo
//
//  Created by 刘鑫 on 16/5/4.
//  Copyright © 2016年 JQ. All rights reserved.
//

#import "UIView+LXActiveIndictor.h"
#import "JQIndicatorView.h"
#import <objc/runtime.h>

@interface UIView ()

@property (nonatomic,strong)JQIndicatorView *activeView;
@end

@implementation UIView (LXActiveIndictor)


-(JQIndicatorView *)activeView{
    return objc_getAssociatedObject(self, _cmd);
}

-(void)setActiveView:(JQIndicatorView *)activeView{
    objc_setAssociatedObject(self, @selector(activeView), activeView, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

/**
 *  1,3,6比较好。其中6是系统UIActivityIndicatorView
 */
-(void)lx_showActiveIndicator{
    self.activeView=[[JQIndicatorView alloc] initWithType:6 tintColor:[UIColor lightGrayColor] size:CGSizeMake(30, 30)];
    self.activeView.center=CGPointMake(CGRectGetMidX(self.bounds), CGRectGetMidY(self.bounds));
    [self addSubview:self.activeView];
    [self.activeView startAnimating];
}

-(void)lx_hiddenActiveIndicator{
    [self.activeView stopAnimating];
}



@end
