//
//  TableNews.h
//  SidebarDemo
//
//  Created by Fabricio Aguiar de Padua on 29/04/15.
//  Copyright (c) 2015 Appcoda. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Reachability.h"

@interface TableNews : UITableViewController{
    NSArray * news, * details;
    NSMutableData * data;
    
    // Define keys
    NSString *title;
    NSString *thumbnail;
    NSString *detail;
    NSString *date;
    Reachability* hostReach;
    Reachability* internetReach;
    Reachability* wifiReach;
    
    int *host, * Wifi, * WWA;
    
    BOOL connetion;
    
    NSString * summaryLabel, * remoteHostStatusField, * internetConnectionStatusField, * localWiFiConnectionStatusField;
    
    

}

@property (weak, nonatomic) IBOutlet UIBarButtonItem *BtnRefresh;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;

@property (nonatomic, retain) NSString  * summaryLabel, * remoteHostStatusField, * internetConnectionStatusField, * localWiFiConnectionStatusField;
@property (weak, nonatomic) IBOutlet UIView *ViewApper;


@property (weak, nonatomic) IBOutlet UIView *viewReachability;
@property (weak, nonatomic) IBOutlet UILabel *lbReachability;







@end
