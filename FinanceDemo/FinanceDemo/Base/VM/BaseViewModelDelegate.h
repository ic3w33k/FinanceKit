//
//  BaseViewModelDelegate.h
//  FinanceDemo
//
//  Created by Hyper on 2021/4/30.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol BaseViewModelDelegate <NSObject>

@required
@property (nonatomic, strong, readonly) id model;
- (id)initWithModel:(id)model;

@optional
- (void)registerCell:(void(^)(NSArray <RACTuple *>*tuples))block;
- (NSInteger)numberOfSections;
- (NSInteger)numberOfRowsInSection:(NSInteger)section;
- (NSString *)identifierForSection:(NSInteger)section row:(NSInteger)row;
- (nullable id)modelForSection:(NSInteger)section row:(NSInteger)row;
@end

NS_ASSUME_NONNULL_END
