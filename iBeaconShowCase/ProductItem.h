//
//  ProductItem.h
//  iBeaconShowCase
//
//  Created by iTobi on 09/06/14.
//  Copyright (c) 2014 Tobias Schade. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ProductItem : NSObject{
    
    NSString *itemName;
    NSString *imageName;
    int *itemSize;
    int *priceTall;
    int *priceGrande;
    int *priceVenti;
    
}

@property NSString *itemName;
@property NSString *imageName;
@property int *itemSize;
@property int *priceTall;
@property int *priceGrande;
@property int *priceVenti;

- (id)initWithContent:(NSString *)_itemName andImage:(NSString *)_imageName andSize:(int *)_itemSize andPriceTall:(int *)_priceTall andPriceGrande:(int *)_priceGrande andPriceVenti:(int *)_priceVenti;

-(NSString *)itemSizeLabel;
-(int)currentItemSizePrice;

@end
