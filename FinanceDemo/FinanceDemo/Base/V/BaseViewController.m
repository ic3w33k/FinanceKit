//
//  BaseViewController.m
//  FinanceDemo
//
//  Created by Hyper on 2021/4/30.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)dealloc {
    NSLog(@"%@ dealloc", NSStringFromClass([self class]));
}

- (UITextField *)textField {
    if (!_textField) {
        _textField = [[UITextField alloc] initWithFrame:CGRectZero];
        _textField.placeholder = @"input...";
        _textField.font = [UIFont systemFontOfSize:22.f weight:UIFontWeightMedium];
        _textField.textColor = [UIColor blackColor];
        _textField.layer.cornerRadius = 8.f;
        _textField.layer.borderColor  = [UIColor lightGrayColor].CGColor;
        _textField.layer.borderWidth  = 2.f;
        _textField.clearButtonMode    = UITextFieldViewModeWhileEditing;
    }
    return _textField;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = self.model.title;
    self.view.backgroundColor = [UIColor colorWithRed:.96 green:.96 blue:.96 alpha:1];
    
    [self.view addSubview:self.textField];
    [self.textField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(-30.f);
        make.left.mas_equalTo(30.f);
        make.height.mas_equalTo(44.f);
        make.bottom.equalTo(self.view.mas_centerY).offset(-100.f);
    }];
}

@end
