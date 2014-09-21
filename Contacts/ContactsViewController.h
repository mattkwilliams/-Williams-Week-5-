//
//  ContactsViewController.h
//  Contacts
//
//  Created by Matt on 9/21/14.
//  Copyright (c) 2014 Matt Williams. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContactsViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UITextField *txtFirstName;
@property (weak, nonatomic) IBOutlet UITextField *txtLastName;
@property (weak, nonatomic) IBOutlet UITextField *txtStreetAddress;
@property (weak, nonatomic) IBOutlet UITextField *txtCity;
@property (weak, nonatomic) IBOutlet UITextField *txtState;
@property (weak, nonatomic) IBOutlet UITextField *txtZipCode;
@property (weak, nonatomic) IBOutlet UITextField *txtPhone;
@property (weak, nonatomic) IBOutlet UITextField *txtEmail;
@property (weak, nonatomic) IBOutlet UITextView *txtContacts;
@property (weak, nonatomic) IBOutlet UIButton *btnBack;


- (IBAction)btnViewContacts:(id)sender;
- (IBAction)btnSave:(id)sender;
- (IBAction)btnBack:(id)sender;
- (IBAction) doneEditing:(id) sender;


@end
