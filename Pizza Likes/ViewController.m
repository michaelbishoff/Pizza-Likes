//
//  ViewController.m
//  Pizza Likes
//
//  Created by Michael Bishoff on 1/18/14.
//  Copyright (c) 2014 Michael Bishoff. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UITextField *usernameTextField;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [[UIColor alloc] initWithRed:(230/255.0) green:(230/255.0) blue:(230/255.0) alpha:1];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [_usernameTextField resignFirstResponder];
    
//    if ( !_usernameTextField.hasText && _passwordTextField.isSelected){
        [_passwordTextField resignFirstResponder];
//    }
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField {
//    [textField resignFirstResponder];
    
    if(textField == _usernameTextField){
        [_passwordTextField becomeFirstResponder];
    }
    else if (textField == _passwordTextField){
        [textField resignFirstResponder];
        
        
    }
    return YES;
    // Do a pretty animation
//    [self dismissViewControllerAnimated:YES completion:nil];
//    return YES;
//
//    if (textField == _passwordTextField && [_usernameTextField.text isEqualToString:nil]){
//        
//        [_usernameTextField becomeFirstResponder];
//        return NO;
//    }
//    else if (textField == _usernameTextField && [_passwordTextField.text isEqualToString:nil]){
//        
//        [_passwordTextField becomeFirstResponder];
//        return NO;
//    }
//    
//    [textField resignFirstResponder];
//    
//    return YES;
}

-(BOOL) shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender{
    
    if (!_usernameTextField.hasText || !_passwordTextField.hasText){
        return NO;
    }
    
    return YES;
}


//- (BOOL) textFieldShouldReturn:(UITextField *)passwordTextField{
//    [self save:nil];
//    return YES;
//}

//-(void) save:sender {
//    double *count = _homeCount.value;
//    NSString *newItem = passwordTextField.text;
//    if (newItem != nil){
//        NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
//        NSMutableArray *displayStrings = [[[userDefaults objectForKey:@"DisplayStrings"] mutableCopy] autoret];
//        [displayStrings addObject:newItem];
//        [userDefaults setObject:displayStrings forKey:@"DisplayStrings"];
//        [userDefaults synchronize];
//    }
//    
//    // Do a pretty animation
//    [self dismissViewControllerAnimated:YES completion:nil];
//}


@end
