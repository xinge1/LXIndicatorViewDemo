//
//  UIView+LXActiveIndictor.h
//  JQIndicatorViewDemo
//
//  Created by 刘鑫 on 16/5/4.
//  Copyright © 2016年 JQ. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UIView (LXActiveIndictor)

/**
 *  自定义的过度动画，个人觉得1，3,6比较好
 */
-(void)lx_showActiveIndicator;

-(void)lx_hiddenActiveIndicator;


@end
