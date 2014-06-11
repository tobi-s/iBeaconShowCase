//
//  OrderCodeViewController.h
//  iBeaconShowCase
//
//  Created by iTobi on 11/06/14.
//  Copyright (c) 2014 Tobias Schade. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OrderCode.h"

@interface OrderCodeViewController : UIViewController
{
    OrderCode *orderCode;
}

@property (weak, nonatomic) IBOutlet UILabel *titleLable;
@property (weak, nonatomic) IBOutlet UILabel *detailLable;

@property OrderCode *orderCode;

@end
