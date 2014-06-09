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
    NSString *itemSize;
    NSNumber *priceTall;
    NSNumber *priceGrande;
    NSNumber *priceVenti;
    
}

@property NSString *itemName;
@property NSString *imageName;
@property NSString *itemSize;
@property NSNumber *priceTall;
@property NSNumber *priceGrande;
@property NSNumber *priceVenti;

- (id)initWithContent:(NSString *)_itemName andImage:(NSString *)_imageName andSize:(NSString *)_itemSize andPriceTall:(NSNumber *)_priceTall andPriceGrande:(NSNumber *)_priceGrande andPriceVenti:(NSNumber *)_priceVenti;

@end
