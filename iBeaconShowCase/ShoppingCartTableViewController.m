//
//  ShoppingCartTableViewController.m
//  iBeaconShowCase
//
//  Created by iTobi on 10/06/14.
//  Copyright (c) 2014 Tobias Schade. All rights reserved.
//

#import "ShoppingCartTableViewController.h"
#import "AppDelegate.h"
#import "OrderCode.h"

@interface ShoppingCartTableViewController ()

@end

@implementation ShoppingCartTableViewController

OrderCode *orderCode;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    shoppingCart = [appDelegate shoppingCart];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    
    return [shoppingCart.shoppingCartItems count];
}

- (void)viewWillAppear:(BOOL)animated
{
    [[self tableView] reloadData];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"productCell" forIndexPath:indexPath];
    
    // Default procedure in the if and in the else if shoppingcart is empty
  
        ProductItem *productItem = [shoppingCart.shoppingCartItems objectAtIndex:indexPath.row];
        cell.textLabel.text = [NSString stringWithFormat:@"1 x %@ (%@):\n%ld CHF",productItem.itemName, productItem.itemSizeLabel, (long)productItem.currentItemSizePrice];
        UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 10, 10)];
        imgView.image = [UIImage imageNamed:productItem.imageName];
        cell.imageView.image = imgView.image;

    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    [shoppingCart.shoppingCartItems removeObjectAtIndex:indexPath.row];
    
    NSString *newBadgeValue = [NSString stringWithFormat:@"%lu", (unsigned long)[shoppingCart.shoppingCartItems count]];
    
    if ([newBadgeValue  isEqual: @"0"]) {
        newBadgeValue = nil;
    }
    
    [[[[[self tabBarController] tabBar] items]
      objectAtIndex:1] setBadgeValue:newBadgeValue];
    
    [tableView reloadData];
}


- (IBAction)buyButtonClicked:(id)sender {
    
    // Some random hex id
    NSInteger *baseInt = arc4random() % 16777216;
    NSString *hex = [NSString stringWithFormat:@"%06X", (int)baseInt];
    
    NSDateFormatter *DateFormatter=[[NSDateFormatter alloc] init];
    [DateFormatter setDateFormat:@"dd.MM.yyyy hh:mm:ss"];
    
    orderCode = [[OrderCode alloc] init];
    
    orderCode.orderDetails = shoppingCart.createBill;
    orderCode.orderTitle = [NSString stringWithFormat:@"reference: %@\ndate: %@",hex, [DateFormatter stringFromDate:[NSDate date]]];
    
    if ([shoppingCart.shoppingCartItems count] > 0) {
        
        UIAlertView *message = [[UIAlertView alloc] initWithTitle:@"Please confirm purchase"
                                                          message:orderCode.orderDetails
                                                         delegate:self
                                                cancelButtonTitle:nil
                                                otherButtonTitles:nil];
        
        [message addButtonWithTitle:@"cancle"];
        [message addButtonWithTitle:@"buy"];
        
        [message show];
        
    }
    
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    
    if (buttonIndex == 1) {
        
        [appDelegate addOrderCodeDelegate:orderCode];
        appDelegate.shoppingCart = [[ShoppingCart alloc] init];
        shoppingCart = appDelegate.shoppingCart;
        orderCode = nil;
        
        [[[[[self tabBarController] tabBar] items]
          objectAtIndex:1] setBadgeValue:nil];
        
        [self tabBarController].selectedIndex = 2;
    }else{
        [self tabBarController].selectedIndex = 1;
    }
    
    
    
}

@end
