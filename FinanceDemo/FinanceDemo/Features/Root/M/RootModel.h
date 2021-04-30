//
//  RootModel.h
//  FinanceDemo
//
//  Created by Hyper on 2021/4/30.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RootModel : NSObject

@property (nonatomic, strong) NSMutableArray <NSMutableArray *>*datas;
@property (nonatomic, strong) NSMutableArray <NSString *>*titles;
@end

NS_ASSUME_NONNULL_END
