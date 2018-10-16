//
//  CreateAccountPage.h
//  MCOMUITests
//
//  Created by Anna Kliuieva on 10/2/18.
//  Copyright © 2018 Macys.com. All rights reserved.
//

#import "BasePage.h"
#import "StarRewardsPage.h"
#import "User.h"

@interface CreateAccountPage : BasePage
-(StarRewardsPage *) createAccountForUser: (User *) user;
@end
