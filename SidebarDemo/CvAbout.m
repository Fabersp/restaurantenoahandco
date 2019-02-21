//
//  CvAbout.m
//  RestaurantNoahCo
//
//  Created by Fabricio Aguiar de Padua on 16/02/15.
//  Copyright (c) 2015 Pro Master Solution. All rights reserved.
//

#import "CvAbout.h"
#import "SWRevealViewController.h"

#define kRevisionNumber

@interface CvAbout ()

@end

@implementation CvAbout
    
@synthesize Version;
@synthesize ViewApper;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [ViewApper setFrame:[[UIScreen mainScreen] bounds]];
    
    
    
    [self.navigationController.view addSubview:ViewApper];
    
    SWRevealViewController *revealViewController = self.revealViewController;
    if ( revealViewController )
    {
        [self.sidebarButton setTarget: self.revealViewController];
        [self.sidebarButton setAction: @selector( revealToggle: )];
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    }

    
    UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed:@"brand"] drawInRect:self.view.bounds];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    UIImageView* img = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"LogoNovo"]];
    self.navigationItem.titleView = img;
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:image];
    
    //NSString *appVersion =
    BtnCallUs.layer.cornerRadius = 10.0f;
    BtnCallUs.layer.masksToBounds = YES;

    BtnSendEmail.layer.cornerRadius = 10.0f;
    BtnSendEmail.layer.masksToBounds = YES;
    
    NSDictionary *infoDictionary = [[NSBundle mainBundle] infoDictionary];
    Version.text = [NSString  stringWithFormat:@"Version %@", [infoDictionary objectForKey:@"CFBundleShortVersionString"]];
    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)BtnCallUs:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel:016239144"]];
}

- (IBAction)BtnFacebook:(id)sender {
    
    NSURL *fanPageURL = [NSURL URLWithString:@"fb://profile/262701957219446"];
    
    if (![[UIApplication sharedApplication] openURL: fanPageURL]) {
        //fanPageURL failed to open.  Open the website in Safari instead
        NSURL *webURL = [NSURL URLWithString:@"http://www.facebook.com/pages/Blackout-Labs/262701957219446"];
        [[UIApplication sharedApplication] openURL: webURL];
    }
}

- (void)mailComposeController:(MFMailComposeViewController*)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error
{
    //	[self dismissModalViewControllerAnimated:YES];
    [self becomeFirstResponder];
    [self dismissViewControllerAnimated:NO completion:nil];
}

- (IBAction)BtnSendEmail:(id)sender {
    if ([MFMailComposeViewController canSendMail])
    {
        MFMailComposeViewController *mailer = [[MFMailComposeViewController alloc] init];
        
        mailer.mailComposeDelegate= (id)self;
        
        //[[mailer navigationBar] setTintColor:[UIColor whiteColor]];
        
        [mailer setSubject:@"Contact"];
        
        NSArray *toRecipients = [NSArray arrayWithObjects:@"noah@noahandco.ie", nil];
        [mailer setToRecipients:toRecipients];
        // only for iPad
        mailer.modalPresentationStyle = UIModalPresentationPageSheet;
        [self presentViewController:mailer animated:YES completion:^{NSLog (@"Action Completed");}];
    }
    else
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error"
                                                        message:@"This device not suport send e-mail."
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles: nil];
        [alert show];
    }

    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
