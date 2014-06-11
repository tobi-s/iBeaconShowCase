//
//  ShoppingCart.h
//  iBeaconShowCase
//
//  Created by iTobi on 11/06/14.
//  Copyright (c) 2014 Tobias Schade. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ProductItem.h"

@interface ShoppingCart : NSObject{
    NSMutableArray  *shoppingCartItems;
}

@property NSMutableArray* shoppingCartItems;

-(NSNumber *)addItemToCart:(ProductItem *) productItem;

@end
