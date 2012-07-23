//
//  ViewController.m
//  interfaceExamples
//
//  Created by Mohsen Sanjari on 19/07/12.
//  Copyright (c) 2012 home. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize datePicker;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setDatePicker:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)dsiplay:(id)sender {
    NSDate *chosen = [datePicker date];
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"EEEE"];
    NSString *weekdate = [formatter stringFromDate:chosen];
    NSString *message = [NSString stringWithFormat:@"The day is %@", weekdate];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"What day is that?" message:message delegate:nil cancelButtonTitle:@"Thanks" otherButtonTitles: nil];
    [alert show];
    
}
@end
