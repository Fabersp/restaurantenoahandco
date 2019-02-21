//
//  Home.h
//  RestaurantNoahCo
//
//  Created by Fabricio Aguiar de Padua on 18/02/15.
//  Copyright (c) 2015 Pro Master Solution. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Home : UIViewController <UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@property (nonatomic, strong) NSArray *imageArray;

@property (weak, nonatomic) IBOutlet UITextView *textVisual;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;
@property (weak, nonatomic) IBOutlet UIView *ViewApper;

@property (weak, nonatomic) IBOutlet UIImageView *imgPrincipal;

@end
