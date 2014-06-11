//
//  ProductsTableViewController.m
//  iBeaconShowCase
//
//  Created by iTobi on 09/06/14.
//  Copyright (c) 2014 Tobias Schade. All rights reserved.
//

#import "ProductsTableViewController.h"
#import "ProductItem.h"
#import "AddItemTableViewController.h"

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
    
    AddItemTableViewController *addItemTableViewController = [segue destinationViewController];
    
    addItemTableViewController.productItems = self.hotDrinksProductItems;
    
}


-(void)initProductData
{
    int *n1 = (int *)8;
    int *n2 = (int *)10;
    int *n3 = (int *)12;
    
    int *n4 = (int *)1;
    
    NSMutableArray *array = [NSMutableArray new];
    
    ProductItem *i1 = [[ProductItem alloc] initWithContent:@"Caffè Latte" andImage:@"caffe_latte.jpg" andSize:n4 andPriceTall:n1 andPriceGrande:n2 andPriceVenti:n3];
    ProductItem *i2 = [[ProductItem alloc] initWithContent:@"Cappuccino" andImage:@"cappucino.jpg" andSize:n4 andPriceTall:n1 andPriceGrande:n2 andPriceVenti:n3];
    ProductItem *i3 = [[ProductItem alloc] initWithContent:@"Espresso" andImage:@"Espresso.jpg" andSize:n4 andPriceTall:n1 andPriceGrande:n2 andPriceVenti:n3];
    ProductItem *i4 = [[ProductItem alloc] initWithContent:@"Vanilla Latte" andImage:@"vanilla_latte.jpg" andSize:n4 andPriceTall:n1 andPriceGrande:n2 andPriceVenti:n3];
    ProductItem *i5 = [[ProductItem alloc] initWithContent:@"Caramel Macchiato" andImage:@"caramel_machiato.jpg" andSize:n4 andPriceTall:n1 andPriceGrande:n2 andPriceVenti:n3];
    ProductItem *i6 = [[ProductItem alloc] initWithContent:@"Chai Tea" andImage:@"chai_tea.jpg" andSize:n4 andPriceTall:n1 andPriceGrande:n2 andPriceVenti:n3];
    ProductItem *i7 = [[ProductItem alloc] initWithContent:@"Earl Grey Tea" andImage:@"earl_grey_tea.jpg" andSize:n4 andPriceTall:n1 andPriceGrande:n2 andPriceVenti:n3];
    ProductItem *i8 = [[ProductItem alloc] initWithContent:@"Chai Tea Latte" andImage:@"chai_tea_latte.jpg" andSize:n4 andPriceTall:n1 andPriceGrande:n2 andPriceVenti:n3];
    
    [array addObject:i1];
    [array addObject:i2];
    [array addObject:i3];
    [array addObject:i4];
    [array addObject:i5];
    [array addObject:i6];
    [array addObject:i7];
    [array addObject:i8];
    
    self.hotDrinksProductItems = array;
}

@end
