//
//  ModuleCViewController.m
//  CTMediatorDemo
//
//  Created by bidongmao on 2019/12/4.
//  Copyright © 2019 bidm. All rights reserved.
//

#import "ModuleCViewController.h"

@interface ModuleCViewController ()

@end

@implementation ModuleCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor linkColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    ViewController *vc = [[ViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    window.rootViewController = nav;
    [window makeKeyAndVisible];
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
