//
//  NSString+Display.h
//  FinanceDemo
//
//  Created by Hyper on 2021/4/30.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (Display)

#pragma mark - Attachment
- (NSAttributedString *)attributedString:(NSDictionary *)attributes leadingIcon:(UIImage *)icon bounds:(CGRect)bounds;

- (NSAttributedString *)attributedString:(NSDictionary *)attributes trailingIcon:(UIImage *)icon bounds:(CGRect)bounds;

- (NSAttributedString *)attributedString:(NSDictionary *)attributes leadingLength:(NSUInteger)leadingLength;

- (NSAttributedString *)attributedString:(NSDictionary *)attributes trailingLength:(NSUInteger)trailingLength;

@end

NS_ASSUME_NONNULL_END
