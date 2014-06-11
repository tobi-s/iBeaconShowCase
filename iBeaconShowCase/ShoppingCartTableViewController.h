//
//  ShoppingCartTableViewController.h
//  iBeaconShowCase
//
//  Created by iTobi on 10/06/14.
//  Copyright (c) 2014 Tobias Schade. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ProductItem.h"
#import "ShoppingCart.h"
#import "AppDelegate.h"

@interface ShoppingCartTableViewController : UITableViewController<UIAlertViewDelegate>
{
    ShoppingCart* shoppingCart;
    AppDelegate *appDelegate;
}


@end
