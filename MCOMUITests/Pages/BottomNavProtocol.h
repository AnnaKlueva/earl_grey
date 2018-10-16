//
//  Header.h
//  Shop
//
//  Created by Anna Kliuieva on 10/12/18.
//  Copyright © 2018 Macys.com. All rights reserved.
//
#import "BottomNavFragment.h"
#import <Foundation/Foundation.h>

@protocol BottomNavProtocol <NSObject>
- (BottomNavFragment *) getBottomNavComponent;
@end
