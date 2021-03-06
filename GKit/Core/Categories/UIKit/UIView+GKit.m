//
//  UIView+GKit.m
//  YouHuo
//
//  Created by Glare on 13-2-13.
//
//

#import "UIView+GKit.h"

CGRect GRectSetX(CGRect rect, CGFloat x) {
	return CGRectMake(x, rect.origin.y, rect.size.width, rect.size.height);
}


CGRect GRectSetY(CGRect rect, CGFloat y) {
	return CGRectMake(rect.origin.x, y, rect.size.width, rect.size.height);
}


CGRect GRectSetWidth(CGRect rect, CGFloat width) {
	return CGRectMake(rect.origin.x, rect.origin.y, width, rect.size.height);
}


CGRect GRectSetHeight(CGRect rect, CGFloat height) {
	return CGRectMake(rect.origin.x, rect.origin.y, rect.size.width, height);
}

CGRect GRectSetOrigin(CGRect rect, CGPoint origin) {
	return CGRectMake(origin.x, origin.y, rect.size.width, rect.size.height);
}


CGRect GRectSetSize(CGRect rect, CGSize size) {
	return CGRectMake(rect.origin.x, rect.origin.y, size.width, size.height);
}


CGRect GRectSetZeroOrigin(CGRect rect) {
	return CGRectMake(0.0f, 0.0f, rect.size.width, rect.size.height);
}


CGRect GRectSetZeroSize(CGRect rect) {
	return CGRectMake(rect.origin.x, rect.origin.y, 0.0f, 0.0f);
}


CGSize GSizeAspectScaleToSize(CGSize size, CGSize toSize) {
	// Probably a more efficient way to do this...
	CGFloat aspect = 1.0f;
	
	if (size.width > toSize.width) {
		aspect = toSize.width / size.width;
	}
	
	if (size.height > toSize.height) {
		aspect = fminf(toSize.height / size.height, aspect);
	}
    
	return CGSizeMake(size.width * aspect, size.height * aspect);
}


CGRect GRectAddPoint(CGRect rect, CGPoint point) {
	return CGRectMake(rect.origin.x + point.x, rect.origin.y + point.y, rect.size.width, rect.size.height);
}


@implementation UIView (GKit)

- (void) setX:(CGFloat)x{
    self.frame = GRectSetX(self.frame, x);
}
- (void) setY:(CGFloat)y{
    self.frame = GRectSetY(self.frame, y);
}
- (void) setWidth:(CGFloat)width{
    self.frame = GRectSetWidth(self.frame, width);
}
- (void) setHeight:(CGFloat)height{
    self.frame = GRectSetHeight(self.frame, height);
}
- (void) setOrigin:(CGPoint)origin{
    self.frame = GRectSetOrigin(self.frame, origin);
}
- (void) setSize:(CGSize)size{
    self.frame = GRectSetSize(self.frame, size);
}
- (void) setZeroOrigin{
    self.frame = GRectSetZeroOrigin(self.frame);
}
- (void) setZeroSize{
    self.frame = GRectSetZeroSize(self.frame);
}
- (void) sizeAspectScaleToSize:(CGSize)toSize{
    [self setSize:GSizeAspectScaleToSize(self.frame.size, toSize)];
}
- (void) frameAddPoint:(CGPoint)point{
    self.frame = GRectAddPoint(self.frame, point);
}

@end
