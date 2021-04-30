//
//  NSString+Display.m
//  FinanceDemo
//
//  Created by Hyper on 2021/4/30.
//

#import "NSString+Display.h"

@implementation NSString (Display)

- (NSAttributedString *)attributedString:(NSDictionary *)attributes leadingIcon:(UIImage *)icon bounds:(CGRect)bounds {
    NSTextAttachment *att = [[NSTextAttachment alloc] init];
    att.image = icon;
    att.bounds = bounds;
    NSAttributedString *attString = [NSAttributedString attributedStringWithAttachment:att];
    NSMutableAttributedString *aStringM = [[NSMutableAttributedString alloc] initWithString:self
                                                                                 attributes:attributes];
    [aStringM insertAttributedString:attString atIndex:0];
    return aStringM;
}

- (NSAttributedString *)attributedString:(NSDictionary *)attributes trailingIcon:(UIImage *)icon bounds:(CGRect)bounds {
    NSTextAttachment *att = [[NSTextAttachment alloc] init];
    att.image = icon;
    att.bounds = bounds;
    NSAttributedString *attString = [NSAttributedString attributedStringWithAttachment:att];
    NSMutableAttributedString *aStringM = [[NSMutableAttributedString alloc] initWithString:self
                                                                                 attributes:attributes];
    [aStringM insertAttributedString:attString atIndex:aStringM.length];
    return aStringM;
}

- (NSAttributedString *)attributedString:(NSDictionary *)attributes leadingLength:(NSUInteger)leadingLength {
    NSMutableAttributedString *aStringM = [[NSMutableAttributedString alloc] initWithString:self];
    NSUInteger length = MIN(self.length, leadingLength);
    [aStringM setAttributes:attributes range:NSMakeRange(0, length)];
    return aStringM.copy;
}

- (NSAttributedString *)attributedString:(NSDictionary *)attributes trailingLength:(NSUInteger)trailingLength {
    NSMutableAttributedString *aStringM = [[NSMutableAttributedString alloc] initWithString:self];
    NSUInteger length = MIN(self.length, trailingLength);
    [aStringM setAttributes:attributes range:NSMakeRange(self.length - length, length)];
    return aStringM.copy;
}

@end

