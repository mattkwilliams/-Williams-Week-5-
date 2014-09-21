//
//  ContactsViewController.m
//  Contacts
//
//  Created by Matt on 9/21/14.
//  Copyright (c) 2014 Matt Williams. All rights reserved.
//

#import "ContactsViewController.h"

@interface ContactsViewController ()

@end

@implementation ContactsViewController

- (void)viewDidLoad
{
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnViewContacts:(id)sender {
    [self dismissKeyboard];
    
    CGPoint scrollPoint = CGPointMake(0, self.btnBack.frame.origin.y);
    [self.scrollView setContentOffset:scrollPoint animated:YES];
}

- (IBAction)btnSave:(id)sender {
    
    [self dismissKeyboard];
    
    if ([self.txtContacts.text isEqual: @""])
    {
        self.txtContacts.text = @"Contacts\n";
    }
    
    self.txtContacts.text = [[NSString alloc] initWithFormat:
                                  @"%@ \n%@ \n%@ \n%@ \n%@ \n%@ \n%@ \n%@ \n%@ \n",
                                  self.txtContacts.text,
                                  self.txtFirstName.text,
                                  self.txtLastName.text,
                                  self.txtStreetAddress.text,
                                  self.txtCity.text,
                                  self.txtState.text,
                                  self.txtZipCode.text,
                                  self.txtPhone.text,
                                  self.txtEmail.text];
    
    self.txtFirstName.text = @"";
    self.txtLastName.text = @"";
    self.txtStreetAddress.text = @"";
    self.txtCity.text = @"";
    self.txtState.text = @"";
    self.txtZipCode.text = @"";
    self.txtPhone.text = @"";
    self.txtEmail.text = @"";
    
    CGPoint scrollPoint = CGPointMake(0, self.btnBack.frame.origin.y);
    [self.scrollView setContentOffset:scrollPoint animated:YES];
    
}

- (IBAction)btnBack:(id)sender {
    CGPoint scrollPoint = CGPointMake(0, 0);
    [self.scrollView setContentOffset:scrollPoint animated:YES];
}

-(IBAction) doneEditing:(id) sender {
    [sender resignFirstResponder];
}

-(void)dismissKeyboard {
    
    [self.txtFirstName resignFirstResponder];
    [self.txtLastName resignFirstResponder];
    [self.txtStreetAddress resignFirstResponder];
    [self.txtCity resignFirstResponder];
    [self.txtState resignFirstResponder];
    [self.txtZipCode resignFirstResponder];
    [self.txtPhone resignFirstResponder];
    [self.txtEmail resignFirstResponder];
}

- (void)textFieldDidBeginEditing:(UITextField *)textField {
    CGPoint scrollPoint = CGPointMake(0, textField.frame.origin.y);
    [self.scrollView setContentOffset:scrollPoint animated:YES];
}
- (void)textFieldDidEndEditing:(UITextField *)textField {
    [self.scrollView setContentOffset:CGPointZero animated:YES];
}
- (void)textViewDidBeginEditing:(UITextView *)textView {
    CGPoint scrollPoint = CGPointMake(0, textView.frame.origin.y);
    [self.scrollView setContentOffset:scrollPoint animated:YES];
}
- (void)textViewDidEndEditing:(UITextView *)textView {
    [self.scrollView setContentOffset:CGPointZero animated:YES];
}


@end
