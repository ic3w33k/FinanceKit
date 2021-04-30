//
//  BaseActionModel.h
//  FinanceDemo
//
//  Created by Hyper on 2021/4/30.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BaseActionModel : NSObject

@property (nonatomic, assign) NSInteger type;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *regex;
@property (nonatomic, assign) NSInteger digits;
@property (nonatomic, assign) NSInteger fullLength;

+ (BaseActionModel *)modelWithTitle:(NSString *)title
                             regex:(NSString *)regex;

+ (BaseActionModel *)modelWithTitle:(NSString *)title
                             digits:(NSInteger)digits
                        fullLength:(NSInteger)fullLength;
@end

NS_ASSUME_NONNULL_END
