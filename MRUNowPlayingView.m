#import "MRUNowPlayingView.h"

@implementation MRUNowPlayingView
-(instancetype)initWithFrame:(CGRect)frame {
 self = [super initWithFrame:frame];
 if (self) {
  [self setClipsToBounds:YES];
  MRUNowPlayingControlsView *nowPlayingControlsView = [[MRUNowPlayingControlsView alloc]init];
  _controlsView = nowPlayingControlsView;
  [self addSubview:_controlsView];
  MRUNowPlayingContainerView *nowPlayingContainerView = [[MRUNowPlayingContainerView alloc]init];
  _containerView = nowPlayingContainerView;
  [self addSubview:_containerView];
  MRUEmbeddingView *embeddingView = [[MRUEmbeddingView alloc]init];
  _collapsedEmbeddingView = embeddingView;
  [_containerView setContentView:_collapsedEmbeddingView];
 }
 return self;
}
@end
