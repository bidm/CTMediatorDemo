//
//  CTMediator+ModuleA.m
//  CTMediatorDemo
//
//  Created by bidongmao on 2019/12/4.
//  Copyright © 2019 bidm. All rights reserved.
//

NSString * const KModuleAViewController = @"ModuleAViewController";

#import "CTMediator+ModuleA.h"
#import "ModuleAViewController.h"

@implementation CTMediator (ModuleA)

- (BaseViewController *)CTMediator_GetModuleAVC:(NSDictionary *)parameter {
    ModuleAViewController *vc = [[ModuleAViewController alloc] init];
    vc.parameter = parameter;
    return vc;
}

@end
