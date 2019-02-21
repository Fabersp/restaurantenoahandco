//
//  DatailsNew.h
//  SidebarDemo
//
//  Created by Fabricio Aguiar de Padua on 06/05/15.
//  Copyright (c) 2015 Appcoda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DatailsNew : UIViewController{
    NSDictionary * detailsNew;
    
}
@property (weak, nonatomic) IBOutlet UIImageView *imageFull;

@property (weak, nonatomic) IBOutlet UILabel *lbDetailsPublish;

@property (weak, nonatomic) IBOutlet UITextView *lbTextFull;

@property (nonatomic, retain) NSDictionary * detailsNew;
@property (weak, nonatomic) IBOutlet UILabel *lbtitle;

@property (weak, nonatomic) IBOutlet UILabel *lbResume;


@end
