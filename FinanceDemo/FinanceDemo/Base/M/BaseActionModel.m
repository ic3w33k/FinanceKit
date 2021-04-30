//
//  BaseActionModel.m
//  FinanceDemo
//
//  Created by Hyper on 2021/4/30.
//

#import "BaseActionModel.h"

@implementation BaseActionModel

+ (BaseActionModel *)modelWithTitle:(NSString *)title {
    BaseActionModel *model = [BaseActionModel new];
    model.title = title;
    return model;
}

+ (BaseActionModel *)modelWithTitle:(NSString *)title regex:(NSString *)regex {
    BaseActionModel *model = [BaseActionModel modelWithTitle:title];
    model.type = 1;
    model.regex = regex;
    return model;
}

+ (BaseActionModel *)modelWithTitle:(NSString *)title digits:(NSInteger)digits fullLength:(NSInteger)fullLength {
    BaseActionModel *model = [BaseActionModel modelWithTitle:title];
    model.type = 2;
    model.digits = digits;
    model.fullLength = fullLength;
    return model;
}

@end
