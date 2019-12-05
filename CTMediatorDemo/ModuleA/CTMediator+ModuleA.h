//
//  CTMediator+ModuleA.h
//  CTMediatorDemo
//
//  Created by bidongmao on 2019/12/4.
//  Copyright © 2019 bidm. All rights reserved.
//

#import "CTMediator.h"

NS_ASSUME_NONNULL_BEGIN

@interface CTMediator (ModuleA)

- (BaseViewController *)CTMediator_GetModuleAVC:(NSDictionary *)parameter;

@end

NS_ASSUME_NONNULL_END
