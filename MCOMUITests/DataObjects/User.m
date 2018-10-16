//
//  User.m
//  MCOMUITests
//
//  Created by Anna Kliuieva on 10/2/18.
//  Copyright © 2018 Macys.com. All rights reserved.
//

#import "User.h"

@implementation User
- (User *) createDefaultUser {
    _name = @"John";
    _surname = @"Smith";
    _birthDate = @"3";
    _birthMonth = @"June";
    _email = [self generateEmail];
    _password = @"Password123";
    return self;
}

-(NSString *) generateEmail{
    NSMutableString* emailAddress = [NSMutableString stringWithFormat:@"anna%d@i.ua", arc4random_uniform(INT_MAX)];
    return emailAddress;
}
@end
