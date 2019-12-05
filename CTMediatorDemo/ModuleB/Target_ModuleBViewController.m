//
//  Target_ModuleBViewController.m
//  CTMediatorDemo
//
//  Created by bidongmao on 2019/12/4.
//  Copyright © 2019 bidm. All rights reserved.
//

#import "Target_ModuleBViewController.h"
#import "ModuleBViewController.h"

@implementation Target_ModuleBViewController

- (id)Action_GetModuleBVC:(NSDictionary *)parameter {
    ModuleBViewController *vc = [[ModuleBViewController alloc] init];
    vc.parameter = parameter;
    return vc;
}

@end
