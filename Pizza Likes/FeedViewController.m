//
//  FeedViewController.m
//  Pizza Likes
//
//  Created by Michael Bishoff on 1/18/14.
//  Copyright (c) 2014 Michael Bishoff. All rights reserved.
//

#import "FeedViewController.h"
#import "AppDelegate.h"
//#import <Pinterest/Pinterest.h>

@interface FeedViewController ()//{
//    Pinterest *_pinterest;
//}

@property (weak, nonatomic) IBOutlet UIButton *pizzaIt;
@property (weak, nonatomic) IBOutlet UIButton *pinButton;
@property (strong, atomic) AppDelegate *app;
//@property (strong, atomic) UIButton *pinItButton;

@end

@implementation FeedViewController

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
    
    
    // Pinterest Button
//    _pinItButton = [Pinterest pinItB?utton];
//    [_pinItButton addTarget:self
//                     action:@selector(pinIt:)
//           forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:_pinItButton];
    
}


//- (void)pinIt:(id)sender
//{
//    [_pinterest createPinWithImageURL:@"http://placekitten.com/500/400"
//                            sourceURL:@"http://placekitten.com"
//                          description:@"Pinning from Pin It Demo"];
//}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)pressPizzaButton:(id)sender {
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Pizza Slice Sent!" message:nil delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
    [alertView show];
    
    NSNumber *temp = [[NSNumber alloc] initWithInt:1];
    NSNumber *sum = [NSNumber numberWithInteger:([self.app.numPizzas integerValue] - [temp integerValue])];
    [self.app setNumPizzas:sum];
    
}
- (IBAction)pressPinButton:(id)sender {
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Pinned!" message:nil delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
    [alertView show];
    
}

@end
