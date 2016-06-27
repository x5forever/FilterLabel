//
//  ViewController.m
//  FilterLabelDemo
//
//  Created by x5 on 16/6/27.
//  Copyright © 2016年 Xcution. All rights reserved.
//

#import "ViewController.h"
#import "FilterLabel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    FilterLabel *label = [[FilterLabel alloc] initWithFrame:CGRectMake(0, 100, CGRectGetWidth(self.view.frame), 60)];
    label.backgroundColor = [UIColor lightGrayColor];
    label.text = @"x5生出于1987年01月20日,河北唐山人。目前就职于宜信宜人贷，担任iOS高级开发工程师。";
    [self.view addSubview:label];
}
@end
