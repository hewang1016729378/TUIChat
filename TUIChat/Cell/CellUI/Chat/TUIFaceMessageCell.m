//
//  FaceMessageCell.m
//  UIKit
//
//  Created by annidyfeng on 2019/5/30.
//

#import "TUIFaceMessageCell.h"
#import "TUIDefine.h"

@interface TUIFaceMessageCell ()
@end

@implementation TUIFaceMessageCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _face = [[UIImageView alloc] init];
        _face.contentMode = UIViewContentModeScaleAspectFit;
        [self.container addSubview:_face];
        _face.mm_fill();
        _face.mm_y = 8;
        _face.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    }
    return self;
}


- (void)fillWithData:(TUIFaceMessageCellData *)data
{
    //set data
    [super fillWithData:data];
    self.faceData = data;

    _face.image = [[TUIImageCache sharedInstance] getFaceFromCache:data.path];;
}

@end
