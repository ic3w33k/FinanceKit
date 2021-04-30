//
//  RootModel.m
//  FinanceDemo
//
//  Created by Hyper on 2021/4/30.
//

#import "RootModel.h"

@implementation RootModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        _datas = [NSMutableArray arrayWithCapacity:0];
        _titles = [NSMutableArray arrayWithCapacity:0];
    }
    return self;
}

@end
