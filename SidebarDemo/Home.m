//
//  Home.m
//  RestaurantNoahCo
//
//  Created by Fabricio Aguiar de Padua on 18/02/15.
//  Copyright (c) 2015 Pro Master Solution. All rights reserved.
//

#import "Home.h"
#import "SWRevealViewController.h"

@interface Home () <UIScrollViewDelegate>

@end

@implementation Home

@synthesize scrollView;
@synthesize pageControl;

@synthesize imageArray;

@synthesize textVisual;
@synthesize ViewApper;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImageView* img = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"LogoNovo"]];
    self.navigationItem.titleView = img;
    
    [ViewApper setFrame:[[UIScreen mainScreen] bounds]];
    
    [self.navigationController.view addSubview:ViewApper];
    
    self.title = @"News";
    
    SWRevealViewController *revealViewController = self.revealViewController;
    if ( revealViewController )
    {
        [self.sidebarButton setTarget: self.revealViewController];
        [self.sidebarButton setAction: @selector( revealToggle: )];
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    }

    
    
    textVisual.text = @"Welcome. We thank you for visiting. We hope enjoy the Noah's & Co experience, the culmination of all the years Noah spend woking as baker and chef, circumnavigating the globe in search of new dishes and flavours with to delight you. And yet, after all his voyaging, all his smpling and refining amazing recipes it all comes round, full-cicle, to on thing. Fresh Produce. We'd like to thank all the local farmers and specialist food producers who make this menu possible by delivering amazing Irish to our kitchen every morning. Slainte!";
    
    imageArray = [[NSArray alloc] initWithObjects:@"FrontNoah.jpg", @"Cooffe.jpg",  @"breakfast.jpg",  @"flabPizza.jpg",  @"hamburgerAndbeer.jpg",  @"Pankekes.jpg", nil];
    
    for (int i = 0; i < [imageArray count]; i++) {
        //We'll create an imageView object in every 'page' of our scrollView.
        CGRect frame;
        frame.origin.x = scrollView.frame.size.width * i;
        frame.origin.y = 0;
        frame.size = scrollView.frame.size;
        
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:frame];
        imageView.image = [UIImage imageNamed:[imageArray objectAtIndex:i]];
        [scrollView addSubview:imageView];
    }
    // a page is the width of the scroll view
    scrollView.pagingEnabled = YES;
    scrollView.delegate = self;
    scrollView.userInteractionEnabled = YES;
    scrollView.showsHorizontalScrollIndicator = NO;
    scrollView.translatesAutoresizingMaskIntoConstraints = NO;

    
    pageControl.numberOfPages = imageArray.count;
    pageControl.currentPage = 0;
    
    //Set the content size of our scrollview according to the total width of our imageView objects.
    scrollView.contentSize = CGSizeMake(scrollView.frame.size.width * [imageArray count], scrollView.frame.size.height);

}
- (void)scrollViewDidScroll:(UIScrollView *)sender
{
    // Update the page when more than 50% of the previous/next page is visible
    CGFloat pageWidth = scrollView.frame.size.width;
    int page = floor((scrollView.contentOffset.x - pageWidth / 2) / pageWidth) + 1;
    pageControl.currentPage = page;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
