//
//  HomePage.m
//  MCOMUITests
//
//  Created by Anna Kliuieva on 9/30/18.
//  Copyright © 2018 Macys.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TestLib/EarlGreyImpl/EarlGrey.h"
#import "HomePage.h"
#import "SignInPage.h"

@implementation HomePage
static NSString *const loyaltyBanner = @"HomeLoyaltyBannerCell";

-(SignInPage *) navigateToSignInPage {
    [[EarlGrey selectElementWithMatcher:grey_accessibilityID(loyaltyBanner)] performAction:grey_tap()];
    return [[SignInPage alloc] init];
}

-(BottomNavFragment *) getBottomNavComponent{
    return [[BottomNavFragment alloc] init];
}
@end
