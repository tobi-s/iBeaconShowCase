//
//  ShoppingCart.m
//  iBeaconShowCase
//
//  Created by iTobi on 11/06/14.
//  Copyright (c) 2014 Tobias Schade. All rights reserved.
//

#import "ShoppingCart.h"

@implementation ShoppingCart

@synthesize shoppingCartItems;

-(NSNumber *)addItemToCart:(ProductItem *)productItem
{
    if (shoppingCartItems == nil) {
        shoppingCartItems = [[NSMutableArray alloc] init];
    }
    
    [shoppingCartItems addObject:productItem];
    
    return [[NSNumber alloc] initWithInteger:[shoppingCartItems count]];
}

@end
