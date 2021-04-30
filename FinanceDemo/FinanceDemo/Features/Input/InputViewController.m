//
//  InputViewController.m
//  FinanceDemo
//
//  Created by Hyper on 2021/4/30.
//

#import "InputViewController.h"

@interface InputViewController () <UITextFieldDelegate>

@end

@implementation InputViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.textField.delegate = self;
    [self.textField addTarget:self action:@selector(textFieldEditingChanged:) forControlEvents:UIControlEventEditingChanged];
}

- (void)textFieldEditingChanged:(UITextField *)textField {
    [FinanceTools textField:textField fullLength:self.model.fullLength];
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    return [FinanceTools textField:textField digits:self.model.digits replacementString:string];
}

@end
