//
//  CvAbout.h
//  RestaurantNoahCo
//
//  Created by Fabricio Aguiar de Padua on 16/02/15.
//  Copyright (c) 2015 Pro Master Solution. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface CvAbout : UIViewController <MFMailComposeViewControllerDelegate>{
    
    __weak IBOutlet UIButton *BtnCallUs;
    __weak IBOutlet UIButton *BtnSendEmail;
    
}


@property (weak, nonatomic) IBOutlet UILabel *Version;

@property (weak, nonatomic) IBOutlet UIButton *btnlikebutton;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;
@property (weak, nonatomic) IBOutlet UIView *ViewApper;




@end
