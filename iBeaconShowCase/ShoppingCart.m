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

-(NSString *)createBill
{
    NSMutableString *bill = [[NSMutableString alloc] init];
    int total = 0;
    
    for (ProductItem *productItem in shoppingCartItems)
    {
        [bill appendFormat:@"1 x %@ (%@): %ld CHF\n",productItem.itemName, productItem.itemSizeLabel, (long)productItem.currentItemSizePrice];
        total += productItem.currentItemSizePrice;
    }
    
    [bill appendFormat:@"\ntotal: %d CHF", total];
    
    return bill;
}

@end
