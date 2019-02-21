//
//  DatailsNew.m
//  SidebarDemo
//
//  Created by Fabricio Aguiar de Padua on 06/05/15.
//  Copyright (c) 2015 Appcoda. All rights reserved.
//

#import "DatailsNew.h"

@interface DatailsNew ()

@end

@implementation DatailsNew

@synthesize imageFull;
@synthesize lbDetailsPublish;
@synthesize lbTextFull;
@synthesize detailsNew;
@synthesize lbtitle;
@synthesize lbResume;

- (void)viewDidLoad {
    [super viewDidLoad];

    UIImageView* imglog = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"LogoCentraldoCafe"]];
    self.navigationItem.titleView = imglog;
    
    
    NSString * Concat = [NSString stringWithFormat:@"Publicado por %@ | Edital %@ | %@ ", [detailsNew objectForKey:@"postBy"], [detailsNew objectForKey:@"editorial"], [detailsNew objectForKey:@"dataPost"]];
    
    lbDetailsPublish.text = Concat;
    
    lbtitle.text = [detailsNew objectForKey:@"titulo"];
    lbtitle.numberOfLines = 2;
    [lbtitle sizeToFit];
    lbtitle.lineBreakMode = NSLineBreakByWordWrapping;
    
    lbResume.text = [detailsNew objectForKey:@"resumo"];
    lbResume.numberOfLines = 2;
    [lbResume sizeToFit];
    lbResume.lineBreakMode = NSLineBreakByWordWrapping;
    
    lbTextFull.text  = [[detailsNew objectForKey:@"news"] stringByReplacingOccurrencesOfString:@"<br />"
                                                                                    withString:@" "];
    NSURL *url = [NSURL URLWithString:[detailsNew objectForKey:@"image"]];
    NSData *data = [NSData dataWithContentsOfURL:url];
    UIImage *img = [UIImage imageWithData:data];
    
    imageFull.image = img;
    
    [self.view addSubview:lbTextFull];
     
}

- (NSDictionary *) indexKeyedDictionaryFromArray:(NSArray *)array
{
    id objectInstance;
    int indexKey = 0U;
    
    NSMutableDictionary *mutableDictionary = [[NSMutableDictionary alloc] init];
    for (objectInstance in array)
        [mutableDictionary setObject:objectInstance forKey:[NSNumber numberWithUnsignedInt:indexKey++]];
    
    return mutableDictionary;
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
