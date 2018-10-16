//
//  AccountPage.h
//  Shop
//
//  Created by Anna Kliuieva on 9/30/18.
//  Copyright © 2018 Macys.com. All rights reserved.
//

#import "BasePage.h"
#import "BottomNavFragment.h"

@interface AccountPage : BasePage <BottomNavProtocol>
- (AccountPage *) logOut;
@end

