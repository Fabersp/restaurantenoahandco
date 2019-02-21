//
//  TVCMenu.h
//  RestaurantNoahCo
//
//  Created by Fabricio Aguiar de Padua on 27/01/15.
//  Copyright (c) 2015 Pro Master Solution. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TVCMenu : UITableViewController{
    NSArray *MenuPrincipal, *recipes;
    NSString * IndexSelectStr;

}

@property (nonatomic, retain) NSString * IndexSelectStr;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;
@property (weak, nonatomic) IBOutlet UIView *ViewApper;

@end
