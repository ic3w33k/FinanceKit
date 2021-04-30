//
//  FinanceTools.h
//  FinanceDemo
//
//  Created by Hyper on 2021/4/30.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FinanceTools : NSObject

#pragma mark - regex
+ (BOOL)validString:(NSString *)string regex:(NSString *)regex;

#pragma mark - editing changed
/// 限制最长输入
+ (void)textField:(UITextField *)textField fullLength:(NSUInteger)fullLength;

#pragma mark - shouldChangeCharactersInRange
/// 允许保留几位小数
+ (BOOL)textField:(UITextField *)textField digits:(NSUInteger)digits replacementString:(NSString *)string;

@end

NS_ASSUME_NONNULL_END
