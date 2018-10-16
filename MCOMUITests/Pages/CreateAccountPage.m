//
//  CreateAccountPage.m
//  MCOMUITests
//
//  Created by Anna Kliuieva on 10/2/18.
//  Copyright © 2018 Macys.com. All rights reserved.
//

#import "CreateAccountPage.h"

@implementation CreateAccountPage
static NSString *const emailField = @"RMBAutomationProfileTextFieldEmail";
static NSString *const nameField = @"RMBAutomationProfileTextFieldFirstName";
static NSString *const surnameField = @"RMBAutomationProfileTextFieldLastName";
static NSString *const birthDatePicker = @"";
static NSString *const birthMonthPicker = @"";
static NSString *const password = @"RMBAutomationProfileTextFieldPassword";
static NSString *const createAccountButton = @"RMBAutomationProfileButtonSubmit";
static NSString *const birthDateField = @"RMBAutomationProfileDropdownDateOfBirth";

- (StarRewardsPage *) createAccountForUser: (User *) user {
    [[EarlGrey selectElementWithMatcher:grey_accessibilityID(nameField)] performAction:grey_clearText()];
    [[EarlGrey selectElementWithMatcher:grey_accessibilityID(nameField)] performAction:grey_typeText(user.name)];
    [[EarlGrey selectElementWithMatcher:grey_accessibilityID(surnameField)] performAction:grey_clearText()];
    [[EarlGrey selectElementWithMatcher:grey_accessibilityID(surnameField)] performAction:grey_typeText(user.surname)];
    [[EarlGrey selectElementWithMatcher:grey_accessibilityID(emailField)] performAction:grey_clearText()];
    [[EarlGrey selectElementWithMatcher:grey_accessibilityID(emailField)] performAction:grey_typeText(user.email)];
    [[EarlGrey selectElementWithMatcher:grey_accessibilityID(password)] performAction:grey_clearText()];
    [[EarlGrey selectElementWithMatcher:grey_accessibilityID(password)] performAction:grey_typeText(user.password)];
    [[EarlGrey selectElementWithMatcher:grey_accessibilityID(@"RMBAutomationKeyboardControlsDone")] performAction:grey_tap()];
    [[EarlGrey selectElementWithMatcher:grey_accessibilityID(birthDateField)] performAction:grey_tap()];
    
    XCUIApplication *application = [[XCUIApplication alloc] init];
    [[application.pickerWheels elementBoundByIndex:0] adjustToPickerWheelValue:@"March"];
    [[application.pickerWheels elementBoundByIndex:1] adjustToPickerWheelValue:@"4"];
    [[EarlGrey selectElementWithMatcher:grey_accessibilityID(@"RMBAutomationKeyboardControlsDone")] performAction:grey_tap()];
    
    [application swipeUp];
    [[EarlGrey selectElementWithMatcher:grey_accessibilityID(createAccountButton)] performAction:grey_tap()];
    return [[StarRewardsPage alloc] init];
}

@end
