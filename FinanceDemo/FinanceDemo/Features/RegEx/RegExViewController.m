//
//  RegExViewController.m
//  FinanceDemo
//
//  Created by Hyper on 2021/4/30.
//

#import "RegExViewController.h"

@interface UIView (IC3)

@property (nonatomic, strong) UIColor *layerBorderColor;
@end

@implementation UIView (IC3)

- (void)setLayerBorderColor:(UIColor *)layerBorderColor {
    self.layer.borderColor = [layerBorderColor CGColor];
}

- (UIColor *)layerBorderColor {
    return [UIColor colorWithCGColor:self.layer.borderColor];
}

@end

@interface RegExViewController ()

@end

@implementation RegExViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    @weakify(self)
    RAC(self.textField, layerBorderColor) =
    [self.textField.rac_textSignal map:^id _Nullable(NSString * _Nullable value) {
        @strongify(self)
        BOOL valid = [FinanceTools validString:value regex:self.model.regex];
        return valid ? [UIColor greenColor] : [UIColor redColor];
    }];
}

@end
