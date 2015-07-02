//
//  ViewController.m
//  iOS9Sample
//
//  Created by buildagent on 6/26/15.
//  Copyright © 2015 WillowTreeApps. All rights reserved.
//

#import "ViewController.h"
#import "HomeViewController.h"

@interface ViewController ()

@property (nonatomic, retain) IBOutlet UITextField *usernameField;
@property (nonatomic, retain) IBOutlet UITextField *passwordField;
@property (nonatomic, retain) IBOutlet UIButton *loginButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self designButton];
#warning Oh no!
}

- (void)designButton {
    [self.loginButton.layer setCornerRadius:10.0];
    [self.loginButton setClipsToBounds:YES];
    [self.loginButton setBackgroundColor:[UIColor colorWithRed:0.506 green:0.776 blue:0.867 alpha:1] /*#81c6dd*/];
}

- (IBAction)login:(id)sender {
    if ([self isLoginSuccessfulWithUsername:self.usernameField.text andPassword:self.passwordField.text]) {
        //Let's login now
        [self completeLogin];
    }
    else {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Login Unsuccessful" message:@"The username and password is an invalid combination" preferredStyle:UIAlertControllerStyleAlert];
        [alert addAction:[UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction * __nonnull action) {
            //Nothing
        }]];
        [self presentViewController:alert animated:YES completion:nil];
    }
}

- (BOOL)isLoginSuccessfulWithUsername:(NSString *)username andPassword:(NSString *)password {
    return ([username isEqualToString:@"user"] && [password isEqualToString:@"pass"]);
}

- (void)completeLogin {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    HomeViewController *home = [storyboard instantiateViewControllerWithIdentifier:@"homeView"];
    home.username = self.usernameField.text;
    [self presentViewController:home animated:YES completion:nil];
}

@end
