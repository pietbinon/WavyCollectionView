//
//  ViewController.m
//  WavyCollectionView
//
//  Created by Pierre Binon on 2017-03-27.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//


#import "ViewController.h"


@interface ViewController () <UICollectionViewDelegate, UICollectionViewDataSource>

@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;
@property (nonatomic) int number;

@end




@implementation ViewController

static NSString * const reuseIdentifier = @"myCell";

- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.collectionView.backgroundColor = [UIColor greenColor];
    self.collectionView.backgroundView = [[UIView alloc] initWithFrame: CGRectZero];
    self.number = 12;
    [self setUpLayout];
}


- (void) setUpLayout {
    
    WavyFlowLayout *wavyFlowLayout = [[WavyFlowLayout alloc] init];
    self.collectionView.collectionViewLayout = wavyFlowLayout;
}




#pragma mark <UICollectionViewDataSource>

- (NSInteger) numberOfSectionsInCollectionView: (UICollectionView *) collectionView {
    
    return 1;
}


- (NSInteger) collectionView: (UICollectionView *) collectionView numberOfItemsInSection: (NSInteger)section {

    return self.number;
}


- (UICollectionViewCell *) collectionView: (UICollectionView *) collectionView cellForItemAtIndexPath: (NSIndexPath *)indexPath {
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier: reuseIdentifier forIndexPath: indexPath];
    
    // Configure the cell
    return cell;
}

@end
