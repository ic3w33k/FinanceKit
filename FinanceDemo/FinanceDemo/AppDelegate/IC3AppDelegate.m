//
//  AppDelegate.m
//  FinanceDemo
//
//  Created by Hyper on 2021/4/30.
//

#import "IC3AppDelegate.h"
#import "RootViewController.h"

@interface IC3AppDelegate ()

@end

@implementation IC3AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [[UITextField appearance] setTintColor:[UIColor blueColor]];
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    RootViewController *tableViewController = [[RootViewController alloc] initWithStyle:UITableViewStylePlain];
    UINavigationController *rootController = [[UINavigationController alloc] initWithRootViewController:tableViewController];
    self.window.rootViewController = rootController;
    [self.window makeKeyAndVisible];
    return YES;
}


@end
