//
//  NSString+Compare.m
//  FinanceDemo
//
//  Created by Hyper on 2021/4/30.
//

#import "NSString+Compare.h"
#import "FinanceInline.h"
#import "NSDecimalNumber+Arithmetic.h"

@implementation NSString (Compare)

- (NSComparisonResult)compareDecimalValue:(NSString *)decimalValue {
    return [decimalNumber(self) compare:decimalNumber(decimalValue)];
}

- (BOOL)greaterThanValue:(NSString *)other {
    return [decimalNumber(self) greaterThanValue:decimalNumber(other)];
}

- (BOOL)greaterThanOrEqualToValue:(NSString *)other {
    return [decimalNumber(self) greaterThanOrEqualToValue:decimalNumber(other)];
}

- (BOOL)lessThanValue:(NSString *)other {
    return [decimalNumber(self) lessThanValue:decimalNumber(other)];
}

- (BOOL)lessThanOrEqualToValue:(NSString *)other {
    return [decimalNumber(self) lessThanOrEqualToValue:decimalNumber(other)];
}

@end

