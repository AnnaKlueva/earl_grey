//
//  SignInPage.h
//  Shop
//
//  Created by Anna Kliuieva on 9/28/18.
//  Copyright © 2018 Macys.com. All rights reserved.
//

#import "CreateAccountPage.h"

@interface SignInPage : BasePage
- (void) clickOnSignInButton;
- (CreateAccountPage *) clickOnAccountButton;
- (void) logInWithEmail: (NSString *) email password:(NSString *) password;
@end
