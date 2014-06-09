//
//  ProductItem.m
//  iBeaconShowCase
//
//  Created by iTobi on 09/06/14.
//  Copyright (c) 2014 Tobias Schade. All rights reserved.
//

#import "ProductItem.h"

@implementation ProductItem

@synthesize itemName;
@synthesize imageName;
@synthesize itemSize;
@synthesize priceTall;
@synthesize priceGrande;
@synthesize priceVenti;

- (id)initWithContent:(NSString *)_itemName andImage:(NSString *)_imageName andSize:(NSString *)_itemSize andPriceTall:(NSNumber *)_priceTall andPriceGrande:(NSNumber *)_priceGrande andPriceVenti:(NSNumber *)_priceVenti{
    self = [super init];
    if (self) {
                itemName = _itemName;
                imageName = _imageName;
                itemSize = _itemSize;
                priceTall = _priceTall;
                priceGrande = _priceGrande;
                priceVenti = _priceVenti;
        
    }
    return self;
}


@end
