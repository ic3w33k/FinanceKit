//
//  FinanceRegEx.h
//  FinanceDemo
//
//  Created by Hyper on 2021/4/30.
//

#ifndef FinanceRegEx_h
#define FinanceRegEx_h

/// 整数（负、零、正）
static NSString *const kRegEx_Integer = @"^(0|-?[1-9][0-9]*)$";
/// 正整数
static NSString *const kRegEx_PositiveInteger = @"^([1-9][0-9]*)$";
/// 负整数
static NSString *const kRegEx_NegativeInteger = @"^-([1-9][0-9]*)$";
/// 浮点型，最多两位小数
static NSString *const kRegEx_Floating = @"^(0|-?[1-9][0-9]*)(\\.[0-9]{1,2})?$";

#endif /* FinanceRegEx_h */
