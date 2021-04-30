//
//  RootViewModel.h
//  FinanceDemo
//
//  Created by Hyper on 2021/4/30.
//

#import <Foundation/Foundation.h>
#import "RootModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface RootViewModel : NSObject <BaseViewModelDelegate>

@property (nonatomic, strong, readonly) RootModel *model;
- (NSString *)titleForHeaderInSection:(NSInteger)section;
@end

NS_ASSUME_NONNULL_END
