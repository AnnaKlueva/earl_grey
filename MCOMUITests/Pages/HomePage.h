//
//  HomePage.h
//  Shop
//
//  Created by Anna Kliuieva on 9/30/18.
//  Copyright © 2018 Macys.com. All rights reserved.
//
#import "SignInPage.h"
#import "BasePage.h"
#import "BottomNavFragment.h"

@interface HomePage:BasePage <BottomNavProtocol>
    - (SignInPage *) navigateToSignInPage;
@end
