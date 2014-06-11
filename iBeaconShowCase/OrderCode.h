//
//  OrderCode.h
//  iBeaconShowCase
//
//  Created by iTobi on 11/06/14.
//  Copyright (c) 2014 Tobias Schade. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OrderCode : NSObject{
    NSString* orderTitle;
    NSString* orderDetails;
}

@property NSString* orderTitle;
@property NSString* orderDetails;

@end
