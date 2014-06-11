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

- (id)initWithContent:(NSString *)_itemName andImage:(NSString *)_imageName andSize:(int *)_itemSize andPriceTall:(int *)_priceTall andPriceGrande:(int *)_priceGrande andPriceVenti:(int *)_priceVenti{
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

- (int)currentItemSizePrice
{
    int itemSizePrice;
    
    if (itemSize == (int *)0) {
        itemSizePrice = (int)priceTall;
    }else if (itemSize == (int *)1){
        itemSizePrice = (int)priceGrande;
    }else if (itemSize == (int *)2){
        itemSizePrice = (int)priceVenti;
    }
    
    return itemSizePrice;
}


-(NSString *)itemSizeLabel
{
    NSString *itemSizeLabel;
    
    if (itemSize == 0) {
        itemSizeLabel = @"tall";
    }else if (itemSize == (int *)1){
        itemSizeLabel = @"grande";
    }else if (itemSize == (int *)2){
        itemSizeLabel = @"venti";
    }
    
    return itemSizeLabel;
}


@end
