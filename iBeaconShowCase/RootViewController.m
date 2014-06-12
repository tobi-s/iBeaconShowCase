//
//  RootViewController.m
//  iBeaconShowCase
//
//  Created by iTobi on 12/06/14.
//  Copyright (c) 2014 Tobias Schade. All rights reserved.
//

#import "RootViewController.h"
#import "ESTBeaconManager.h"
#import "ESTBeaconRegion.h"
#import "ESTBeacon.h"

@interface RootViewController () <ESTBeaconManagerDelegate>

@property (nonatomic, strong) ESTBeaconManager *beaconManager;
@property (nonatomic, strong) ESTBeaconRegion *beaconRegion;
@property (nonatomic, strong) ESTBeacon         *beacon;

@end

@implementation RootViewController

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
    
    
    self.beaconManager = [[ESTBeaconManager alloc] init];
    self.beaconManager.delegate = self;
    
    self.beaconRegion = [[ESTBeaconRegion alloc] initWithProximityUUID:[[NSUUID alloc] initWithUUIDString:@"B9407F30-F5F8-466E-AFF9-25556B57FE6D"]
                                                            identifier:@"EstimoteSampleRegion"];
    
    self.beaconRegion.notifyOnEntry = TRUE;
    self.beaconRegion.notifyOnExit = TRUE;

    
    [self.beaconManager startMonitoringForRegion:self.beaconRegion];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)startButton:(id)sender {
    


}
    
- (void)beaconManager:(ESTBeaconManager *)manager didEnterRegion:(ESTBeaconRegion *)region
{
    NSLog(@"Enter region.");
    
    UILocalNotification* localNotification = [[UILocalNotification alloc] init];
    localNotification.alertAction = @"Starbucks coffee 20% off";
    localNotification.alertBody = @"Your favorite coffee 20% off today - buy now and pick up at Starbucks!";
    localNotification.timeZone = [NSTimeZone defaultTimeZone];
    localNotification.soundName = UILocalNotificationDefaultSoundName;
        
    [[UIApplication sharedApplication] presentLocalNotificationNow:localNotification];
}

- (void)beaconManager:(ESTBeaconManager *)manager didExitRegion:(ESTBeaconRegion *)region
{
    NSLog(@"Exit region.");
}

    


@end
