
//
//  Target_ModuleCViewController.m
//  CTMediatorDemo
//
//  Created by bidongmao on 2019/12/4.
//  Copyright © 2019 bidm. All rights reserved.
//

#import "Target_ModuleCViewController.h"
#import "ModuleCViewController.h"

@implementation Target_ModuleCViewController

- (id)Action_GetModuleCVC:(NSDictionary *)parameter {
    ModuleCViewController *vc = [[ModuleCViewController alloc] init];
    vc.parameter = parameter;
    return vc;
}

@end
