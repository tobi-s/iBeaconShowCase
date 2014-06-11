//
//  OrderCodeTableViewController.m
//  iBeaconShowCase
//
//  Created by iTobi on 11/06/14.
//  Copyright (c) 2014 Tobias Schade. All rights reserved.
//

#import "OrderCodeTableViewController.h"
#import "AppDelegate.h"
#import "OrderCodeViewController.h"

@interface OrderCodeTableViewController ()

@end


@implementation OrderCodeTableViewController

@synthesize orderCodes;

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
    orderCodes = [appDelegate orderCodes];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    [[self tableView] reloadData];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [orderCodes count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"productCell" forIndexPath:indexPath];
    
    // Default procedure in the if and in the else if shoppingcart is empty
    
    cell.textLabel.text = [NSString stringWithFormat:@"%@", [[orderCodes objectAtIndex:indexPath.row] orderTitle]];

    return cell;
}




 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
 {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
     
     
     NSIndexPath *i = [self.tableView indexPathForSelectedRow];
     
     OrderCodeViewController *ocvc = (OrderCodeViewController *)[segue destinationViewController];
     ocvc.orderCode = [orderCodes objectAtIndex:i.row];
 }


@end
