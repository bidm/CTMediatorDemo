//
//  ViewController.m
//  CTMediatorDemo
//
//  Created by bidongmao on 2019/12/4.
//  Copyright © 2019 bidm. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // nothing
    UIButton *btnA = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 50)];
    [btnA setTitle:@"模块A" forState:UIControlStateNormal];
    [btnA setBackgroundColor:[UIColor redColor]];
    [btnA addTarget:self action:@selector(btnAClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnA];
    
    UIButton *btnB = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 100, 50)];
    [btnB setTitle:@"模块B" forState:UIControlStateNormal];
    [btnB setBackgroundColor:[UIColor redColor]];
    [btnB addTarget:self action:@selector(btnBClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnB];
}

- (void)btnAClick:(id)sender {
    BaseViewController *vc = [[CTMediator sharedInstance] CTMediator_GetModuleAVC:@{@"key":@"AParameter"}];
    vc.callBackBlock = ^(NSDictionary * _Nonnull dict) {
        NSLog(@"ACallback = %@",dict);
    };
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)btnBClick:(id)sender {
    BaseViewController *vc = [[CTMediator sharedInstance] CTMediator_GetModuleB:@{@"key":@"BParameter"}];
    vc.callBackBlock = ^(NSDictionary * _Nonnull dict) {
        NSLog(@"BCallBack%@",dict);
    };
    [self presentViewController:vc animated:YES completion:nil];
    
}


@end
