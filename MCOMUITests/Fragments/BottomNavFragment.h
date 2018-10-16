//
//  BottomNavFragment.h
//  Shop
//
//  Created by Anna Kliuieva on 9/30/18.
//  Copyright © 2018 Macys.com. All rights reserved.
//

@class AccountPage;

@protocol BottomNavProtocol;

@interface BottomNavFragment : NSObject
- (AccountPage *) navigateToAccount;
@end

@protocol BottomNavProtocol <NSObject>
- (BottomNavFragment *) getBottomNavComponent;
@end
