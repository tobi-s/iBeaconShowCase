//
//  ProductsTableViewController.m
//  iBeaconShowCase
//
//  Created by iTobi on 09/06/14.
//  Copyright (c) 2014 Tobias Schade. All rights reserved.
//

#import "ProductsTableViewController.h"
#import "ProductItem.h"

@interface ProductsTableViewController ()

@end

@implementation ProductsTableViewController

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
    
    
    [self initProductData];
}

-(void)initProductData
{
    NSNumber *n1 = [NSNumber numberWithInt:8];
    NSNumber *n2 = [NSNumber numberWithInt:10];
    NSNumber *n3 = [NSNumber numberWithInt:12];
    
    
    ProductItem *i1 = [[ProductItem alloc] initWithContent:@"TestProduct" andImage:@"cart.png" andSize:@"Tall" andPriceTall:n1 andPriceGrande:n2 andPriceVenti:n3];
    
    
    
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    NSLog(@"Prepare for Segue!");
    NSLog(@"%@", segue.identifier);
    
    
    
    
    
    
}


@end
