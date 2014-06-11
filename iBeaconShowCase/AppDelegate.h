//
//  AppDelegate.h
//  iBeaconShowCase
//
//  Created by iTobi on 09/06/14.
//  Copyright (c) 2014 Tobias Schade. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ShoppingCart.h"
#import "ProductItem.h"
#import "OrderCode.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    ShoppingCart *shoppingCart;
    NSMutableArray *orderCodes;
}

@property (strong, nonatomic) UIWindow *window;

// Not sure if this is the right way to do
@property ShoppingCart *shoppingCart;
@property NSMutableArray *orderCodes;

-(NSNumber*) addItemToShoppingCartDelegate:(ProductItem*) productItem;
-(void) addOrderCodeDelegate:(OrderCode*) orderCode;

@end
