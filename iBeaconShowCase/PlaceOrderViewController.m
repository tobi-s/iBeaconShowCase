//
//  PlaceOrderViewController.m
//  iBeaconShowCase
//
//  Created by iTobi on 09/06/14.
//  Copyright (c) 2014 Tobias Schade. All rights reserved.
//

#import "PlaceOrderViewController.h"
#import "ShoppingCartTableViewController.h"
#import "AppDelegate.h"

@interface PlaceOrderViewController ()
@end

@implementation PlaceOrderViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.productItemLabel.text = self.productItem.itemName;
    
    
    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 10, 10)];
    imgView.image = [UIImage imageNamed:self.productItem.imageName];
    
    self.productImage.image = imgView.image;
    
    NSMutableString *tallString = [[NSMutableString alloc] initWithString: @"tall "];
    NSMutableString *grandeString = [[NSMutableString alloc] initWithString: @"grande "];
    NSMutableString *ventiString = [[NSMutableString alloc] initWithString: @"venti "];
    
    [tallString appendString: self.productItem.priceTall.stringValue];
    [grandeString appendString: self.productItem.priceGrande.stringValue];
    [ventiString appendString: self.productItem.priceVenti.stringValue];
    
    [tallString appendString: @" CHF"];
    [grandeString appendString: @" CHF"];
    [ventiString appendString: @" CHF"];
    
    self.priceList = [[NSArray alloc] initWithObjects:tallString,grandeString, ventiString, nil];
    
    [self.productSizePickerView selectRow:1 inComponent:0 animated:FALSE];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Picker View

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent: (NSInteger)component
{
    return [self.priceList count];
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [self.priceList objectAtIndex:row];
    
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    self.productItem.itemSize = [[NSNumber alloc] initWithInteger:row];
}


 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
 {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
     
     AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
     
     NSNumber *newBadgeValue = [appDelegate addItemToShoppingCartDelegate:self.productItem];

     [[[[[self tabBarController] tabBar] items]
       objectAtIndex:1] setBadgeValue:[NSString stringWithFormat:@"%@", newBadgeValue]];
     
 }




@end
