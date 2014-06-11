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

@synthesize productItem;
@synthesize priceList;

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
    self.productItemLabel.text = productItem.itemName;
    
    
    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 10, 10)];
    imgView.image = [UIImage imageNamed:productItem.imageName];
    
    self.productImage.image = imgView.image;

    NSMutableString *tallString = [[NSMutableString alloc] initWithFormat:@"tall %ld CHF", (long)productItem.priceTall];
    NSMutableString *grandeString = [[NSMutableString alloc] initWithFormat: @"grande %ld CHF", (long)productItem.priceGrande];
    NSMutableString *ventiString = [[NSMutableString alloc] initWithFormat: @"venti %ld CHF", (long)productItem.priceVenti];

    
    priceList = [[NSArray alloc] initWithObjects:tallString,grandeString, ventiString, nil];
    
    [self.productSizePickerView selectRow:1 inComponent:0 animated:FALSE];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)addToCartButton:(id)sender {
    
    
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    
    NSNumber *newBadgeValue = [appDelegate addItemToShoppingCartDelegate:productItem];
    
    [[[[[self tabBarController] tabBar] items]
      objectAtIndex:1] setBadgeValue:[NSString stringWithFormat:@"%@", newBadgeValue]];
    
    [self.navigationController popToRootViewControllerAnimated:YES];
    
}

// Picker View

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent: (NSInteger)component
{
    return [priceList count];
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [priceList objectAtIndex:row];
    
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    productItem.itemSize = (int *)row;
}




@end
