//
//  ViewController.m
//  LXVerficationButton
//
//  Created by 李鑫 on 16/6/23.
//  Copyright © 2016年 lixin. All rights reserved.
//

#import "ViewController.h"
#import "LXVerficationButton.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    LXVerficationButton *b =[LXVerficationButton buttonWithType:UIButtonTypeCustom];
    b.frame=CGRectMake(20, 40, 100, 50);
      [self.view addSubview:b];
    NSLog(@"提交改动");
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
