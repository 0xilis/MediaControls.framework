#import "MRUNowPlayingLabelView.h"
@implementation MRUNowPlayingLabelView
-(void)didMoveToWindow {
 [super didMoveToWindow];
 UIWindow *daWindow = [self window];
 if (!daWindow) {
  daWindow = [self setMarqueeEnabled:NO];
 }
 return daWindow;
}
-(void)setMarqueeEnabled:(BOOL)marqueeEnabled {
 if (_marqueeEnabled != marqueeEnabled) {
  _marqueeEnabled = marqueeEnabled;
  [self updateMarquee];
 }
 return;
}
-(void)setLayout:(id)layout {
 if (_layout != layout) {
  _layout = layout;
  [self updateContentSizeCategory];
  [self updateVisibility];
  [self updateMarquee];
  [self setNeedsLayout];
 }
 return;
}
-(void)setContext:(id)context {
 if (_context != context) {
  _context = context;
  [self updateVisibility];
  [self setNeedsLayout];
 }
 return;
}
-(void)setStylingProvider:(id)stylingProvider {
 if (_stylingProvider != stylingProvider) {
  [_stylingProvider removeObserver:self];
  _stylingProvider = stylingProvider;
  [_stylingProvider addObserver:self];
  [self updateVisualStyling];
 }
 return;
}
-(void)visualStylingProviderDidChange:(id)uselessUnusedArg {
 [self updateVisualStyling];
 return;
}
-(void)updateContentSizeCategory {
 UIFont *mru_routeFont = [UIFont mru_routeFont];
 UIFont *mru_titleFont = [UIFont mru_titleFont];
 UIFont *mru_subtitleFont = [UIFont mru_subtitleFont;
 long long layout = self->_layout;
 MPRouteLabel *routeLabel = [self routeLabel];
 UIFont *hmm = mru_routeFont;
 if (layout == 0x3) {
  hmm = mru_titleFont;
 }
 [routeLabel setFont:hmm];
 UILabel *titleLabel = [self titleLabel];
 [titleLabel setFont:mru_titleFont];
 UILabel *subtitleLabel = [self subtitleLabel];
 [subtitleLabel setFont:mru_subtitleFont];
 UILabel *placeholderLabel = [self placeholderLabel];
 [placeholderLabel setFont:mru_titleFont];
 return;
}
@end
