//
//  BottomNavFragment.m
//  MCOMUITests
//
//  Created by Anna Kliuieva on 9/30/18.
//  Copyright © 2018 Macys.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BottomNavFragment.h"
#import "TestLib/EarlGreyImpl/EarlGrey.h"
#import "AccountPage.h"

@implementation BottomNavFragment
NSString *accountIcon = @"global_navigation_account_tab";

- (AccountPage*) navigateToAccount {
    [[EarlGrey selectElementWithMatcher:grey_accessibilityID(accountIcon)] performAction:grey_tap()];
    return [[AccountPage alloc] init];
}
@end
