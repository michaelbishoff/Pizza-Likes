//
//  ProfileViewController.m
//  Pizza Likes
//
//  Created by Michael Bishoff on 1/18/14.
//  Copyright (c) 2014 Michael Bishoff. All rights reserved.
//

#import "ProfileViewController.h"
#import "AppDelegate.h"

@interface ProfileViewController ()
@property (weak, nonatomic) IBOutlet UILabel *numPizzasToGive;
@property (strong, atomic) AppDelegate *app;
@property (weak, nonatomic) IBOutlet UIButton *addSlices;

@end

@implementation ProfileViewController

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
    self.app = (AppDelegate *)[UIApplication sharedApplication].delegate;
    self.view.backgroundColor = [[UIColor alloc] initWithRed:(230/255.0) green:(230/255.0) blue:(230/255.0) alpha:1];
    _numPizzasToGive.text = [NSString stringWithFormat:@"%d", [self.app.numPizzas integerValue]];
//    _numPizzasToGive.text = [NSString stringWithFormat:@"%d", 31];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)addSlicesPressed:(id)sender {
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Pizza Bought!" message:nil delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
    [alertView show];
    
    NSNumber *temp = [[NSNumber alloc] initWithInt:10];
    NSNumber *sum = [NSNumber numberWithInteger:([self.app.numPizzas integerValue] + [temp integerValue])];
    [self.app setNumPizzas:sum];
    
    _numPizzasToGive.text = [NSString stringWithFormat:@"%d", [self.app.numPizzas integerValue]];
    
    
}

@end
