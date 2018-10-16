//
//  SignInPage.m
//  Shop
//
//  Created by Anna Kliuieva on 9/28/18.
//  Copyright © 2018 Macys.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TestLib/EarlGreyImpl/EarlGrey.h"
#import "SignInPage.h"

@implementation SignInPage
static NSString *const createAccountButton = @"kSignInCreateAccountButtonIdentifier";
static NSString *const emailField = @"kSignInLoginFieldIdentifier";
static NSString *const passwordField = @"kSignInPasswordFieldIdentifier";
static NSString *const signInButton = @"kSignInButton";

- (void) clickOnSignInButton {
    [[EarlGrey selectElementWithMatcher:grey_accessibilityID(signInButton)] performAction:grey_tap()];
}

- (CreateAccountPage *) clickOnAccountButton{
    [[EarlGrey selectElementWithMatcher:grey_accessibilityID(createAccountButton)] performAction:grey_tap()];
    return [[CreateAccountPage alloc] init];
}

- (void) logInWithEmail: (NSString *) email password:(NSString *) password {
    [[EarlGrey selectElementWithMatcher:grey_accessibilityID(emailField)] performAction:grey_clearText()];
    [[EarlGrey selectElementWithMatcher:grey_accessibilityID(emailField)] performAction:grey_typeText(email)];
    [[EarlGrey selectElementWithMatcher:grey_accessibilityID(passwordField)] performAction:grey_typeText(password)];
    [self clickOnSignInButton];
}
@end


