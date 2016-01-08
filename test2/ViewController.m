//
//  ViewController.m
//  test2
//
//  Created by 淘发现4 on 16/1/8.
//  Copyright © 2016年 iMac. All rights reserved.
//

#import "ViewController.h"
#import "QRCodeVC.h"
#import "UIViewExt.h"

#define screen_width [UIScreen mainScreen].bounds.size.width
#define screen_height [UIScreen mainScreen].bounds.size.height

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"打开二维码扫描" forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor blueColor]];
    [btn sizeToFit];
    btn.frame = CGRectMake((screen_width - btn.width)/2, (screen_height - btn.height)/2, btn.width + 5, btn.height + 5);
    [btn addTarget:self action:@selector(clickBtn:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    
}

-(void)clickBtn:(id)send{
    [self.navigationController pushViewController:[QRCodeVC new] animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
