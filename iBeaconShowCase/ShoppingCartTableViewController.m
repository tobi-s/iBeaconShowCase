//
//  ShoppingCartTableViewController.m
//  iBeaconShowCase
//
//  Created by iTobi on 10/06/14.
//  Copyright (c) 2014 Tobias Schade. All rights reserved.
//

#import "ShoppingCartTableViewController.h"
#import "AppDelegate.h"

@interface ShoppingCartTableViewController ()

@end

@implementation ShoppingCartTableViewController

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
  
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    shoppingCart = appDelegate.shoppingCart;
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



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"productCell" forIndexPath:indexPath];
    
    ProductItem *productItem = [shoppingCart.shoppingCartItems objectAtIndex:indexPath.row];
    cell.textLabel.text = productItem.itemName;
    
    
    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 10, 10)];
    imgView.image = [UIImage imageNamed:productItem.imageName];
    
    cell.imageView.image = imgView.image;
    
    return cell;
}





@end
