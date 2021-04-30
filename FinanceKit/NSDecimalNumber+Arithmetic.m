//
//  NSDecimalNumber+Arithmetic.m
//  FinanceDemo
//
//  Created by Hyper on 2021/4/30.
//

#import "NSDecimalNumber+Arithmetic.h"

@implementation NSDecimalNumber (Arithmetic)

- (OperationDecimalNumber)add {
    return ^(NSDecimalNumber *other) {
        return [self decimalNumberByAdding:other];
    };
}

- (OperationDecimalNumber)sub {
    return ^(NSDecimalNumber *other) {
        return [self decimalNumberBySubtracting:other];
    };
}

- (OperationDecimalNumber)mul {
    return ^(NSDecimalNumber *other) {
        return [self decimalNumberByMultiplyingBy:other];
    };
}

- (OperationDecimalNumber)div {
    return ^(NSDecimalNumber *other) {
        if ([other isEqualToNumber:[NSDecimalNumber zero]]) {
            return self;
        }
        return [self decimalNumberByDividingBy:other];
    };
}

- (BOOL)greaterThanValue:(NSDecimalNumber *)other {
    return [self compare:other] == NSOrderedDescending;
}

- (BOOL)greaterThanOrEqualToValue:(NSDecimalNumber *)other {
    return [self compare:other] != NSOrderedAscending;
}

- (BOOL)lessThanValue:(NSDecimalNumber *)other {
    return [self compare:other] == NSOrderedAscending;
}

- (BOOL)lessThanOrEqualToValue:(NSDecimalNumber *)other {
    return [self compare:other] != NSOrderedDescending;
}

@end

