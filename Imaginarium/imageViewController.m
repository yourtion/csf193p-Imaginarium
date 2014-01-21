//
//  imageViewController.m
//  Imaginarium
//
//  Created by Yourtion on 14-1-21.
//  Copyright (c) 2014年 Yourtion. All rights reserved.
//

#import "imageViewController.h"

@interface imageViewController ()
@property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, strong) UIImage *image;
@end

@implementation imageViewController

-(void)setImageURL:(NSURL *)imageURL
{
    _imageURL = imageURL;
    self.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:self.imageURL]];
}

-(UIImageView *)imageView
{
    if (!_imageView) _imageView = [[UIImageView alloc] init];
    return _imageView;
}
-(UIImage *)image
{
    return self.imageView.image;
}
-(void) setImage:(UIImage *)image
{
    self.imageView.image = image;
    [self.imageView sizeToFit];
}

-(void)viewDidLoad
{
    [super viewDidLoad];
    [self.view addSubview:self.imageView];
}
@end
