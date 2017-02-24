//
//  WavyFlowLayout.m
//  WavyCollectionView
//
//  Created by Hyung Jip Moon on 2017-02-23.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import "WavyFlowLayout.h"

@interface WavyFlowLayout ()

@property (nonatomic) NSArray *savedAttributes;

@end

@implementation WavyFlowLayout


- (NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect {
    NSArray<UICollectionViewLayoutAttributes *> *superAttrs = [super layoutAttributesForElementsInRect:rect];

    NSMutableArray<UICollectionViewLayoutAttributes *> *newAttrs = [[NSMutableArray alloc]init];

    // Copy NSArray elements into the NSMutableArray
    newAttrs = [NSMutableArray arrayWithArray:superAttrs];
    

    return newAttrs;
}

- (void)prepareLayout {

    self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    
    self.itemSize = CGSizeMake(100,50);
    self.minimumInteritemSpacing = CGFLOAT_MAX;
}

@end


