//
//  NSString+Compare.h
//  FinanceDemo
//
//  Created by Hyper on 2021/4/30.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (Compare)

- (NSComparisonResult)compareDecimalValue:(NSString *)decimalValue;

- (BOOL)greaterThanValue:(NSString *)other;
- (BOOL)greaterThanOrEqualToValue:(NSString *)other;
- (BOOL)lessThanValue:(NSString *)other;
- (BOOL)lessThanOrEqualToValue:(NSString *)other;

@end

NS_ASSUME_NONNULL_END
