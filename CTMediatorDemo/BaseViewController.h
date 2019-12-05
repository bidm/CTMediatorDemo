//
//  BaseViewController.h
//  CTMediatorDemo
//
//  Created by bidongmao on 2019/12/4.
//  Copyright © 2019 bidm. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^BaseViewControllerBlock)(NSDictionary *dict);

@interface BaseViewController : UIViewController

@property (nonatomic, copy) BaseViewControllerBlock callBackBlock;
@property (nonatomic, strong) NSDictionary *parameter;

@end

NS_ASSUME_NONNULL_END
