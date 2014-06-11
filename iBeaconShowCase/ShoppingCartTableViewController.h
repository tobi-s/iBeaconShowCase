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

@interface ShoppingCartTableViewController : UITableViewController
{
    ShoppingCart* shoppingCart;
}


@end
