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

- (id)initWithContent:(NSString *)_itemName andImage:(NSString *)_imageName andSize:(NSNumber *)_itemSize andPriceTall:(NSNumber *)_priceTall andPriceGrande:(NSNumber *)_priceGrande andPriceVenti:(NSNumber *)_priceVenti{
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


// Little ugly helpers....

- (NSNumber *)currentItemSizePrice
{
    NSNumber *itemSizePrice;
    
    if (itemSize.intValue == 0) {
        itemSizePrice = priceTall;
    }else if (itemSize.intValue == 1){
        itemSizePrice = priceGrande;
    }else if (itemSize.intValue == 2){
        itemSizePrice = priceVenti;
    }
    
    return itemSizePrice;
}


-(NSString *)itemSizeLabel
{
    NSString *itemSizeLabel;
    
    if (itemSize.intValue == 0) {
        itemSizeLabel = @"tall";
    }else if (itemSize.intValue == 1){
        itemSizeLabel = @"grande";
    }else if (itemSize.intValue == 2){
        itemSizeLabel = @"venti";
    }
    
    return itemSizeLabel;
}


@end
