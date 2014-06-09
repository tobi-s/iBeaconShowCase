//
//  PlaceOrderViewController.h
//  iBeaconShowCase
//
//  Created by iTobi on 09/06/14.
//  Copyright (c) 2014 Tobias Schade. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ProductItem.h"

@interface PlaceOrderViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *productItemLabel;
@property (weak, nonatomic) IBOutlet UIImageView *productImage;

@property (weak, nonatomic) IBOutlet UIPickerView *productSizePickerView;

@property ProductItem *productItem;

@end
