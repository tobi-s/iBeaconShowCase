//
//  ShoppingCartTableViewController.m
//  iBeaconShowCase
//
//  Created by iTobi on 10/06/14.
//  Copyright (c) 2014 Tobias Schade. All rights reserved.
//

#import "ShoppingCartTableViewController.h"

@interface ShoppingCartTableViewController ()

@property NSMutableArray *productItemsCart;

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
    
    NSLog(@"loaded view");
    NSLog(@"%lu", (unsigned long)[self.productItemsCart count]);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSString *)addItemToCart:(ProductItem *)productItem
{
    
    if (_productItemsCart == Nil) {
        _productItemsCart = [[NSMutableArray alloc] init];
    }
    
    [_productItemsCart addObject:productItem];
    
    return [NSString stringWithFormat:@"%lu", (unsigned long)[_productItemsCart count]];
    
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.productItemsCart count];
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"productCell" forIndexPath:indexPath];
    
    ProductItem *productItem = [self.productItemsCart objectAtIndex:indexPath.row];
    cell.textLabel.text = productItem.itemName;
    
    
    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 10, 10)];
    imgView.image = [UIImage imageNamed:productItem.imageName];
    
    cell.imageView.image = imgView.image;
    
    return cell;
}





@end
