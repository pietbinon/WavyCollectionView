//
//  WavyViewLayout.m
//  WavyCollectionView
//
//  Created by Hyung Jip Moon on 2017-02-23.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import "WavyViewLayout.h"

@interface WavyViewLayout ()

@property (nonatomic) NSArray *savedAttributes;

@end

@implementation WavyViewLayout

//- (CGSize)collectionViewContentSize {
//    return CGSizeMake(200, 200);
//}

//- (NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect {
//    
//    NSMutableArray *result = [NSMutableArray array];
//    
//    for (UICollectionViewLayoutAttributes *attributes in self.savedAttributes) {
//        if (CGRectIntersectsRect(attributes.frame, rect)) {
//            [result addObject:attributes];
//        }
//    }
//    
//    return result;
//}

- (void)prepareLayout {

    self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    self.itemSize = CGSizeMake(100,50);
    self.minimumInteritemSpacing = CGFLOAT_MAX;
}

@end


