//
//  MCOMUITests.m
//  MCOMUITests
//
//  Created by Anna Kliuieva on 9/27/18.
//  Copyright © 2018 Macys.com. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "TestLib/EarlGreyImpl/EarlGrey.h"
#import "HomePage.h"
#import "SignInPage.h"
#import "CreateAccountPage.h"
#import "StarRewardsPage.h"
#import "AccountPage.h"

@interface MCOMUITests : XCTestCase

@end

@implementation MCOMUITests

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}
/** TODO:
 1. Write test for create account (possitive):
 - work with date picker
 - work with tooltip
 - work with scroll
 - work with assertions +
 2. Write test for create account (negative):
 - work with modal windows
 - work with assertions
 3. Explore GreyCondition
 4. Implement navigation between pages +
 5. Ask iosDev how to hide initialization of the page(alloc [init]) - create own initialization
 6. Explore how to make test run one by one (order of test running). How to configure it - No way to configure
 7. Reports and screenshots - is it possible for earl grey
 8. Ability to run on remotely (saurcelabs)
 9. Ability to run in parallel
 10. Create presentation for needed info
 11. Move "launch app" into global variable
 12. Clear app after each test
 13. Explore ability to use api calls to clear app
 */

- (void) testLoyaltyBannerForGuest {
    // XCUITest Setup
    XCUIApplication *application = [[XCUIApplication alloc] init];
    [application launch];
    //application debug descriptions
    
    //Go to SignIn Page
    HomePage *homePage = [[HomePage alloc] init];
    
    //Try to Sign In
    SignInPage *signInPage = [homePage navigateToSignInPage];
    [signInPage logInWithEmail:@"anna3211@i.ua" password:@"Macys123"];
    
    //Log out
    AccountPage *accountPage = [[homePage getBottomNavComponent] navigateToAccount];
    [application swipeUp];
    [application swipeUp];
    [accountPage logOut];
}

- (void) testCreateUser {
    XCUIApplication *application = [[XCUIApplication alloc] init];
    [application launch];
    
    //Go to SignIn Page
    HomePage *homePage = [[HomePage alloc] init];
    SignInPage *signInPage = [homePage navigateToSignInPage];
    CreateAccountPage *createAccountPage = [signInPage clickOnAccountButton];
    
    StarRewardsPage *starRewardsPage = [createAccountPage createAccountForUser:[[[User alloc] init] createDefaultUser]];
    
    if([starRewardsPage isStarRewardsPageDisplayed] == true){
        NSLog(@"User creates account successfully");
    };
}

@end
