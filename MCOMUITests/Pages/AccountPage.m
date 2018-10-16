//
//  AccountPage.m
//  MCOMUITests
//
//  Created by Anna Kliuieva on 9/30/18.
//  Copyright © 2018 Macys.com. All rights reserved.
//

#import "AccountPage.h"

@implementation AccountPage
NSString* logOutButton = @"SIGN OUT" ;

-(AccountPage *) logOut{
    [[EarlGrey selectElementWithMatcher:grey_accessibilityID(logOutButton)] performAction:grey_tap()];
    return [[AccountPage alloc] init];
}

-(BottomNavFragment *) getBottomNavComponent{
    return [[BottomNavFragment alloc] init];
}

@end
