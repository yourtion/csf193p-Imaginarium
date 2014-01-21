//
//  ViewController.m
//  Imaginarium
//
//  Created by Yourtion on 14-1-21.
//  Copyright (c) 2014年 Yourtion. All rights reserved.
//

#import "ViewController.h"
#import "imageViewController.h"

@interface ViewController ()

@end

@implementation ViewController
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.destinationViewController isKindOfClass:[imageViewController class]]) {
        imageViewController *ivc = (imageViewController *)segue.destinationViewController;
        ivc.imageURL = [NSURL URLWithString:[NSString stringWithFormat:@"http://images.apple.com/v/iphone-5s/gallery/b/images/download/%@.jpg", segue.identifier]];
        ivc.title = segue.identifier;
    }
}

@end
