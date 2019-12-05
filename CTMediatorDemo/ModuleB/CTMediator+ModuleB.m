//
//  CTMediator+ModuleB.m
//  CTMediatorDemo
//
//  Created by bidongmao on 2019/12/4.
//  Copyright © 2019 bidm. All rights reserved.
//

#import "CTMediator+ModuleB.h"

NSString * const KTarget = @"ModuleBViewController";
NSString * const KAction = @"GetModuleBVC";

@implementation CTMediator (ModuleB)

- (BaseViewController *)CTMediator_GetModuleB:(NSDictionary *)parameter {
    return [self performTarget:KTarget action:KAction params:parameter shouldCacheTarget:NO];
}

@end
