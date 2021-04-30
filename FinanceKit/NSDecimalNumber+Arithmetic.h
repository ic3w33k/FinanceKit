//
//  NSDecimalNumber+Arithmetic.h
//  FinanceDemo
//
//  Created by Hyper on 2021/4/30.
//

#import <Foundation/Foundation.h>

typedef NSDecimalNumber *_Nullable (^OperationDecimalNumber)(NSDecimalNumber *_Nullable other);

NS_ASSUME_NONNULL_BEGIN

/// 使用decimalNumber()构建，本体不能为nil
@interface NSDecimalNumber (Arithmetic)

@property (nonatomic, copy, readonly) OperationDecimalNumber add;
@property (nonatomic, copy, readonly) OperationDecimalNumber sub;
@property (nonatomic, copy, readonly) OperationDecimalNumber mul;
@property (nonatomic, copy, readonly) OperationDecimalNumber div;

- (BOOL)greaterThanValue:(NSDecimalNumber *)other;
- (BOOL)greaterThanOrEqualToValue:(NSDecimalNumber *)other;
- (BOOL)lessThanValue:(NSDecimalNumber *)other;
- (BOOL)lessThanOrEqualToValue:(NSDecimalNumber *)other;

@end

NS_ASSUME_NONNULL_END
