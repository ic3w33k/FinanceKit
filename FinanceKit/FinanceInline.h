//
//  FinanceInline.h
//  FinanceDemo
//
//  Created by Hyper on 2021/4/30.
//

#ifndef FinanceInline_h
#define FinanceInline_h

static inline BOOL isNotNull(id obj) {
    return ![obj isKindOfClass:[NSNull class]] && obj != nil;
}

static inline BOOL isNotEmptyArray(id array) {
    return isNotNull(array) && [array isKindOfClass:[NSArray class]] && [array count];
}

static inline BOOL isNotEmptyDictionary(id dictionary) {
    return isNotNull(dictionary) && [dictionary isKindOfClass:[NSDictionary class]] && [[dictionary allKeys] count];
}

static inline BOOL isNotEmptyString(id string) {
    return isNotNull(string) && [string isKindOfClass:[NSString class]] && [string length];
}

static inline NSDecimalNumber* decimalNumber(NSString *string) {
    if (!isNotEmptyString(string)) {
        return [NSDecimalNumber zero];
    }
    return [NSDecimalNumber decimalNumberWithString:string];
}

/// 适配OCjson反序列化后浮点型溢出的情况
static inline NSString* displayNumber(NSString *value) {
    if (!isNotEmptyString(value)) {
        return @"0";
    }
    NSString *string = [NSString stringWithFormat:@"%lf", [value doubleValue]];
    return [[NSDecimalNumber decimalNumberWithString:string] stringValue];
}

/// 截取且一定显示指定小数位数字
static inline NSString* prettyNumber(NSString *string, NSUInteger digits) {
    if (!isNotEmptyString(string)) {
        string = @"0";
    }
    NSDecimalNumber *decimalNumber = [NSDecimalNumber decimalNumberWithString:string];
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
    formatter.minimumIntegerDigits = 1;
    formatter.maximumFractionDigits = digits;
    formatter.minimumFractionDigits = digits;
    [formatter setRoundingMode:NSNumberFormatterRoundDown];
    return [formatter stringFromNumber:decimalNumber];
}

static inline NSDecimalNumber* maxDecimalNumber(NSDecimalNumber *a, NSDecimalNumber *b) {
    if ([a compare:b] == NSOrderedDescending) {
        return a;
    } else {
        return b;
    }
}

static inline NSDecimalNumber* minDecimalNumber(NSDecimalNumber *a, NSDecimalNumber *b) {
    if ([a compare:b] == NSOrderedDescending) {
        return b;
    } else {
        return a;
    }
}

#endif /* FinanceInline_h */
