//
//  BaseViewController.h
//  FinanceDemo
//
//  Created by Hyper on 2021/4/30.
//

#import <UIKit/UIKit.h>
#import "BaseActionModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface BaseViewController : UIViewController

@property (nonatomic, strong) BaseActionModel *model;
@property (nonatomic, strong) UITextField *textField;
@end

NS_ASSUME_NONNULL_END
