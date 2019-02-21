//
//  MapView.h
//  RestaurantNoahCo
//
//  Created by Fabricio Aguiar de Padua on 16/02/15.
//  Copyright (c) 2015 Pro Master Solution. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GoogleMaps.h"


@interface MapView : UIViewController <GMSMapViewDelegate>


@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;
@property (weak, nonatomic) IBOutlet UIView *ViewApper;

@end
