//
//  ModuleBViewController.m
//  CTMediatorDemo
//
//  Created by bidongmao on 2019/12/4.
//  Copyright © 2019 bidm. All rights reserved.
//

#import "ModuleBViewController.h"

@interface ModuleBViewController ()

@end

@implementation ModuleBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor greenColor];
    NSLog(@"BParameter = %@",self.parameter);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    if (self.callBackBlock) {
        self.callBackBlock(@{@"key":@"BCallBack.."});
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
