//
//  ViewController.m
//  LXIndicatorViewDemo
//
//  Created by 刘鑫 on 16/5/4.
//  Copyright © 2016年 liuxin. All rights reserved.
//

#import "ViewController.h"
#import "UIView+LXActiveIndictor.h"

@interface ViewController ()

@property (nonatomic,strong)UIView *testview;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    

    for (int i = 0; i<10; i++) {
        int x = i%2;
        int y = i/2;

        _testview =[[UIView alloc] initWithFrame:CGRectMake(x*120, y*120, 100, 100)];
        _testview.backgroundColor=[UIColor redColor];
        _testview.tag=i;
        [self.view addSubview:_testview];
        [_testview lx_showActiveIndicator];
        
        UITapGestureRecognizer *tap=[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(stopTest:)];
        [_testview addGestureRecognizer:tap];
        
    }

    
}

-(void)stopTest:(UITapGestureRecognizer *)tap{
    UIView *view=(UIView *)tap.view;
    [view lx_hiddenActiveIndicator];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
