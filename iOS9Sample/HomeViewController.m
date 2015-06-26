//
//  HomeViewController.m
//  iOS9Sample
//
//  Created by buildagent on 6/26/15.
//  Copyright © 2015 WillowTreeApps. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@property (nonatomic, retain) IBOutlet UILabel *userLabel;
@property (nonatomic, retain) IBOutlet UIButton *logoutButton;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    [self.userLabel setText:self.username];
    
}

- (IBAction)logout:(id)sender {
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}


@end
