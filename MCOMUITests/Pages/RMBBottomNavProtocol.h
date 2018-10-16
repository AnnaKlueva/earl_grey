//
//  RMBBottomNavProtocol.h
//  MCOMUITests
//
//  Created by Anna Kliuieva on 10/11/18.
//  Copyright © 2018 Macys.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BottomNavFragment.h"

@protocol RMBBottomNavProtocol : NSObject
-(BottomNavFragment* ) getBottomNavComponent;
@end

