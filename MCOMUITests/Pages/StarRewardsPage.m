//
//  StarRewardsPage.m
//  MCOMUITests
//
//  Created by Anna Kliuieva on 9/30/18.
//  Copyright © 2018 Macys.com. All rights reserved.
//

#import "StarRewardsPage.h"
#import <Foundation/Foundation.h>

@implementation StarRewardsPage
static NSString *const joinStarRewardsButton = @"JOIN STAR REWARDS";

-(BOOL) isStarRewardsPageDisplayed {
    return [[EarlGrey selectElementWithMatcher:grey_accessibilityID(joinStarRewardsButton)] assertWithMatcher:grey_sufficientlyVisible()];
}
@end
