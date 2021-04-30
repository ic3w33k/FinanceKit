//
//  RootViewModel.m
//  FinanceDemo
//
//  Created by Hyper on 2021/4/30.
//

#import "RootViewModel.h"

@interface RootViewModel ()

@property (nonatomic, strong, readwrite) RootModel *model;
@end

@implementation RootViewModel

- (id)initWithModel:(id)model {
    if (self = [super init]) {
        self.model = model;
    }
    return self;
}

- (void)registerCell:(void (^)(NSArray<RACTuple *> * _Nonnull))block {
    NSArray <Class>*clss = @[[UITableViewCell class]];
    NSMutableArray <RACTuple *>*tuples = [NSMutableArray arrayWithCapacity:0];
    for (Class cls in clss) {
        [tuples addObject:[RACTuple tupleWithObjects:cls, NSStringFromClass(cls), nil]];
    }
    block(tuples);
}

- (NSInteger)numberOfSections {
    return [self.model.datas count];
}

- (NSString *)titleForHeaderInSection:(NSInteger)section {
    return [self.model.titles objectAtIndex:section];
}

- (NSInteger)numberOfRowsInSection:(NSInteger)section {
    return [[self.model.datas objectAtIndex:section] count];
}

- (NSString *)identifierForSection:(NSInteger)section row:(NSInteger)row {
    return NSStringFromClass([UITableViewCell class]);
}

- (id)modelForSection:(NSInteger)section row:(NSInteger)row {
    NSMutableArray *models = [self.model.datas objectAtIndex:section];
    return [models objectAtIndex:row];
}

@end
