//
//  CustomComplaint.m
//  Healnt
//
//  Created by Ajay Mian on 26/05/16.
//  Copyright © 2016 alle. All rights reserved.
//

#import "CustomComplaint.h"

@implementation CustomComplaintOwner


@end

@implementation CustomComplaint
@synthesize ConditionSearchViewHeight;
@synthesize CustomComplaintView;
@synthesize ConditionSearchTableView;
@synthesize ConditionSearchView;
- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        // initialize my stuff
        [self layoutSubviews]; // avoid debugger warnings regarding constraint conflicts
    }
    return self;
}
+(void)presentInViewController:(UIView*) viewController
{
   
    CustomComplaint *owner = [CustomComplaint new];
    [[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:owner options:nil];
    viewController.translatesAutoresizingMaskIntoConstraints=NO;
    owner.CustomComplaintView.translatesAutoresizingMaskIntoConstraints=NO;
    owner.ConditionSearchTableView.translatesAutoresizingMaskIntoConstraints=NO;
    
    NSLog(@"ConditionSearchTableHeight====%f",owner.ConditionSearchViewHeight.constant);
    
    viewController.layer.cornerRadius =4;
    viewController.layer.masksToBounds = YES;
    // Add to the view hierarchy (thus retain).
    
    [viewController addSubview:owner.CustomComplaintView];
        [viewController bringSubviewToFront:owner.CustomComplaintView];
    
    
    //    - (void)insertSubview:(UIView *)view belowSubview:(UIView *)siblingSubview;
    
    NSLayoutConstraint *LeadingBtn=[NSLayoutConstraint constraintWithItem:owner.CustomComplaintView attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:viewController attribute:NSLayoutAttributeLeading multiplier:1.0 constant:0];
    
    NSLayoutConstraint *TrailingBtn=[NSLayoutConstraint constraintWithItem:viewController attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:owner.CustomComplaintView attribute:NSLayoutAttributeTrailing multiplier:1.0 constant:0];
    
    NSLayoutConstraint *TopBtn=[NSLayoutConstraint constraintWithItem:owner.CustomComplaintView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:viewController attribute:NSLayoutAttributeTop multiplier:1.0 constant:0.0f];
    
//    NSLayoutConstraint *BottomBtn=[NSLayoutConstraint constraintWithItem:viewController attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:owner.CustomComplaintView attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0.0f];
    
    
    //    [UIView animateWithDuration:0.5
    //                     animations:^{
    
    [viewController addConstraints:@[LeadingBtn,TrailingBtn,TopBtn]];
//    [viewController updateConstraints];
    
    //

   
}

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */
+(void)updateSize:(int)ssss
{
    CustomComplaint *owner = [CustomComplaint new];
    [[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:owner options:nil];
    owner.ConditionSearchViewHeight.constant = ssss;
    [owner.ConditionSearchTableView needsUpdateConstraints];
}
-(void)updateWidth {
    self.ConditionSearchViewHeight.constant=175;
    [self.ConditionSearchView layoutIfNeeded]; // self.view must be an ancestor of the view
    
    //If you need the changes animated, call layoutIfNeeded in an animation block
}
@end

