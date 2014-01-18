//
//  RedeemViewController.m
//  Pizza Likes
//
//  Created by Michael Bishoff on 1/18/14.
//  Copyright (c) 2014 Michael Bishoff. All rights reserved.
//

#import "RedeemViewController.h"

@interface RedeemViewController ()
@property (weak, nonatomic) IBOutlet UIButton *redeemButton;

@end

@implementation RedeemViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)pressRedeemButton:(id)sender {
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Cannot Redeem Yet." message:nil delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
    [alertView show];
}



@end