//
//  User.h
//  MCOMUITests
//
//  Created by Anna Kliuieva on 10/2/18.
//  Copyright © 2018 Macys.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject
@property NSString *name;
@property NSString *surname;
@property NSString *birthDate;
@property NSString *email;
@property NSString *password;
@property NSString *birthMonth;

//TODO: move to init
- (User *) createDefaultUser;
@end
