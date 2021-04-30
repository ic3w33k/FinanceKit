//
//  main.m
//  FinanceDemo
//
//  Created by Hyper on 2021/4/30.
//

#import <UIKit/UIKit.h>
#import "IC3AppDelegate.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([IC3AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
