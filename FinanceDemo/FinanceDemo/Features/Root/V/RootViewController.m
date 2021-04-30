//
//  RootViewController.m
//  FinanceDemo
//
//  Created by Hyper on 2021/4/30.
//

#import "RootViewController.h"
#import "RootViewModel.h"

#import "InputViewController.h"
#import "RegExViewController.h"

@interface RootViewController ()

@property (nonatomic, strong) RootViewModel *viewModel;
@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.viewModel = [[RootViewModel alloc] initWithModel:[[RootModel alloc] init]];
    
    [self addInputDemo];
    [self addRegexDemo];
    [self initUI];
}

- (void)initUI {
    
    self.navigationItem.title = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleName"];
    
    [self.viewModel registerCell:^(NSArray<RACTuple *> * _Nonnull tuples) {
        for (RACTuple *tuple in tuples) {
            RACTupleUnpack(Class class, NSString *identifier) = tuple;
            [self.tableView registerClass:class forCellReuseIdentifier:identifier];
        }
    }];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    [self.tableView reloadData];
}

- (void)addInputDemo {
    
    NSMutableArray *models = [NSMutableArray arrayWithCapacity:0];
    [models addObject:[BaseActionModel modelWithTitle:@"保留3位小数，最长8个字符" digits:3 fullLength:8]];
    [models addObject:[BaseActionModel modelWithTitle:@"保留0位小数，最长6个字符" digits:0 fullLength:6]];
    [models addObject:[BaseActionModel modelWithTitle:@"保留-2位小数，最长6个字符" digits:-2 fullLength:6]];
    [self.viewModel.model.datas addObject:models];
    [self.viewModel.model.titles addObject:@"Input"];
}

- (void)addRegexDemo {
    NSMutableArray *models = [NSMutableArray arrayWithCapacity:0];
    [models addObject:[BaseActionModel modelWithTitle:@"最多两位小数" regex:kRegEx_Floating]];
    [self.viewModel.model.datas addObject:models];
    [self.viewModel.model.titles addObject:@"RegEx"];
}

#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [self.viewModel numberOfSections];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return [self.viewModel titleForHeaderInSection:section];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.viewModel numberOfRowsInSection:section];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *identifier = [self.viewModel identifierForSection:indexPath.section row:indexPath.row];
    BaseActionModel *actionModel = [self.viewModel modelForSection:indexPath.section row:indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];
    UIImage *icon = [UIImage imageNamed:@"icon_list"];
    NSString *title = actionModel.title;
    cell.textLabel.attributedText = [title attributedString:@{} leadingIcon:icon bounds:CGRectMake(0, -3, icon.size.width, icon.size.height)];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    BaseActionModel *model = [self.viewModel modelForSection:indexPath.section row:indexPath.row];
    UIViewController *controller;
    if (1 == model.type) {
        RegExViewController *regEx = [[RegExViewController alloc] init];
        regEx.model = model;
        controller = regEx;
    } else {
        InputViewController *input = [[InputViewController alloc] init];
        input.model = model;
        controller = input;
    }
    [self.navigationController pushViewController:controller animated:true];
}

@end
