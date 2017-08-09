.class public Lcom/meizu/widget/DragSortListView;
.super Landroid/widget/ListView;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/DragSortListView$AdapterWrapper;,
        Lcom/meizu/widget/DragSortListView$HeightCache;,
        Lcom/meizu/widget/DragSortListView$SmoothAnimator;,
        Lcom/meizu/widget/DragSortListView$LiftAnimator;,
        Lcom/meizu/widget/DragSortListView$DropAnimator;,
        Lcom/meizu/widget/DragSortListView$RemoveAnimator;,
        Lcom/meizu/widget/DragSortListView$FloatViewManager;,
        Lcom/meizu/widget/DragSortListView$DragListener;,
        Lcom/meizu/widget/DragSortListView$DropListener;,
        Lcom/meizu/widget/DragSortListView$RemoveListener;,
        Lcom/meizu/widget/DragSortListView$DragSortListener;,
        Lcom/meizu/widget/DragSortListView$DragScrollProfile;,
        Lcom/meizu/widget/DragSortListView$DragScroller;,
        Lcom/meizu/widget/DragSortListView$DragSortTracker;,
        Lcom/meizu/widget/DragSortListView$1;
    }
.end annotation


# static fields
.field private static final DRAGGING:I = 0x4

.field public static final DRAG_NEG_X:I = 0x2

.field public static final DRAG_NEG_Y:I = 0x8

.field public static final DRAG_POS_X:I = 0x1

.field public static final DRAG_POS_Y:I = 0x4

.field private static final DROPPING:I = 0x2

.field private static final IDLE:I = 0x0

.field private static final NO_CANCEL:I = 0x0

.field private static final ON_INTERCEPT_TOUCH_EVENT:I = 0x2

.field private static final ON_TOUCH_EVENT:I = 0x1

.field private static final REMOVING:I = 0x1

.field private static final STOPPED:I = 0x3

.field private static final sCacheSize:I = 0x3


# instance fields
.field private mAdapterWrapper:Lcom/meizu/widget/DragSortListView$AdapterWrapper;

.field private mAnimate:Z

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBlockLayoutRequests:Z

.field private mCancelEvent:Landroid/view/MotionEvent;

.field private mCancelMethod:I

.field private mChildHeightCache:Lcom/meizu/widget/DragSortListView$HeightCache;

.field private mCurrFloatAlpha:F

.field private mDividerPaddingLeft:I

.field private mDividerPaddingRight:I

.field private mDownScrollStartY:I

.field private mDownScrollStartYF:F

.field private mDragDeltaX:I

.field private mDragDeltaY:I

.field private mDragDownScrollHeight:F

.field private mDragDownScrollStartFrac:F

.field private mDragEnabled:Z

.field private mDragFlags:I

.field private mDragListener:Lcom/meizu/widget/DragSortListView$DragListener;

.field private mDragScroller:Lcom/meizu/widget/DragSortListView$DragScroller;

.field private mDragSortTracker:Lcom/meizu/widget/DragSortListView$DragSortTracker;

.field private mDragStartY:I

.field private mDragState:I

.field private mDragUpScrollHeight:F

.field private mDragUpScrollStartFrac:F

.field private mDropAnimator:Lcom/meizu/widget/DragSortListView$DropAnimator;

.field private mDropListener:Lcom/meizu/widget/DragSortListView$DropListener;

.field private mFirstExpPos:I

.field private mFloatAlpha:F

.field private mFloatLoc:Landroid/graphics/Point;

.field private mFloatPos:I

.field private mFloatView:Landroid/view/View;

.field private mFloatViewHeight:I

.field private mFloatViewHeightHalf:I

.field private mFloatViewInvalidated:Z

.field private mFloatViewManager:Lcom/meizu/widget/DragSortListView$FloatViewManager;

.field private mFloatViewMid:I

.field private mFloatViewOnMeasured:Z

.field private mIgnoreTouchEvent:Z

.field private mInTouchEvent:Z

.field private mItemHeightCollapsed:I

.field private mLastCallWasIntercept:Z

.field private mLastX:I

.field private mLastY:I

.field private mLiftAnimator:Lcom/meizu/widget/DragSortListView$LiftAnimator;

.field private mListViewIntercepted:Z

.field private mMaxScrollSpeed:F

.field private mObserver:Landroid/database/DataSetObserver;

.field private mOffsetX:I

.field private mOffsetY:I

.field private mRemoveAnimator:Lcom/meizu/widget/DragSortListView$RemoveAnimator;

.field private mRemoveListener:Lcom/meizu/widget/DragSortListView$RemoveListener;

.field private mRemoveVelocityX:F

.field private mSampleViewTypes:[Landroid/view/View;

.field private mScrollProfile:Lcom/meizu/widget/DragSortListView$DragScrollProfile;

.field private mSecondExpPos:I

.field private mSlideFrac:F

.field private mSlideRegionFrac:F

.field private mSrcPos:I

.field private mTouchLoc:Landroid/graphics/Point;

.field private mTrackDragSort:Z

.field private mUpScrollStartY:I

.field private mUpScrollStartYF:F

.field private mUseRemoveVelocity:Z

.field private mWidthMeasureSpec:I

.field private mX:I

.field private mY:I


# direct methods
.method static synthetic -get0(Lcom/meizu/widget/DragSortListView;)F
    .locals 1

    iget v0, p0, Lcom/meizu/widget/DragSortListView;->mDownScrollStartYF:F

    return v0
.end method

.method static synthetic -get1(Lcom/meizu/widget/DragSortListView;)I
    .locals 1

    iget v0, p0, Lcom/meizu/widget/DragSortListView;->mDragDeltaY:I

    return v0
.end method

.method static synthetic -get10(Lcom/meizu/widget/DragSortListView;)I
    .locals 1

    iget v0, p0, Lcom/meizu/widget/DragSortListView;->mFloatViewMid:I

    return v0
.end method

.method static synthetic -get11(Lcom/meizu/widget/DragSortListView;)I
    .locals 1

    iget v0, p0, Lcom/meizu/widget/DragSortListView;->mItemHeightCollapsed:I

    return v0
.end method

.method static synthetic -get12(Lcom/meizu/widget/DragSortListView;)I
    .locals 1

    iget v0, p0, Lcom/meizu/widget/DragSortListView;->mLastY:I

    return v0
.end method

.method static synthetic -get13(Lcom/meizu/widget/DragSortListView;)F
    .locals 1

    iget v0, p0, Lcom/meizu/widget/DragSortListView;->mMaxScrollSpeed:F

    return v0
.end method

.method static synthetic -get14(Lcom/meizu/widget/DragSortListView;)F
    .locals 1

    iget v0, p0, Lcom/meizu/widget/DragSortListView;->mRemoveVelocityX:F

    return v0
.end method

.method static synthetic -get15(Lcom/meizu/widget/DragSortListView;)Lcom/meizu/widget/DragSortListView$DragScrollProfile;
    .locals 1

    iget-object v0, p0, Lcom/meizu/widget/DragSortListView;->mScrollProfile:Lcom/meizu/widget/DragSortListView$DragScrollProfile;

    return-object v0
.end method

.method static synthetic -get16(Lcom/meizu/widget/DragSortListView;)I
    .locals 1

    iget v0, p0, Lcom/meizu/widget/DragSortListView;->mSecondExpPos:I

    return v0
.end method

.method static synthetic -get17(Lcom/meizu/widget/DragSortListView;)I
    .locals 1

    iget v0, p0, Lcom/meizu/widget/DragSortListView;->mSrcPos:I

    return v0
.end method

.method static synthetic -get18(Lcom/meizu/widget/DragSortListView;)F
    .locals 1

    iget v0, p0, Lcom/meizu/widget/DragSortListView;->mUpScrollStartYF:F

    return v0
.end method

.method static synthetic -get19(Lcom/meizu/widget/DragSortListView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/meizu/widget/DragSortListView;->mUseRemoveVelocity:Z

    return v0
.end method

.method static synthetic -get2(Lcom/meizu/widget/DragSortListView;)F
    .locals 1

    iget v0, p0, Lcom/meizu/widget/DragSortListView;->mDragDownScrollHeight:F

    return v0
.end method

.method static synthetic -get20(Lcom/meizu/widget/DragSortListView;)I
    .locals 1

    iget v0, p0, Lcom/meizu/widget/DragSortListView;->mY:I

    return v0
.end method

.method static synthetic -get3(Lcom/meizu/widget/DragSortListView;)I
    .locals 1

    iget v0, p0, Lcom/meizu/widget/DragSortListView;->mDragState:I

    return v0
.end method

.method static synthetic -get4(Lcom/meizu/widget/DragSortListView;)F
    .locals 1

    iget v0, p0, Lcom/meizu/widget/DragSortListView;->mDragUpScrollHeight:F

    return v0
.end method

.method static synthetic -get5(Lcom/meizu/widget/DragSortListView;)I
    .locals 1

    iget v0, p0, Lcom/meizu/widget/DragSortListView;->mFirstExpPos:I

    return v0
.end method

.method static synthetic -get6(Lcom/meizu/widget/DragSortListView;)Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/meizu/widget/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic -get7(Lcom/meizu/widget/DragSortListView;)I
    .locals 1

    iget v0, p0, Lcom/meizu/widget/DragSortListView;->mFloatPos:I

    return v0
.end method

.method static synthetic -get8(Lcom/meizu/widget/DragSortListView;)I
    .locals 1

    iget v0, p0, Lcom/meizu/widget/DragSortListView;->mFloatViewHeight:I

    return v0
.end method

.method static synthetic -get9(Lcom/meizu/widget/DragSortListView;)I
    .locals 1

    iget v0, p0, Lcom/meizu/widget/DragSortListView;->mFloatViewHeightHalf:I

    return v0
.end method

.method static synthetic -set0(Lcom/meizu/widget/DragSortListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/meizu/widget/DragSortListView;->mBlockLayoutRequests:Z

    return p1
.end method

.method static synthetic -set1(Lcom/meizu/widget/DragSortListView;I)I
    .locals 0

    iput p1, p0, Lcom/meizu/widget/DragSortListView;->mDragDeltaY:I

    return p1
.end method

.method static synthetic -set2(Lcom/meizu/widget/DragSortListView;I)I
    .locals 0

    iput p1, p0, Lcom/meizu/widget/DragSortListView;->mDragState:I

    return p1
.end method

.method static synthetic -set3(Lcom/meizu/widget/DragSortListView;F)F
    .locals 0

    iput p1, p0, Lcom/meizu/widget/DragSortListView;->mRemoveVelocityX:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/meizu/widget/DragSortListView;ILandroid/view/View;Z)I
    .locals 1
    .param p1, "position"    # I
    .param p2, "item"    # Landroid/view/View;
    .param p3, "invalidChildHeight"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/widget/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/meizu/widget/DragSortListView;I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/meizu/widget/DragSortListView;->getChildHeight(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/meizu/widget/DragSortListView;I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/meizu/widget/DragSortListView;->getItemHeight(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/meizu/widget/DragSortListView;II)I
    .locals 1
    .param p1, "position"    # I
    .param p2, "top"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/meizu/widget/DragSortListView;->getShuffleEdge(II)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/meizu/widget/DragSortListView;ILandroid/view/View;Z)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "invalidChildHeight"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/widget/DragSortListView;->adjustItem(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/meizu/widget/DragSortListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/widget/DragSortListView;->destroyFloatView()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/meizu/widget/DragSortListView;Z)V
    .locals 0
    .param p1, "forceInvalidate"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/meizu/widget/DragSortListView;->doDragFloatView(Z)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/meizu/widget/DragSortListView;ILandroid/view/View;Z)V
    .locals 0
    .param p1, "movePos"    # I
    .param p2, "moveItem"    # Landroid/view/View;
    .param p3, "forceInvalidate"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/widget/DragSortListView;->doDragFloatView(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/meizu/widget/DragSortListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/widget/DragSortListView;->doRemoveItem()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/meizu/widget/DragSortListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/widget/DragSortListView;->dropFloatView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 34
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct/range {p0 .. p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/meizu/widget/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/meizu/widget/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/meizu/widget/DragSortListView;->mFloatViewOnMeasured:Z

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v5, v0, Lcom/meizu/widget/DragSortListView;->mFloatAlpha:F

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v5, v0, Lcom/meizu/widget/DragSortListView;->mCurrFloatAlpha:F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/meizu/widget/DragSortListView;->mAnimate:Z

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/meizu/widget/DragSortListView;->mDragEnabled:Z

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/meizu/widget/DragSortListView;->mDragState:I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/meizu/widget/DragSortListView;->mItemHeightCollapsed:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/meizu/widget/DragSortListView;->mWidthMeasureSpec:I

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/view/View;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/meizu/widget/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    const v5, 0x3eaaaaab

    move-object/from16 v0, p0

    iput v5, v0, Lcom/meizu/widget/DragSortListView;->mDragUpScrollStartFrac:F

    const v5, 0x3eaaaaab

    move-object/from16 v0, p0

    iput v5, v0, Lcom/meizu/widget/DragSortListView;->mDragDownScrollStartFrac:F

    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iput v5, v0, Lcom/meizu/widget/DragSortListView;->mMaxScrollSpeed:F

    new-instance v5, Lcom/meizu/widget/DragSortListView$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/meizu/widget/DragSortListView$1;-><init>(Lcom/meizu/widget/DragSortListView;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/meizu/widget/DragSortListView;->mScrollProfile:Lcom/meizu/widget/DragSortListView$DragScrollProfile;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/meizu/widget/DragSortListView;->mDragFlags:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/meizu/widget/DragSortListView;->mLastCallWasIntercept:Z

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/meizu/widget/DragSortListView;->mInTouchEvent:Z

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/meizu/widget/DragSortListView;->mFloatViewManager:Lcom/meizu/widget/DragSortListView$FloatViewManager;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/meizu/widget/DragSortListView;->mCancelMethod:I

    const/high16 v5, 0x3e800000    # 0.25f

    move-object/from16 v0, p0

    iput v5, v0, Lcom/meizu/widget/DragSortListView;->mSlideRegionFrac:F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/meizu/widget/DragSortListView;->mSlideFrac:F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/meizu/widget/DragSortListView;->mTrackDragSort:Z

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/meizu/widget/DragSortListView;->mBlockLayoutRequests:Z

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/meizu/widget/DragSortListView;->mIgnoreTouchEvent:Z

    new-instance v5, Lcom/meizu/widget/DragSortListView$HeightCache;

    const/4 v12, 0x3

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v12}, Lcom/meizu/widget/DragSortListView$HeightCache;-><init>(Lcom/meizu/widget/DragSortListView;I)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/meizu/widget/DragSortListView;->mChildHeightCache:Lcom/meizu/widget/DragSortListView$HeightCache;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/meizu/widget/DragSortListView;->mRemoveVelocityX:F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/meizu/widget/DragSortListView;->mDividerPaddingLeft:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/meizu/widget/DragSortListView;->mDividerPaddingRight:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/meizu/widget/DragSortListView;->mListViewIntercepted:Z

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/meizu/widget/DragSortListView;->mFloatViewInvalidated:Z

    const/16 v29, 0x96

    .local v29, "removeAnimDuration":I
    const/16 v27, 0x96

    .local v27, "dropAnimDuration":I
    if-eqz p2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v12, Lcom/flyme/internal/R$styleable;->DragSortListView:[I

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v5, v0, v12, v13, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v11

    .local v11, "a":Landroid/content/res/TypedArray;
    sget v5, Lcom/flyme/internal/R$styleable;->DragSortListView_mzCollapsedHeight:I

    const/4 v12, 0x1

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/4 v12, 0x1

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/meizu/widget/DragSortListView;->mItemHeightCollapsed:I

    sget v5, Lcom/flyme/internal/R$styleable;->DragSortListView_mzTrackDragSort:I

    const/4 v12, 0x0

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/meizu/widget/DragSortListView;->mTrackDragSort:Z

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/meizu/widget/DragSortListView;->mTrackDragSort:Z

    if-eqz v5, :cond_0

    new-instance v5, Lcom/meizu/widget/DragSortListView$DragSortTracker;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/meizu/widget/DragSortListView$DragSortTracker;-><init>(Lcom/meizu/widget/DragSortListView;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/meizu/widget/DragSortListView;->mDragSortTracker:Lcom/meizu/widget/DragSortListView$DragSortTracker;

    :cond_0
    sget v5, Lcom/flyme/internal/R$styleable;->DragSortListView_mzFloatAlpha:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/meizu/widget/DragSortListView;->mFloatAlpha:F

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/meizu/widget/DragSortListView;->mFloatAlpha:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/widget/DragSortListView;->mFloatAlpha:F

    move-object/from16 v0, p0

    iput v5, v0, Lcom/meizu/widget/DragSortListView;->mCurrFloatAlpha:F

    sget v5, Lcom/flyme/internal/R$styleable;->DragSortListView_mzDragEnabled:I

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/meizu/widget/DragSortListView;->mDragEnabled:Z

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/meizu/widget/DragSortListView;->mDragEnabled:Z

    sget v5, Lcom/flyme/internal/R$styleable;->DragSortListView_mzSlideShuffleSpeed:I

    const/high16 v12, 0x3f400000    # 0.75f

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v5, v12, v5

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v12, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const/4 v12, 0x0

    invoke-static {v12, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/meizu/widget/DragSortListView;->mSlideRegionFrac:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/widget/DragSortListView;->mSlideRegionFrac:F

    const/4 v12, 0x0

    cmpl-float v5, v5, v12

    if-lez v5, :cond_5

    const/4 v5, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/meizu/widget/DragSortListView;->mAnimate:Z

    sget v5, Lcom/flyme/internal/R$styleable;->DragSortListView_mzDragScrollStart:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/meizu/widget/DragSortListView;->mDragUpScrollStartFrac:F

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v28

    .local v28, "frac":F
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/widget/DragSortListView;->setDragScrollStart(F)V

    sget v5, Lcom/flyme/internal/R$styleable;->DragSortListView_mzMaxDragScrollSpeed:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/meizu/widget/DragSortListView;->mMaxScrollSpeed:F

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/meizu/widget/DragSortListView;->mMaxScrollSpeed:F

    sget v5, Lcom/flyme/internal/R$styleable;->DragSortListView_mzRemoveAnimationDuration:I

    move/from16 v0, v29

    invoke-virtual {v11, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v29

    sget v5, Lcom/flyme/internal/R$styleable;->DragSortListView_mzDropAnimationDuration:I

    move/from16 v0, v27

    invoke-virtual {v11, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v27

    sget v5, Lcom/flyme/internal/R$styleable;->DragSortListView_mzUseDefaultController:I

    const/4 v12, 0x1

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v33

    .local v33, "useDefault":Z
    if-eqz v33, :cond_1

    sget v5, Lcom/flyme/internal/R$styleable;->DragSortListView_mzRemoveEnabled:I

    const/4 v12, 0x0

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v30

    .local v30, "removeEnabled":Z
    sget v5, Lcom/flyme/internal/R$styleable;->DragSortListView_mzRemoveMode:I

    const/4 v12, 0x1

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .local v8, "removeMode":I
    sget v5, Lcom/flyme/internal/R$styleable;->DragSortListView_mzSortEnabled:I

    const/4 v12, 0x1

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v32

    .local v32, "sortEnabled":Z
    sget v5, Lcom/flyme/internal/R$styleable;->DragSortListView_mzDragStartMode:I

    const/4 v12, 0x0

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .local v7, "dragInitMode":I
    sget v5, Lcom/flyme/internal/R$styleable;->DragSortListView_mzDragHandleId:I

    const/4 v12, 0x0

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .local v6, "dragHandleId":I
    sget v5, Lcom/flyme/internal/R$styleable;->DragSortListView_mzFlingHandleId:I

    const/4 v12, 0x0

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .local v10, "flingHandleId":I
    sget v5, Lcom/flyme/internal/R$styleable;->DragSortListView_mzClickRemoveId:I

    const/4 v12, 0x0

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .local v9, "clickRemoveId":I
    sget v5, Lcom/flyme/internal/R$styleable;->DragSortListView_mzFloatBackgroundColor:I

    const/high16 v12, -0x1000000

    invoke-virtual {v11, v5, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v26

    .local v26, "bgColor":I
    new-instance v4, Lcom/meizu/widget/DragSortController;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/meizu/widget/DragSortController;-><init>(Lcom/meizu/widget/DragSortListView;IIIII)V

    .local v4, "controller":Lcom/meizu/widget/DragSortController;
    move/from16 v0, v30

    invoke-virtual {v4, v0}, Lcom/meizu/widget/DragSortController;->setRemoveEnabled(Z)V

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Lcom/meizu/widget/DragSortController;->setSortEnabled(Z)V

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/meizu/widget/DragSortController;->setBackgroundColor(I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/meizu/widget/DragSortListView;->mFloatViewManager:Lcom/meizu/widget/DragSortListView$FloatViewManager;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/meizu/widget/DragSortListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .end local v4    # "controller":Lcom/meizu/widget/DragSortController;
    .end local v6    # "dragHandleId":I
    .end local v7    # "dragInitMode":I
    .end local v8    # "removeMode":I
    .end local v9    # "clickRemoveId":I
    .end local v10    # "flingHandleId":I
    .end local v26    # "bgColor":I
    .end local v30    # "removeEnabled":Z
    .end local v32    # "sortEnabled":Z
    :cond_1
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .end local v11    # "a":Landroid/content/res/TypedArray;
    .end local v28    # "frac":F
    .end local v33    # "useDefault":Z
    :cond_2
    new-instance v5, Lcom/meizu/widget/DragSortListView$DragScroller;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/meizu/widget/DragSortListView$DragScroller;-><init>(Lcom/meizu/widget/DragSortListView;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/meizu/widget/DragSortListView;->mDragScroller:Lcom/meizu/widget/DragSortListView$DragScroller;

    const/high16 v31, 0x3f000000    # 0.5f

    .local v31, "smoothness":F
    if-lez v29, :cond_3

    new-instance v5, Lcom/meizu/widget/DragSortListView$RemoveAnimator;

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v29

    invoke-direct {v5, v0, v1, v2}, Lcom/meizu/widget/DragSortListView$RemoveAnimator;-><init>(Lcom/meizu/widget/DragSortListView;FI)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/meizu/widget/DragSortListView;->mRemoveAnimator:Lcom/meizu/widget/DragSortListView$RemoveAnimator;

    :cond_3
    if-lez v27, :cond_4

    new-instance v5, Lcom/meizu/widget/DragSortListView$DropAnimator;

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v27

    invoke-direct {v5, v0, v1, v2}, Lcom/meizu/widget/DragSortListView$DropAnimator;-><init>(Lcom/meizu/widget/DragSortListView;FI)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/meizu/widget/DragSortListView;->mDropAnimator:Lcom/meizu/widget/DragSortListView$DropAnimator;

    :cond_4
    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x3

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v12 .. v25}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/meizu/widget/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    new-instance v5, Lcom/meizu/widget/DragSortListView$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/meizu/widget/DragSortListView$2;-><init>(Lcom/meizu/widget/DragSortListView;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/meizu/widget/DragSortListView;->mObserver:Landroid/database/DataSetObserver;

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/DragSortListView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v12, Lcom/flyme/internal/R$drawable;->mz_list_selector_background_filter:I

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/meizu/widget/DragSortListView;->mBackground:Landroid/graphics/drawable/Drawable;

    return-void

    .end local v31    # "smoothness":F
    .restart local v11    # "a":Landroid/content/res/TypedArray;
    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method private adjustAllItems()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    .local v2, "first":I
    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getLastVisiblePosition()I

    move-result v4

    .local v4, "last":I
    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getHeaderViewsCount()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .local v0, "begin":I
    sub-int v6, v4, v2

    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getFooterViewsCount()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int/2addr v7, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .local v1, "end":I
    move v3, v0

    .local v3, "i":I
    :goto_0
    if-gt v3, v1, :cond_1

    invoke-virtual {p0, v3}, Lcom/meizu/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .local v5, "v":Landroid/view/View;
    if-eqz v5, :cond_0

    add-int v6, v2, v3

    invoke-direct {p0, v6, v5, v9}, Lcom/meizu/widget/DragSortListView;->adjustItem(ILandroid/view/View;Z)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v5    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private adjustItem(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/meizu/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/meizu/widget/DragSortListView;->adjustItem(ILandroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method private adjustItem(ILandroid/view/View;Z)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "invalidChildHeight"    # Z

    .prologue
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v4, p0, Lcom/meizu/widget/DragSortListView;->mSrcPos:I

    if-eq p1, v4, :cond_5

    iget v4, p0, Lcom/meizu/widget/DragSortListView;->mFirstExpPos:I

    if-eq p1, v4, :cond_5

    iget v4, p0, Lcom/meizu/widget/DragSortListView;->mSecondExpPos:I

    if-eq p1, v4, :cond_5

    const/4 v0, -0x2

    .local v0, "height":I
    :goto_0
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v4, :cond_0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget v4, p0, Lcom/meizu/widget/DragSortListView;->mFirstExpPos:I

    if-eq p1, v4, :cond_1

    iget v4, p0, Lcom/meizu/widget/DragSortListView;->mSecondExpPos:I

    if-ne p1, v4, :cond_2

    :cond_1
    iget v4, p0, Lcom/meizu/widget/DragSortListView;->mSrcPos:I

    if-ge p1, v4, :cond_6

    move-object v4, p2

    check-cast v4, Lcom/meizu/widget/DragSortItemView;

    const/16 v5, 0x50

    invoke-virtual {v4, v5}, Lcom/meizu/widget/DragSortItemView;->setGravity(I)V

    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v2

    .local v2, "oldVis":I
    const/4 v3, 0x0

    .local v3, "vis":I
    iget v4, p0, Lcom/meizu/widget/DragSortListView;->mSrcPos:I

    if-ne p1, v4, :cond_3

    iget-object v4, p0, Lcom/meizu/widget/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v4, :cond_3

    const/4 v3, 0x4

    :cond_3
    if-eq v3, v2, :cond_4

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void

    .end local v0    # "height":I
    .end local v2    # "oldVis":I
    .end local v3    # "vis":I
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/widget/DragSortListView;->calcItemHeight(ILandroid/view/View;Z)I

    move-result v0

    .restart local v0    # "height":I
    goto :goto_0

    :cond_6
    iget v4, p0, Lcom/meizu/widget/DragSortListView;->mSrcPos:I

    if-le p1, v4, :cond_2

    move-object v4, p2

    check-cast v4, Lcom/meizu/widget/DragSortItemView;

    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Lcom/meizu/widget/DragSortItemView;->setGravity(I)V

    goto :goto_1
.end method

.method private adjustOnReorder()V
    .locals 5

    .prologue
    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    .local v0, "firstPos":I
    iget v3, p0, Lcom/meizu/widget/DragSortListView;->mSrcPos:I

    if-ge v3, v0, :cond_1

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/meizu/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .local v2, "v":Landroid/view/View;
    const/4 v1, 0x0

    .local v1, "top":I
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    :cond_0
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getPaddingTop()I

    move-result v4

    sub-int v4, v1, v4

    invoke-virtual {p0, v3, v4}, Lcom/meizu/widget/DragSortListView;->setSelectionFromTop(II)V

    .end local v1    # "top":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private adjustScroll(ILandroid/view/View;II)I
    .locals 9
    .param p1, "movePos"    # I
    .param p2, "moveItem"    # Landroid/view/View;
    .param p3, "oldFirstExpPos"    # I
    .param p4, "oldSecondExpPos"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "adjust":I
    invoke-direct {p0, p1}, Lcom/meizu/widget/DragSortListView;->getChildHeight(I)I

    move-result v1

    .local v1, "childHeight":I
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    .local v6, "moveHeightBefore":I
    invoke-direct {p0, p1, v1}, Lcom/meizu/widget/DragSortListView;->calcItemHeight(II)I

    move-result v5

    .local v5, "moveHeightAfter":I
    move v4, v6

    .local v4, "moveBlankBefore":I
    move v3, v5

    .local v3, "moveBlankAfter":I
    iget v7, p0, Lcom/meizu/widget/DragSortListView;->mSrcPos:I

    if-eq p1, v7, :cond_0

    sub-int/2addr v4, v1

    sub-int/2addr v3, v1

    :cond_0
    iget v2, p0, Lcom/meizu/widget/DragSortListView;->mFloatViewHeight:I

    .local v2, "maxBlank":I
    iget v7, p0, Lcom/meizu/widget/DragSortListView;->mSrcPos:I

    iget v8, p0, Lcom/meizu/widget/DragSortListView;->mFirstExpPos:I

    if-eq v7, v8, :cond_1

    iget v7, p0, Lcom/meizu/widget/DragSortListView;->mSrcPos:I

    iget v8, p0, Lcom/meizu/widget/DragSortListView;->mSecondExpPos:I

    if-eq v7, v8, :cond_1

    iget v7, p0, Lcom/meizu/widget/DragSortListView;->mItemHeightCollapsed:I

    sub-int/2addr v2, v7

    :cond_1
    if-gt p1, p3, :cond_3

    iget v7, p0, Lcom/meizu/widget/DragSortListView;->mFirstExpPos:I

    if-le p1, v7, :cond_2

    sub-int v7, v2, v3

    add-int/lit8 v0, v7, 0x0

    :cond_2
    :goto_0
    return v0

    :cond_3
    if-ne p1, p4, :cond_6

    iget v7, p0, Lcom/meizu/widget/DragSortListView;->mFirstExpPos:I

    if-gt p1, v7, :cond_4

    sub-int v7, v4, v2

    add-int/lit8 v0, v7, 0x0

    goto :goto_0

    :cond_4
    iget v7, p0, Lcom/meizu/widget/DragSortListView;->mSecondExpPos:I

    if-ne p1, v7, :cond_5

    sub-int v7, v6, v5

    add-int/lit8 v0, v7, 0x0

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v4, 0x0

    goto :goto_0

    :cond_6
    iget v7, p0, Lcom/meizu/widget/DragSortListView;->mFirstExpPos:I

    if-gt p1, v7, :cond_7

    rsub-int/lit8 v0, v2, 0x0

    goto :goto_0

    :cond_7
    iget v7, p0, Lcom/meizu/widget/DragSortListView;->mSecondExpPos:I

    if-ne p1, v7, :cond_2

    rsub-int/lit8 v0, v3, 0x0

    goto :goto_0
.end method

.method private static buildRunList(Landroid/util/SparseBooleanArray;II[I[I)I
    .locals 7
    .param p0, "cip"    # Landroid/util/SparseBooleanArray;
    .param p1, "rangeStart"    # I
    .param p2, "rangeEnd"    # I
    .param p3, "runStart"    # [I
    .param p4, "runEnd"    # [I

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .local v4, "runCount":I
    invoke-static {p0, p1, p2}, Lcom/meizu/widget/DragSortListView;->findFirstSetIndex(Landroid/util/SparseBooleanArray;II)I

    move-result v2

    .local v2, "i":I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_0

    return v6

    :cond_0
    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .local v3, "position":I
    move v1, v3

    .local v1, "currentRunStart":I
    add-int/lit8 v0, v1, 0x1

    .local v0, "currentRunEnd":I
    add-int/lit8 v2, v2, 0x1

    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    if-ge v3, p2, :cond_3

    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    if-nez v5, :cond_1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-ne v3, v0, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    aput v1, p3, v4

    aput v0, p4, v4

    add-int/lit8 v4, v4, 0x1

    move v1, v3

    add-int/lit8 v0, v3, 0x1

    goto :goto_1

    :cond_3
    if-ne v0, p2, :cond_4

    move v0, p1

    :cond_4
    aput v1, p3, v4

    aput v0, p4, v4

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-le v4, v5, :cond_5

    aget v5, p3, v6

    if-ne v5, p1, :cond_5

    add-int/lit8 v5, v4, -0x1

    aget v5, p4, v5

    if-ne v5, p1, :cond_5

    add-int/lit8 v5, v4, -0x1

    aget v5, p3, v5

    aput v5, p3, v6

    add-int/lit8 v4, v4, -0x1

    :cond_5
    return v4
.end method

.method private calcItemHeight(II)I
    .locals 7
    .param p1, "position"    # I
    .param p2, "childHeight"    # I

    .prologue
    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getDividerHeight()I

    move-result v0

    .local v0, "divHeight":I
    iget-boolean v5, p0, Lcom/meizu/widget/DragSortListView;->mAnimate:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/meizu/widget/DragSortListView;->mFirstExpPos:I

    iget v6, p0, Lcom/meizu/widget/DragSortListView;->mSecondExpPos:I

    if-eq v5, v6, :cond_0

    const/4 v2, 0x1

    .local v2, "isSliding":Z
    :goto_0
    iget v5, p0, Lcom/meizu/widget/DragSortListView;->mFloatViewHeight:I

    iget v6, p0, Lcom/meizu/widget/DragSortListView;->mItemHeightCollapsed:I

    sub-int v3, v5, v6

    .local v3, "maxNonSrcBlankHeight":I
    iget v5, p0, Lcom/meizu/widget/DragSortListView;->mSlideFrac:F

    int-to-float v6, v3

    mul-float/2addr v5, v6

    float-to-int v4, v5

    .local v4, "slideHeight":I
    iget v5, p0, Lcom/meizu/widget/DragSortListView;->mSrcPos:I

    if-ne p1, v5, :cond_4

    iget v5, p0, Lcom/meizu/widget/DragSortListView;->mSrcPos:I

    iget v6, p0, Lcom/meizu/widget/DragSortListView;->mFirstExpPos:I

    if-ne v5, v6, :cond_2

    if-eqz v2, :cond_1

    iget v5, p0, Lcom/meizu/widget/DragSortListView;->mItemHeightCollapsed:I

    add-int v1, v4, v5

    .local v1, "height":I
    :goto_1
    return v1

    .end local v1    # "height":I
    .end local v2    # "isSliding":Z
    .end local v3    # "maxNonSrcBlankHeight":I
    .end local v4    # "slideHeight":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "isSliding":Z
    goto :goto_0

    .restart local v3    # "maxNonSrcBlankHeight":I
    .restart local v4    # "slideHeight":I
    :cond_1
    iget v1, p0, Lcom/meizu/widget/DragSortListView;->mFloatViewHeight:I

    .restart local v1    # "height":I
    goto :goto_1

    .end local v1    # "height":I
    :cond_2
    iget v5, p0, Lcom/meizu/widget/DragSortListView;->mSrcPos:I

    iget v6, p0, Lcom/meizu/widget/DragSortListView;->mSecondExpPos:I

    if-ne v5, v6, :cond_3

    iget v5, p0, Lcom/meizu/widget/DragSortListView;->mFloatViewHeight:I

    sub-int v1, v5, v4

    .restart local v1    # "height":I
    goto :goto_1

    .end local v1    # "height":I
    :cond_3
    iget v1, p0, Lcom/meizu/widget/DragSortListView;->mItemHeightCollapsed:I

    .restart local v1    # "height":I
    goto :goto_1

    .end local v1    # "height":I
    :cond_4
    iget v5, p0, Lcom/meizu/widget/DragSortListView;->mFirstExpPos:I

    if-ne p1, v5, :cond_6

    if-eqz v2, :cond_5

    add-int v1, p2, v4

    .restart local v1    # "height":I
    goto :goto_1

    .end local v1    # "height":I
    :cond_5
    add-int v1, p2, v3

    .restart local v1    # "height":I
    goto :goto_1

    .end local v1    # "height":I
    :cond_6
    iget v5, p0, Lcom/meizu/widget/DragSortListView;->mSecondExpPos:I

    if-ne p1, v5, :cond_7

    add-int v5, p2, v3

    sub-int v1, v5, v4

    .restart local v1    # "height":I
    goto :goto_1

    .end local v1    # "height":I
    :cond_7
    move v1, p2

    .restart local v1    # "height":I
    goto :goto_1
.end method

.method private calcItemHeight(ILandroid/view/View;Z)I
    .locals 1
    .param p1, "position"    # I
    .param p2, "item"    # Landroid/view/View;
    .param p3, "invalidChildHeight"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/widget/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/DragSortListView;->calcItemHeight(II)I

    move-result v0

    return v0
.end method

.method private clearPositions()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/widget/DragSortListView;->mSrcPos:I

    iput v0, p0, Lcom/meizu/widget/DragSortListView;->mFirstExpPos:I

    iput v0, p0, Lcom/meizu/widget/DragSortListView;->mSecondExpPos:I

    iput v0, p0, Lcom/meizu/widget/DragSortListView;->mFloatPos:I

    return-void
.end method

.method private continueDrag(II)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/meizu/widget/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v4, p0, Lcom/meizu/widget/DragSortListView;->mDragDeltaX:I

    sub-int v4, p1, v4

    iput v4, v3, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/meizu/widget/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v4, p0, Lcom/meizu/widget/DragSortListView;->mDragDeltaY:I

    sub-int v4, p2, v4

    iput v4, v3, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v5}, Lcom/meizu/widget/DragSortListView;->doDragFloatView(Z)V

    iget v3, p0, Lcom/meizu/widget/DragSortListView;->mFloatViewMid:I

    iget v4, p0, Lcom/meizu/widget/DragSortListView;->mFloatViewHeightHalf:I

    add-int/2addr v3, v4

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .local v2, "minY":I
    iget v3, p0, Lcom/meizu/widget/DragSortListView;->mFloatViewMid:I

    iget v4, p0, Lcom/meizu/widget/DragSortListView;->mFloatViewHeightHalf:I

    sub-int/2addr v3, v4

    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .local v1, "maxY":I
    iget-object v3, p0, Lcom/meizu/widget/DragSortListView;->mDragScroller:Lcom/meizu/widget/DragSortListView$DragScroller;

    invoke-virtual {v3}, Lcom/meizu/widget/DragSortListView$DragScroller;->getScrollDir()I

    move-result v0

    .local v0, "currentScrollDir":I
    iget v3, p0, Lcom/meizu/widget/DragSortListView;->mLastY:I

    if-le v2, v3, :cond_2

    iget v3, p0, Lcom/meizu/widget/DragSortListView;->mDownScrollStartY:I

    if-le v2, v3, :cond_2

    if-eq v0, v5, :cond_2

    if-eq v0, v6, :cond_0

    iget-object v3, p0, Lcom/meizu/widget/DragSortListView;->mDragScroller:Lcom/meizu/widget/DragSortListView$DragScroller;

    invoke-virtual {v3, v5}, Lcom/meizu/widget/DragSortListView$DragScroller;->stopScrolling(Z)V

    :cond_0
    iget-object v3, p0, Lcom/meizu/widget/DragSortListView;->mDragScroller:Lcom/meizu/widget/DragSortListView$DragScroller;

    invoke-virtual {v3, v5}, Lcom/meizu/widget/DragSortListView$DragScroller;->startScrolling(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v3, p0, Lcom/meizu/widget/DragSortListView;->mLastY:I

    if-ge v1, v3, :cond_4

    iget v3, p0, Lcom/meizu/widget/DragSortListView;->mUpScrollStartY:I

    if-ge v1, v3, :cond_4

    if-eqz v0, :cond_4

    if-eq v0, v6, :cond_3

    iget-object v3, p0, Lcom/meizu/widget/DragSortListView;->mDragScroller:Lcom/meizu/widget/DragSortListView$DragScroller;

    invoke-virtual {v3, v5}, Lcom/meizu/widget/DragSortListView$DragScroller;->stopScrolling(Z)V

    :cond_3
    iget-object v3, p0, Lcom/meizu/widget/DragSortListView;->mDragScroller:Lcom/meizu/widget/DragSortListView$DragScroller;

    invoke-virtual {v3, v7}, Lcom/meizu/widget/DragSortListView$DragScroller;->startScrolling(I)V

    goto :goto_0

    :cond_4
    iget v3, p0, Lcom/meizu/widget/DragSortListView;->mUpScrollStartY:I

    if-lt v1, v3, :cond_1

    iget v3, p0, Lcom/meizu/widget/DragSortListView;->mDownScrollStartY:I

    if-gt v2, v3, :cond_1

    iget-object v3, p0, Lcom/meizu/widget/DragSortListView;->mDragScroller:Lcom/meizu/widget/DragSortListView$DragScroller;

    invoke-virtual {v3}, Lcom/meizu/widget/DragSortListView$DragScroller;->isScrolling()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/meizu/widget/DragSortListView;->mDragScroller:Lcom/meizu/widget/DragSortListView$DragScroller;

    invoke-virtual {v3, v5}, Lcom/meizu/widget/DragSortListView$DragScroller;->stopScrolling(Z)V

    goto :goto_0
.end method

.method private destroyFloatView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/meizu/widget/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/widget/DragSortListView;->mFloatView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/meizu/widget/DragSortListView;->mFloatViewManager:Lcom/meizu/widget/DragSortListView$FloatViewManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/DragSortListView;->mFloatViewManager:Lcom/meizu/widget/DragSortListView$FloatViewManager;

    iget-object v1, p0, Lcom/meizu/widget/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/meizu/widget/DragSortListView$FloatViewManager;->onDestroyFloatView(Landroid/view/View;)V

    :cond_0
    iput-object v2, p0, Lcom/meizu/widget/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->invalidate()V

    :cond_1
    return-void
.end method

.method private doActionUpOrCancel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iput v2, p0, Lcom/meizu/widget/DragSortListView;->mCancelMethod:I

    iput-boolean v2, p0, Lcom/meizu/widget/DragSortListView;->mInTouchEvent:Z

    iget v0, p0, Lcom/meizu/widget/DragSortListView;->mDragState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iput v2, p0, Lcom/meizu/widget/DragSortListView;->mDragState:I

    :cond_0
    iget v0, p0, Lcom/meizu/widget/DragSortListView;->mFloatAlpha:F

    iput v0, p0, Lcom/meizu/widget/DragSortListView;->mCurrFloatAlpha:F

    iput-boolean v2, p0, Lcom/meizu/widget/DragSortListView;->mListViewIntercepted:Z

    iget-object v0, p0, Lcom/meizu/widget/DragSortListView;->mChildHeightCache:Lcom/meizu/widget/DragSortListView$HeightCache;

    invoke-virtual {v0}, Lcom/meizu/widget/DragSortListView$HeightCache;->clear()V

    return-void
.end method

.method private doDragFloatView(ILandroid/view/View;Z)V
    .locals 6
    .param p1, "movePos"    # I
    .param p2, "moveItem"    # Landroid/view/View;
    .param p3, "forceInvalidate"    # Z

    .prologue
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/meizu/widget/DragSortListView;->mBlockLayoutRequests:Z

    invoke-direct {p0}, Lcom/meizu/widget/DragSortListView;->updateFloatView()V

    iget v0, p0, Lcom/meizu/widget/DragSortListView;->mFirstExpPos:I

    .local v0, "oldFirstExpPos":I
    iget v1, p0, Lcom/meizu/widget/DragSortListView;->mSecondExpPos:I

    .local v1, "oldSecondExpPos":I
    invoke-direct {p0}, Lcom/meizu/widget/DragSortListView;->updatePositions()Z

    move-result v3

    .local v3, "updated":Z
    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/meizu/widget/DragSortListView;->adjustAllItems()V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/meizu/widget/DragSortListView;->adjustScroll(ILandroid/view/View;II)I

    move-result v2

    .local v2, "scroll":I
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0, p1, v4}, Lcom/meizu/widget/DragSortListView;->setSelectionFromTop(II)V

    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->layoutChildren()V

    .end local v2    # "scroll":I
    :cond_0
    if-nez v3, :cond_1

    if-eqz p3, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->invalidate()V

    :cond_2
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/meizu/widget/DragSortListView;->mBlockLayoutRequests:Z

    return-void
.end method

.method private doDragFloatView(Z)V
    .locals 4
    .param p1, "forceInvalidate"    # Z

    .prologue
    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getChildCount()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    .local v1, "movePos":I
    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getChildCount()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v2}, Lcom/meizu/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "moveItem":Landroid/view/View;
    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v1, v0, p1}, Lcom/meizu/widget/DragSortListView;->doDragFloatView(ILandroid/view/View;Z)V

    return-void
.end method

.method private doRemoveItem()V
    .locals 2

    .prologue
    iget v0, p0, Lcom/meizu/widget/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/meizu/widget/DragSortListView;->doRemoveItem(I)V

    return-void
.end method

.method private doRemoveItem(I)V
    .locals 1
    .param p1, "which"    # I

    .prologue
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/widget/DragSortListView;->mDragState:I

    iget-object v0, p0, Lcom/meizu/widget/DragSortListView;->mRemoveListener:Lcom/meizu/widget/DragSortListView$RemoveListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/DragSortListView;->mRemoveListener:Lcom/meizu/widget/DragSortListView$RemoveListener;

    invoke-interface {v0, p1}, Lcom/meizu/widget/DragSortListView$RemoveListener;->remove(I)V

    :cond_0
    invoke-direct {p0}, Lcom/meizu/widget/DragSortListView;->destroyFloatView()V

    invoke-direct {p0}, Lcom/meizu/widget/DragSortListView;->adjustOnReorder()V

    invoke-direct {p0}, Lcom/meizu/widget/DragSortListView;->clearPositions()V

    iget-boolean v0, p0, Lcom/meizu/widget/DragSortListView;->mInTouchEvent:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    iput v0, p0, Lcom/meizu/widget/DragSortListView;->mDragState:I

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/widget/DragSortListView;->mDragState:I

    goto :goto_0
.end method

.method private drawDivider(ILandroid/graphics/Canvas;)V
    .locals 11
    .param p1, "expPosition"    # I
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .local v2, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getDividerHeight()I

    move-result v3

    .local v3, "dividerHeight":I
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v8, p1, v8

    invoke-virtual {p0, v8}, Lcom/meizu/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .local v4, "expItem":Landroid/view/ViewGroup;
    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getPaddingLeft()I

    move-result v5

    .local v5, "l":I
    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getPaddingRight()I

    move-result v9

    sub-int v6, v8, v9

    .local v6, "r":I
    invoke-virtual {v4, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v1

    .local v1, "childHeight":I
    iget v8, p0, Lcom/meizu/widget/DragSortListView;->mSrcPos:I

    if-le p1, v8, :cond_1

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getTop()I

    move-result v8

    add-int v7, v8, v1

    .local v7, "t":I
    add-int v0, v7, v3

    .local v0, "b":I
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    iget v8, p0, Lcom/meizu/widget/DragSortListView;->mDividerPaddingLeft:I

    add-int/2addr v8, v5

    iget v9, p0, Lcom/meizu/widget/DragSortListView;->mDividerPaddingRight:I

    sub-int v9, v6, v9

    invoke-virtual {p2, v8, v7, v9, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget v8, p0, Lcom/meizu/widget/DragSortListView;->mDividerPaddingLeft:I

    add-int/2addr v8, v5

    iget v9, p0, Lcom/meizu/widget/DragSortListView;->mDividerPaddingRight:I

    sub-int v9, v6, v9

    invoke-virtual {v2, v8, v7, v9, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .end local v0    # "b":I
    .end local v1    # "childHeight":I
    .end local v4    # "expItem":Landroid/view/ViewGroup;
    .end local v5    # "l":I
    .end local v6    # "r":I
    .end local v7    # "t":I
    :cond_0
    return-void

    .restart local v1    # "childHeight":I
    .restart local v4    # "expItem":Landroid/view/ViewGroup;
    .restart local v5    # "l":I
    .restart local v6    # "r":I
    :cond_1
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getBottom()I

    move-result v8

    sub-int v0, v8, v1

    .restart local v0    # "b":I
    sub-int v7, v0, v3

    .restart local v7    # "t":I
    goto :goto_0
.end method

.method private dropFloatView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x2

    iput v1, p0, Lcom/meizu/widget/DragSortListView;->mDragState:I

    iget-object v1, p0, Lcom/meizu/widget/DragSortListView;->mDropListener:Lcom/meizu/widget/DragSortListView$DropListener;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/meizu/widget/DragSortListView;->mFloatPos:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/meizu/widget/DragSortListView;->mFloatPos:I

    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    .local v0, "numHeaders":I
    iget-object v1, p0, Lcom/meizu/widget/DragSortListView;->mDropListener:Lcom/meizu/widget/DragSortListView$DropListener;

    iget v2, p0, Lcom/meizu/widget/DragSortListView;->mSrcPos:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/meizu/widget/DragSortListView;->mFloatPos:I

    sub-int/2addr v3, v0

    invoke-interface {v1, v2, v3}, Lcom/meizu/widget/DragSortListView$DropListener;->drop(II)V

    .end local v0    # "numHeaders":I
    :cond_0
    invoke-direct {p0}, Lcom/meizu/widget/DragSortListView;->destroyFloatView()V

    invoke-direct {p0}, Lcom/meizu/widget/DragSortListView;->adjustOnReorder()V

    invoke-direct {p0}, Lcom/meizu/widget/DragSortListView;->clearPositions()V

    invoke-direct {p0}, Lcom/meizu/widget/DragSortListView;->adjustAllItems()V

    iget-boolean v1, p0, Lcom/meizu/widget/DragSortListView;->mInTouchEvent:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    iput v1, p0, Lcom/meizu/widget/DragSortListView;->mDragState:I

    :goto_0
    return-void

    :cond_1
    iput v4, p0, Lcom/meizu/widget/DragSortListView;->mDragState:I

    goto :goto_0
.end method

.method private static findFirstSetIndex(Landroid/util/SparseBooleanArray;II)I
    .locals 3
    .param p0, "sba"    # Landroid/util/SparseBooleanArray;
    .param p1, "rangeStart"    # I
    .param p2, "rangeEnd"    # I

    .prologue
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .local v1, "size":I
    invoke-static {p0, p1}, Lcom/meizu/widget/DragSortListView;->insertionIndexForKey(Landroid/util/SparseBooleanArray;I)I

    move-result v0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    if-ge v2, p2, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    if-lt v2, p2, :cond_3

    :cond_1
    const/4 v2, -0x1

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method private getChildHeight(I)I
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    iget v5, p0, Lcom/meizu/widget/DragSortListView;->mSrcPos:I

    if-ne p1, v5, :cond_0

    return v7

    :cond_0
    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v5, p1, v5

    invoke-virtual {p0, v5}, Lcom/meizu/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_1

    invoke-direct {p0, p1, v4, v7}, Lcom/meizu/widget/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v5

    return v5

    :cond_1
    iget-object v5, p0, Lcom/meizu/widget/DragSortListView;->mChildHeightCache:Lcom/meizu/widget/DragSortListView$HeightCache;

    invoke-virtual {v5, p1}, Lcom/meizu/widget/DragSortListView$HeightCache;->get(I)I

    move-result v1

    .local v1, "childHeight":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    .local v2, "type":I
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v3

    .local v3, "typeCount":I
    iget-object v5, p0, Lcom/meizu/widget/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    array-length v5, v5

    if-eq v3, v5, :cond_3

    new-array v5, v3, [Landroid/view/View;

    iput-object v5, p0, Lcom/meizu/widget/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    :cond_3
    if-ltz v2, :cond_5

    iget-object v5, p0, Lcom/meizu/widget/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aget-object v5, v5, v2

    if-nez v5, :cond_4

    invoke-interface {v0, p1, v6, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/widget/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aput-object v4, v5, v2

    :goto_0
    const/4 v5, 0x1

    invoke-direct {p0, p1, v4, v5}, Lcom/meizu/widget/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v1

    iget-object v5, p0, Lcom/meizu/widget/DragSortListView;->mChildHeightCache:Lcom/meizu/widget/DragSortListView$HeightCache;

    invoke-virtual {v5, p1, v1}, Lcom/meizu/widget/DragSortListView$HeightCache;->add(II)V

    return v1

    :cond_4
    iget-object v5, p0, Lcom/meizu/widget/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aget-object v5, v5, v2

    invoke-interface {v0, p1, v5, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    :cond_5
    invoke-interface {v0, p1, v6, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_0
.end method

.method private getChildHeight(ILandroid/view/View;Z)I
    .locals 6
    .param p1, "position"    # I
    .param p2, "item"    # Landroid/view/View;
    .param p3, "invalidChildHeight"    # Z

    .prologue
    const/4 v5, 0x0

    iget v3, p0, Lcom/meizu/widget/DragSortListView;->mSrcPos:I

    if-ne p1, v3, :cond_0

    return v5

    :cond_0
    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getHeaderViewsCount()I

    move-result v3

    if-lt p1, v3, :cond_1

    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getFooterViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    if-lt p1, v3, :cond_2

    :cond_1
    move-object v0, p2

    .end local p2    # "item":Landroid/view/View;
    .local v0, "child":Landroid/view/View;
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_3

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_3

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    return v3

    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local p2    # "item":Landroid/view/View;
    :cond_2
    check-cast p2, Landroid/view/ViewGroup;

    .end local p2    # "item":Landroid/view/View;
    invoke-virtual {p2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "child":Landroid/view/View;
    goto :goto_0

    .restart local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .local v1, "childHeight":I
    if-eqz v1, :cond_4

    if-eqz p3, :cond_5

    :cond_4
    invoke-direct {p0, v0}, Lcom/meizu/widget/DragSortListView;->measureItem(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    :cond_5
    return v1
.end method

.method private getItemHeight(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/meizu/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/meizu/widget/DragSortListView;->getChildHeight(I)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/meizu/widget/DragSortListView;->calcItemHeight(II)I

    move-result v1

    return v1
.end method

.method private getShuffleEdge(II)I
    .locals 11
    .param p1, "position"    # I
    .param p2, "top"    # I

    .prologue
    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getHeaderViewsCount()I

    move-result v7

    .local v7, "numHeaders":I
    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getFooterViewsCount()I

    move-result v6

    .local v6, "numFooters":I
    if-le p1, v7, :cond_0

    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getCount()I

    move-result v9

    sub-int/2addr v9, v6

    if-lt p1, v9, :cond_1

    :cond_0
    return p2

    :cond_1
    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getDividerHeight()I

    move-result v2

    .local v2, "divHeight":I
    iget v9, p0, Lcom/meizu/widget/DragSortListView;->mFloatViewHeight:I

    iget v10, p0, Lcom/meizu/widget/DragSortListView;->mItemHeightCollapsed:I

    sub-int v5, v9, v10

    .local v5, "maxBlankHeight":I
    invoke-direct {p0, p1}, Lcom/meizu/widget/DragSortListView;->getChildHeight(I)I

    move-result v1

    .local v1, "childHeight":I
    invoke-direct {p0, p1}, Lcom/meizu/widget/DragSortListView;->getItemHeight(I)I

    move-result v4

    .local v4, "itemHeight":I
    move v8, p2

    .local v8, "otop":I
    iget v9, p0, Lcom/meizu/widget/DragSortListView;->mSecondExpPos:I

    iget v10, p0, Lcom/meizu/widget/DragSortListView;->mSrcPos:I

    if-gt v9, v10, :cond_5

    iget v9, p0, Lcom/meizu/widget/DragSortListView;->mSecondExpPos:I

    if-ne p1, v9, :cond_4

    iget v9, p0, Lcom/meizu/widget/DragSortListView;->mFirstExpPos:I

    iget v10, p0, Lcom/meizu/widget/DragSortListView;->mSecondExpPos:I

    if-eq v9, v10, :cond_4

    iget v9, p0, Lcom/meizu/widget/DragSortListView;->mSrcPos:I

    if-ne p1, v9, :cond_3

    add-int v9, p2, v4

    iget v10, p0, Lcom/meizu/widget/DragSortListView;->mFloatViewHeight:I

    sub-int v8, v9, v10

    :cond_2
    :goto_0
    iget v9, p0, Lcom/meizu/widget/DragSortListView;->mSrcPos:I

    if-gt p1, v9, :cond_7

    iget v9, p0, Lcom/meizu/widget/DragSortListView;->mFloatViewHeight:I

    sub-int/2addr v9, v2

    add-int/lit8 v10, p1, -0x1

    invoke-direct {p0, v10}, Lcom/meizu/widget/DragSortListView;->getChildHeight(I)I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int v3, v8, v9

    .local v3, "edge":I
    :goto_1
    return v3

    .end local v3    # "edge":I
    :cond_3
    sub-int v0, v4, v1

    .local v0, "blankHeight":I
    add-int v9, p2, v0

    sub-int v8, v9, v5

    goto :goto_0

    .end local v0    # "blankHeight":I
    :cond_4
    iget v9, p0, Lcom/meizu/widget/DragSortListView;->mSecondExpPos:I

    if-le p1, v9, :cond_2

    iget v9, p0, Lcom/meizu/widget/DragSortListView;->mSrcPos:I

    if-gt p1, v9, :cond_2

    sub-int v8, p2, v5

    goto :goto_0

    :cond_5
    iget v9, p0, Lcom/meizu/widget/DragSortListView;->mSrcPos:I

    if-le p1, v9, :cond_6

    iget v9, p0, Lcom/meizu/widget/DragSortListView;->mFirstExpPos:I

    if-gt p1, v9, :cond_6

    add-int v8, p2, v5

    goto :goto_0

    :cond_6
    iget v9, p0, Lcom/meizu/widget/DragSortListView;->mSecondExpPos:I

    if-ne p1, v9, :cond_2

    iget v9, p0, Lcom/meizu/widget/DragSortListView;->mFirstExpPos:I

    iget v10, p0, Lcom/meizu/widget/DragSortListView;->mSecondExpPos:I

    if-eq v9, v10, :cond_2

    sub-int v0, v4, v1

    .restart local v0    # "blankHeight":I
    add-int v8, p2, v0

    goto :goto_0

    .end local v0    # "blankHeight":I
    :cond_7
    sub-int v9, v1, v2

    iget v10, p0, Lcom/meizu/widget/DragSortListView;->mFloatViewHeight:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int v3, v8, v9

    .restart local v3    # "edge":I
    goto :goto_1
.end method

.method private static insertionIndexForKey(Landroid/util/SparseBooleanArray;I)I
    .locals 4
    .param p0, "sba"    # Landroid/util/SparseBooleanArray;
    .param p1, "key"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "low":I
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .local v0, "high":I
    :goto_0
    sub-int v3, v0, v1

    if-lez v3, :cond_1

    add-int v3, v1, v0

    shr-int/lit8 v2, v3, 0x1

    .local v2, "middle":I
    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    if-ge v3, p1, :cond_0

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0

    .end local v2    # "middle":I
    :cond_1
    return v1
.end method

.method private invalidateFloatView()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/DragSortListView;->mFloatViewInvalidated:Z

    return-void
.end method

.method private measureFloatView()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/meizu/widget/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/meizu/widget/DragSortListView;->measureItem(Landroid/view/View;)V

    iget-object v0, p0, Lcom/meizu/widget/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/DragSortListView;->mFloatViewHeight:I

    iget v0, p0, Lcom/meizu/widget/DragSortListView;->mFloatViewHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/meizu/widget/DragSortListView;->mFloatViewHeightHalf:I

    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .locals 7
    .param p1, "item"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .restart local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget v3, p0, Lcom/meizu/widget/DragSortListView;->mWidthMeasureSpec:I

    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getListPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getListPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    .local v2, "wspec":I
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_1

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .local v0, "hspec":I
    :goto_0
    invoke-virtual {p1, v2, v0}, Landroid/view/View;->measure(II)V

    return-void

    .end local v0    # "hspec":I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "hspec":I
    goto :goto_0
.end method

.method private printPosData()V
    .locals 3

    .prologue
    const-string v0, "mobeta"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSrcPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/widget/DragSortListView;->mSrcPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFirstExpPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/widget/DragSortListView;->mFirstExpPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSecondExpPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/widget/DragSortListView;->mSecondExpPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static rotate(IIII)I
    .locals 1
    .param p0, "value"    # I
    .param p1, "offset"    # I
    .param p2, "lowerBound"    # I
    .param p3, "upperBound"    # I

    .prologue
    sub-int v0, p3, p2

    .local v0, "windowSize":I
    add-int/2addr p0, p1

    if-ge p0, p2, :cond_1

    add-int/2addr p0, v0

    :cond_0
    :goto_0
    return p0

    :cond_1
    if-lt p0, p3, :cond_0

    sub-int/2addr p0, v0

    goto :goto_0
.end method

.method private saveTouchCoords(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .local v0, "action":I
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/meizu/widget/DragSortListView;->mX:I

    iput v1, p0, Lcom/meizu/widget/DragSortListView;->mLastX:I

    iget v1, p0, Lcom/meizu/widget/DragSortListView;->mY:I

    iput v1, p0, Lcom/meizu/widget/DragSortListView;->mLastY:I

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/meizu/widget/DragSortListView;->mX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/meizu/widget/DragSortListView;->mY:I

    if-nez v0, :cond_1

    iget v1, p0, Lcom/meizu/widget/DragSortListView;->mX:I

    iput v1, p0, Lcom/meizu/widget/DragSortListView;->mLastX:I

    iget v1, p0, Lcom/meizu/widget/DragSortListView;->mY:I

    iput v1, p0, Lcom/meizu/widget/DragSortListView;->mLastY:I

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/meizu/widget/DragSortListView;->mX:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/meizu/widget/DragSortListView;->mOffsetX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/meizu/widget/DragSortListView;->mY:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/meizu/widget/DragSortListView;->mOffsetY:I

    return-void
.end method

.method private updateFloatView()V
    .locals 13

    .prologue
    iget-object v9, p0, Lcom/meizu/widget/DragSortListView;->mFloatViewManager:Lcom/meizu/widget/DragSortListView$FloatViewManager;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/meizu/widget/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    iget v10, p0, Lcom/meizu/widget/DragSortListView;->mX:I

    iget v11, p0, Lcom/meizu/widget/DragSortListView;->mY:I

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Point;->set(II)V

    iget-object v9, p0, Lcom/meizu/widget/DragSortListView;->mFloatViewManager:Lcom/meizu/widget/DragSortListView$FloatViewManager;

    iget-object v10, p0, Lcom/meizu/widget/DragSortListView;->mFloatView:Landroid/view/View;

    iget-object v11, p0, Lcom/meizu/widget/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget-object v12, p0, Lcom/meizu/widget/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    invoke-interface {v9, v10, v11, v12}, Lcom/meizu/widget/DragSortListView$FloatViewManager;->onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V

    :cond_0
    iget-object v9, p0, Lcom/meizu/widget/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v2, v9, Landroid/graphics/Point;->x:I

    .local v2, "floatX":I
    iget-object v9, p0, Lcom/meizu/widget/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v3, v9, Landroid/graphics/Point;->y:I

    .local v3, "floatY":I
    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getPaddingLeft()I

    move-result v7

    .local v7, "padLeft":I
    iget v9, p0, Lcom/meizu/widget/DragSortListView;->mDragFlags:I

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_7

    if-le v2, v7, :cond_7

    iget-object v9, p0, Lcom/meizu/widget/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v7, v9, Landroid/graphics/Point;->x:I

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getHeaderViewsCount()I

    move-result v6

    .local v6, "numHeaders":I
    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getFooterViewsCount()I

    move-result v5

    .local v5, "numFooters":I
    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    .local v1, "firstPos":I
    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getLastVisiblePosition()I

    move-result v4

    .local v4, "lastPos":I
    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getPaddingTop()I

    move-result v8

    .local v8, "topLimit":I
    if-ge v1, v6, :cond_2

    sub-int v9, v6, v1

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p0, v9}, Lcom/meizu/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v8

    :cond_2
    iget v9, p0, Lcom/meizu/widget/DragSortListView;->mDragFlags:I

    and-int/lit8 v9, v9, 0x8

    if-nez v9, :cond_3

    iget v9, p0, Lcom/meizu/widget/DragSortListView;->mSrcPos:I

    if-gt v1, v9, :cond_3

    iget v9, p0, Lcom/meizu/widget/DragSortListView;->mSrcPos:I

    sub-int/2addr v9, v1

    invoke-virtual {p0, v9}, Lcom/meizu/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    :cond_3
    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getHeight()I

    move-result v9

    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getPaddingBottom()I

    move-result v10

    sub-int v0, v9, v10

    .local v0, "bottomLimit":I
    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getCount()I

    move-result v9

    sub-int/2addr v9, v5

    add-int/lit8 v9, v9, -0x1

    if-lt v4, v9, :cond_4

    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getCount()I

    move-result v9

    sub-int/2addr v9, v5

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v1

    invoke-virtual {p0, v9}, Lcom/meizu/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v0

    :cond_4
    iget v9, p0, Lcom/meizu/widget/DragSortListView;->mDragFlags:I

    and-int/lit8 v9, v9, 0x4

    if-nez v9, :cond_5

    iget v9, p0, Lcom/meizu/widget/DragSortListView;->mSrcPos:I

    if-lt v4, v9, :cond_5

    iget v9, p0, Lcom/meizu/widget/DragSortListView;->mSrcPos:I

    sub-int/2addr v9, v1

    invoke-virtual {p0, v9}, Lcom/meizu/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_5
    if-ge v3, v8, :cond_8

    iget-object v9, p0, Lcom/meizu/widget/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v8, v9, Landroid/graphics/Point;->y:I

    :cond_6
    :goto_1
    iget-object v9, p0, Lcom/meizu/widget/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    iget v10, p0, Lcom/meizu/widget/DragSortListView;->mFloatViewHeightHalf:I

    add-int/2addr v9, v10

    iput v9, p0, Lcom/meizu/widget/DragSortListView;->mFloatViewMid:I

    return-void

    .end local v0    # "bottomLimit":I
    .end local v1    # "firstPos":I
    .end local v4    # "lastPos":I
    .end local v5    # "numFooters":I
    .end local v6    # "numHeaders":I
    .end local v8    # "topLimit":I
    :cond_7
    iget v9, p0, Lcom/meizu/widget/DragSortListView;->mDragFlags:I

    and-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_1

    if-ge v2, v7, :cond_1

    iget-object v9, p0, Lcom/meizu/widget/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v7, v9, Landroid/graphics/Point;->x:I

    goto/16 :goto_0

    .restart local v0    # "bottomLimit":I
    .restart local v1    # "firstPos":I
    .restart local v4    # "lastPos":I
    .restart local v5    # "numFooters":I
    .restart local v6    # "numHeaders":I
    .restart local v8    # "topLimit":I
    :cond_8
    iget v9, p0, Lcom/meizu/widget/DragSortListView;->mFloatViewHeight:I

    add-int/2addr v9, v3

    if-le v9, v0, :cond_6

    iget-object v9, p0, Lcom/meizu/widget/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v10, p0, Lcom/meizu/widget/DragSortListView;->mFloatViewHeight:I

    sub-int v10, v0, v10

    iput v10, v9, Landroid/graphics/Point;->y:I

    goto :goto_1
.end method

.method private updatePositions()Z
    .locals 30

    .prologue
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/DragSortListView;->getFirstVisiblePosition()I

    move-result v9

    .local v9, "first":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/DragSortListView;->mFirstExpPos:I

    move/from16 v23, v0

    .local v23, "startPos":I
    sub-int v27, v23, v9

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/meizu/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .local v25, "startView":Landroid/view/View;
    if-nez v25, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/DragSortListView;->getChildCount()I

    move-result v27

    div-int/lit8 v27, v27, 0x2

    add-int v23, v9, v27

    sub-int v27, v23, v9

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/meizu/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    :cond_0
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v24

    .local v24, "startTop":I
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getHeight()I

    move-result v10

    .local v10, "itemHeight":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/meizu/widget/DragSortListView;->getShuffleEdge(II)I

    move-result v5

    .local v5, "edge":I
    move v13, v5

    .local v13, "lastEdge":I
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/DragSortListView;->getDividerHeight()I

    move-result v4

    .local v4, "divHeight":I
    move/from16 v11, v23

    .local v11, "itemPos":I
    move/from16 v12, v24

    .local v12, "itemTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v5, :cond_8

    :goto_0
    if-ltz v11, :cond_1

    add-int/lit8 v11, v11, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/meizu/widget/DragSortListView;->getItemHeight(I)I

    move-result v10

    if-nez v11, :cond_7

    sub-int v27, v12, v4

    sub-int v5, v27, v10

    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/DragSortListView;->getHeaderViewsCount()I

    move-result v15

    .local v15, "numHeaders":I
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/DragSortListView;->getFooterViewsCount()I

    move-result v14

    .local v14, "numFooters":I
    const/16 v26, 0x0

    .local v26, "updated":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/DragSortListView;->mFirstExpPos:I

    move/from16 v16, v0

    .local v16, "oldFirstExpPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/DragSortListView;->mSecondExpPos:I

    move/from16 v17, v0

    .local v17, "oldSecondExpPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/DragSortListView;->mSlideFrac:F

    move/from16 v18, v0

    .local v18, "oldSlideFrac":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/widget/DragSortListView;->mAnimate:Z

    move/from16 v27, v0

    if-eqz v27, :cond_d

    sub-int v27, v5, v13

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .local v7, "edgeToEdge":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v5, :cond_a

    move v6, v5

    .local v6, "edgeBottom":I
    move v8, v13

    .local v8, "edgeTop":I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/DragSortListView;->mSlideRegionFrac:F

    move/from16 v27, v0

    const/high16 v28, 0x3f000000    # 0.5f

    mul-float v27, v27, v28

    int-to-float v0, v7

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v21, v0

    .local v21, "slideRgnHeight":I
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v22, v0

    .local v22, "slideRgnHeightF":F
    add-int v20, v8, v21

    .local v20, "slideEdgeTop":I
    sub-int v19, v6, v21

    .local v19, "slideEdgeBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v20

    if-ge v0, v1, :cond_b

    add-int/lit8 v27, v11, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/DragSortListView;->mFirstExpPos:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/meizu/widget/DragSortListView;->mSecondExpPos:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    sub-int v27, v20, v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x3f000000    # 0.5f

    mul-float v27, v27, v28

    div-float v27, v27, v22

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/DragSortListView;->mSlideFrac:F

    .end local v6    # "edgeBottom":I
    .end local v7    # "edgeToEdge":I
    .end local v8    # "edgeTop":I
    .end local v19    # "slideEdgeBottom":I
    .end local v20    # "slideEdgeTop":I
    .end local v21    # "slideRgnHeight":I
    .end local v22    # "slideRgnHeightF":F
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/DragSortListView;->mFirstExpPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v15, :cond_e

    move v11, v15

    move-object/from16 v0, p0

    iput v11, v0, Lcom/meizu/widget/DragSortListView;->mFirstExpPos:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/meizu/widget/DragSortListView;->mSecondExpPos:I

    :cond_2
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/DragSortListView;->mFirstExpPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v16

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/DragSortListView;->mSecondExpPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v17

    if-eq v0, v1, :cond_f

    :cond_3
    :goto_5
    const/16 v26, 0x1

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/DragSortListView;->mFloatPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-eq v11, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/DragSortListView;->mDragListener:Lcom/meizu/widget/DragSortListView$DragListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/DragSortListView;->mDragListener:Lcom/meizu/widget/DragSortListView$DragListener;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/DragSortListView;->mFloatPos:I

    move/from16 v28, v0

    sub-int v28, v28, v15

    sub-int v29, v11, v15

    invoke-interface/range {v27 .. v29}, Lcom/meizu/widget/DragSortListView$DragListener;->drag(II)V

    :cond_5
    move-object/from16 v0, p0

    iput v11, v0, Lcom/meizu/widget/DragSortListView;->mFloatPos:I

    const/16 v26, 0x1

    :cond_6
    return v26

    .end local v14    # "numFooters":I
    .end local v15    # "numHeaders":I
    .end local v16    # "oldFirstExpPos":I
    .end local v17    # "oldSecondExpPos":I
    .end local v18    # "oldSlideFrac":F
    .end local v26    # "updated":Z
    :cond_7
    add-int v27, v10, v4

    sub-int v12, v12, v27

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/meizu/widget/DragSortListView;->getShuffleEdge(II)I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v5, :cond_1

    move v13, v5

    goto/16 :goto_0

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/DragSortListView;->getCount()I

    move-result v3

    .local v3, "count":I
    :goto_6
    if-ge v11, v3, :cond_1

    add-int/lit8 v27, v3, -0x1

    move/from16 v0, v27

    if-ne v11, v0, :cond_9

    add-int v27, v12, v4

    add-int v5, v27, v10

    goto/16 :goto_1

    :cond_9
    add-int v27, v4, v10

    add-int v12, v12, v27

    add-int/lit8 v27, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/meizu/widget/DragSortListView;->getItemHeight(I)I

    move-result v10

    add-int/lit8 v27, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1, v12}, Lcom/meizu/widget/DragSortListView;->getShuffleEdge(II)I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-lt v0, v5, :cond_1

    move v13, v5

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .end local v3    # "count":I
    .restart local v7    # "edgeToEdge":I
    .restart local v14    # "numFooters":I
    .restart local v15    # "numHeaders":I
    .restart local v16    # "oldFirstExpPos":I
    .restart local v17    # "oldSecondExpPos":I
    .restart local v18    # "oldSlideFrac":F
    .restart local v26    # "updated":Z
    :cond_a
    move v8, v5

    .restart local v8    # "edgeTop":I
    move v6, v13

    .restart local v6    # "edgeBottom":I
    goto/16 :goto_2

    .restart local v19    # "slideEdgeBottom":I
    .restart local v20    # "slideEdgeTop":I
    .restart local v21    # "slideRgnHeight":I
    .restart local v22    # "slideRgnHeightF":F
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v19

    if-ge v0, v1, :cond_c

    move-object/from16 v0, p0

    iput v11, v0, Lcom/meizu/widget/DragSortListView;->mFirstExpPos:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/meizu/widget/DragSortListView;->mSecondExpPos:I

    goto/16 :goto_3

    :cond_c
    move-object/from16 v0, p0

    iput v11, v0, Lcom/meizu/widget/DragSortListView;->mFirstExpPos:I

    add-int/lit8 v27, v11, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/DragSortListView;->mSecondExpPos:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    sub-int v27, v6, v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v27, v27, v22

    const/high16 v28, 0x3f800000    # 1.0f

    add-float v27, v27, v28

    const/high16 v28, 0x3f000000    # 0.5f

    mul-float v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/DragSortListView;->mSlideFrac:F

    goto/16 :goto_3

    .end local v6    # "edgeBottom":I
    .end local v7    # "edgeToEdge":I
    .end local v8    # "edgeTop":I
    .end local v19    # "slideEdgeBottom":I
    .end local v20    # "slideEdgeTop":I
    .end local v21    # "slideRgnHeight":I
    .end local v22    # "slideRgnHeightF":F
    :cond_d
    move-object/from16 v0, p0

    iput v11, v0, Lcom/meizu/widget/DragSortListView;->mFirstExpPos:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/meizu/widget/DragSortListView;->mSecondExpPos:I

    goto/16 :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/DragSortListView;->mSecondExpPos:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/DragSortListView;->getCount()I

    move-result v28

    sub-int v28, v28, v14

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/DragSortListView;->getCount()I

    move-result v27

    sub-int v27, v27, v14

    add-int/lit8 v11, v27, -0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/meizu/widget/DragSortListView;->mFirstExpPos:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/meizu/widget/DragSortListView;->mSecondExpPos:I

    goto/16 :goto_4

    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/widget/DragSortListView;->mSlideFrac:F

    move/from16 v27, v0

    cmpl-float v27, v27, v18

    if-eqz v27, :cond_4

    goto/16 :goto_5
.end method

.method private updateScrollStarts()V
    .locals 6

    .prologue
    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getPaddingTop()I

    move-result v2

    .local v2, "padTop":I
    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getHeight()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getPaddingBottom()I

    move-result v4

    sub-int v1, v3, v4

    .local v1, "listHeight":I
    int-to-float v0, v1

    .local v0, "heightF":F
    int-to-float v3, v2

    iget v4, p0, Lcom/meizu/widget/DragSortListView;->mDragUpScrollStartFrac:F

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/meizu/widget/DragSortListView;->mUpScrollStartYF:F

    int-to-float v3, v2

    iget v4, p0, Lcom/meizu/widget/DragSortListView;->mDragDownScrollStartFrac:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v4, v5, v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lcom/meizu/widget/DragSortListView;->mDownScrollStartYF:F

    iget v3, p0, Lcom/meizu/widget/DragSortListView;->mUpScrollStartYF:F

    float-to-int v3, v3

    iput v3, p0, Lcom/meizu/widget/DragSortListView;->mUpScrollStartY:I

    iget v3, p0, Lcom/meizu/widget/DragSortListView;->mDownScrollStartYF:F

    float-to-int v3, v3

    iput v3, p0, Lcom/meizu/widget/DragSortListView;->mDownScrollStartY:I

    iget v3, p0, Lcom/meizu/widget/DragSortListView;->mUpScrollStartYF:F

    int-to-float v4, v2

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/meizu/widget/DragSortListView;->mDragUpScrollHeight:F

    add-int v3, v2, v1

    int-to-float v3, v3

    iget v4, p0, Lcom/meizu/widget/DragSortListView;->mDownScrollStartYF:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/meizu/widget/DragSortListView;->mDragDownScrollHeight:F

    return-void
.end method


# virtual methods
.method public cancelDrag()V
    .locals 2

    .prologue
    iget v0, p0, Lcom/meizu/widget/DragSortListView;->mDragState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/DragSortListView;->mDragScroller:Lcom/meizu/widget/DragSortListView$DragScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/DragSortListView$DragScroller;->stopScrolling(Z)V

    invoke-direct {p0}, Lcom/meizu/widget/DragSortListView;->destroyFloatView()V

    invoke-direct {p0}, Lcom/meizu/widget/DragSortListView;->clearPositions()V

    invoke-direct {p0}, Lcom/meizu/widget/DragSortListView;->adjustAllItems()V

    iget-boolean v0, p0, Lcom/meizu/widget/DragSortListView;->mInTouchEvent:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    iput v0, p0, Lcom/meizu/widget/DragSortListView;->mDragState:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/widget/DragSortListView;->mDragState:I

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-super/range {p0 .. p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/widget/DragSortListView;->mDragState:I

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/widget/DragSortListView;->mFirstExpPos:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/DragSortListView;->mSrcPos:I

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/widget/DragSortListView;->mFirstExpPos:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1}, Lcom/meizu/widget/DragSortListView;->drawDivider(ILandroid/graphics/Canvas;)V

    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/widget/DragSortListView;->mSecondExpPos:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/DragSortListView;->mFirstExpPos:I

    if-eq v2, v3, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/widget/DragSortListView;->mSecondExpPos:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/widget/DragSortListView;->mSrcPos:I

    if-eq v2, v3, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/widget/DragSortListView;->mSecondExpPos:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1}, Lcom/meizu/widget/DragSortListView;->drawDivider(ILandroid/graphics/Canvas;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/widget/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/widget/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v14

    .local v14, "w":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/widget/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v13

    .local v13, "h":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/widget/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v0, v2, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    .local v16, "x":I
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/DragSortListView;->getWidth()I

    move-result v15

    .local v15, "width":I
    if-gez v16, :cond_2

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    :cond_2
    move/from16 v0, v16

    if-ge v0, v15, :cond_4

    sub-int v2, v15, v16

    int-to-float v2, v2

    int-to-float v3, v15

    div-float v9, v2, v3

    .local v9, "alphaMod":F
    mul-float/2addr v9, v9

    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/widget/DragSortListView;->mCurrFloatAlpha:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    mul-float/2addr v2, v9

    float-to-int v7, v2

    .local v7, "alpha":I
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .local v11, "backgroundPadding":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/widget/DragSortListView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v11}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v2, v11, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v14

    iget v3, v11, Landroid/graphics/Rect;->right:I

    add-int v12, v2, v3

    .local v12, "backgroundWidth":I
    iget v2, v11, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v13

    iget v3, v11, Landroid/graphics/Rect;->bottom:I

    add-int v10, v2, v3

    .local v10, "backgroundHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/widget/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, v11, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/widget/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v4, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v12, v10}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/widget/DragSortListView;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v12, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/widget/DragSortListView;->mBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v2, v11, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v11, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    int-to-float v5, v14

    int-to-float v6, v13

    const/16 v8, 0x1f

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/widget/DragSortListView;->mFloatView:Landroid/view/View;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .end local v7    # "alpha":I
    .end local v9    # "alphaMod":F
    .end local v10    # "backgroundHeight":I
    .end local v11    # "backgroundPadding":Landroid/graphics/Rect;
    .end local v12    # "backgroundWidth":I
    .end local v13    # "h":I
    .end local v14    # "w":I
    .end local v15    # "width":I
    .end local v16    # "x":I
    :cond_3
    return-void

    .restart local v13    # "h":I
    .restart local v14    # "w":I
    .restart local v15    # "width":I
    .restart local v16    # "x":I
    :cond_4
    const/4 v9, 0x0

    .restart local v9    # "alphaMod":F
    goto :goto_0
.end method

.method public getFloatAlpha()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/meizu/widget/DragSortListView;->mCurrFloatAlpha:F

    return v0
.end method

.method public getInputAdapter()Landroid/widget/ListAdapter;
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/meizu/widget/DragSortListView;->mAdapterWrapper:Lcom/meizu/widget/DragSortListView$AdapterWrapper;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/DragSortListView;->mAdapterWrapper:Lcom/meizu/widget/DragSortListView$AdapterWrapper;

    invoke-virtual {v0}, Lcom/meizu/widget/DragSortListView$AdapterWrapper;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public isDragEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/meizu/widget/DragSortListView;->mDragEnabled:Z

    return v0
.end method

.method protected layoutChildren()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    iget-object v0, p0, Lcom/meizu/widget/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/widget/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/widget/DragSortListView;->mFloatViewOnMeasured:Z

    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meizu/widget/DragSortListView;->mFloatView:Landroid/view/View;

    iget-object v1, p0, Lcom/meizu/widget/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/widget/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    iput-boolean v3, p0, Lcom/meizu/widget/DragSortListView;->mFloatViewOnMeasured:Z

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/meizu/widget/DragSortListView;->measureFloatView()V

    goto :goto_0
.end method

.method public listViewIntercepted()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/meizu/widget/DragSortListView;->mListViewIntercepted:Z

    return v0
.end method

.method public moveCheckState(II)V
    .locals 12
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .local v0, "cip":Landroid/util/SparseBooleanArray;
    move v3, p1

    .local v3, "rangeStart":I
    move v2, p2

    .local v2, "rangeEnd":I
    if-ge p2, p1, :cond_0

    move v3, p2

    move v2, p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    new-array v6, v7, [I

    .local v6, "runStart":[I
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    new-array v5, v7, [I

    .local v5, "runEnd":[I
    invoke-static {v0, v3, v2, v6, v5}, Lcom/meizu/widget/DragSortListView;->buildRunList(Landroid/util/SparseBooleanArray;II[I[I)I

    move-result v4

    .local v4, "runCount":I
    if-ne v4, v10, :cond_1

    aget v7, v6, v9

    aget v8, v5, v9

    if-ne v7, v8, :cond_1

    return-void

    :cond_1
    if-ge p1, p2, :cond_2

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eq v1, v4, :cond_3

    aget v7, v6, v1

    invoke-static {v7, v11, v3, v2}, Lcom/meizu/widget/DragSortListView;->rotate(IIII)I

    move-result v7

    invoke-virtual {p0, v7, v10}, Lcom/meizu/widget/DragSortListView;->setItemChecked(IZ)V

    aget v7, v5, v1

    invoke-static {v7, v11, v3, v2}, Lcom/meizu/widget/DragSortListView;->rotate(IIII)I

    move-result v7

    invoke-virtual {p0, v7, v9}, Lcom/meizu/widget/DragSortListView;->setItemChecked(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-eq v1, v4, :cond_3

    aget v7, v6, v1

    invoke-virtual {p0, v7, v9}, Lcom/meizu/widget/DragSortListView;->setItemChecked(IZ)V

    aget v7, v5, v1

    invoke-virtual {p0, v7, v10}, Lcom/meizu/widget/DragSortListView;->setItemChecked(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public moveItem(II)V
    .locals 2
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    iget-object v1, p0, Lcom/meizu/widget/DragSortListView;->mDropListener:Lcom/meizu/widget/DragSortListView$DropListener;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getInputAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .local v0, "count":I
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    if-ge p2, v0, :cond_0

    iget-object v1, p0, Lcom/meizu/widget/DragSortListView;->mDropListener:Lcom/meizu/widget/DragSortListView$DropListener;

    invoke-interface {v1, p1, p2}, Lcom/meizu/widget/DragSortListView$DropListener;->drop(II)V

    .end local v0    # "count":I
    :cond_0
    return-void
.end method

.method protected onDragTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    :goto_0
    const/4 v1, 0x1

    return v1

    :pswitch_0
    iget v1, p0, Lcom/meizu/widget/DragSortListView;->mDragState:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->cancelDrag()V

    :cond_0
    invoke-direct {p0}, Lcom/meizu/widget/DragSortListView;->doActionUpOrCancel()V

    goto :goto_0

    :pswitch_1
    iget v1, p0, Lcom/meizu/widget/DragSortListView;->mDragState:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/meizu/widget/DragSortListView;->stopDrag(Z)Z

    :cond_1
    invoke-direct {p0}, Lcom/meizu/widget/DragSortListView;->doActionUpOrCancel()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lcom/meizu/widget/DragSortListView;->continueDrag(II)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/ListView;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/meizu/widget/DragSortListView;->mTrackDragSort:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/DragSortListView;->mDragSortTracker:Lcom/meizu/widget/DragSortListView$DragSortTracker;

    invoke-virtual {v0}, Lcom/meizu/widget/DragSortListView$DragSortTracker;->appendState()V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-boolean v2, p0, Lcom/meizu/widget/DragSortListView;->mDragEnabled:Z

    if-nez v2, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    :cond_0
    invoke-direct {p0, p1}, Lcom/meizu/widget/DragSortListView;->saveTouchCoords(Landroid/view/MotionEvent;)V

    iput-boolean v3, p0, Lcom/meizu/widget/DragSortListView;->mLastCallWasIntercept:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v0, v2, 0xff

    .local v0, "action":I
    if-nez v0, :cond_2

    iget v2, p0, Lcom/meizu/widget/DragSortListView;->mDragState:I

    if-eqz v2, :cond_1

    iput-boolean v3, p0, Lcom/meizu/widget/DragSortListView;->mIgnoreTouchEvent:Z

    return v3

    :cond_1
    iput-boolean v3, p0, Lcom/meizu/widget/DragSortListView;->mInTouchEvent:Z

    :cond_2
    const/4 v1, 0x0

    .local v1, "intercept":Z
    iget-object v2, p0, Lcom/meizu/widget/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    :goto_0
    if-eq v0, v3, :cond_3

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    :cond_3
    iput-boolean v4, p0, Lcom/meizu/widget/DragSortListView;->mInTouchEvent:Z

    :cond_4
    return v1

    :cond_5
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_6

    iput-boolean v3, p0, Lcom/meizu/widget/DragSortListView;->mListViewIntercepted:Z

    const/4 v1, 0x1

    :cond_6
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    if-eqz v1, :cond_7

    iput v3, p0, Lcom/meizu/widget/DragSortListView;->mCancelMethod:I

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/meizu/widget/DragSortListView;->doActionUpOrCancel()V

    goto :goto_0

    :cond_7
    const/4 v2, 0x2

    iput v2, p0, Lcom/meizu/widget/DragSortListView;->mCancelMethod:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    iget-object v0, p0, Lcom/meizu/widget/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/widget/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/meizu/widget/DragSortListView;->measureFloatView()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/DragSortListView;->mFloatViewOnMeasured:Z

    :cond_1
    iput p1, p0, Lcom/meizu/widget/DragSortListView;->mWidthMeasureSpec:I

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lcom/meizu/widget/DragSortListView;->updateScrollStarts()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    iget-boolean v3, p0, Lcom/meizu/widget/DragSortListView;->mIgnoreTouchEvent:Z

    if-eqz v3, :cond_0

    iput-boolean v4, p0, Lcom/meizu/widget/DragSortListView;->mIgnoreTouchEvent:Z

    return v4

    :cond_0
    iget-boolean v3, p0, Lcom/meizu/widget/DragSortListView;->mDragEnabled:Z

    if-nez v3, :cond_1

    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    :cond_1
    const/4 v2, 0x0

    .local v2, "more":Z
    iget-boolean v1, p0, Lcom/meizu/widget/DragSortListView;->mLastCallWasIntercept:Z

    .local v1, "lastCallWasIntercept":Z
    iput-boolean v4, p0, Lcom/meizu/widget/DragSortListView;->mLastCallWasIntercept:Z

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/meizu/widget/DragSortListView;->saveTouchCoords(Landroid/view/MotionEvent;)V

    :cond_2
    iget v3, p0, Lcom/meizu/widget/DragSortListView;->mDragState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    invoke-virtual {p0, p1}, Lcom/meizu/widget/DragSortListView;->onDragTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v2, 0x1

    :cond_3
    :goto_0
    return v2

    :cond_4
    iget v3, p0, Lcom/meizu/widget/DragSortListView;->mDragState:I

    if-nez v3, :cond_5

    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x1

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    if-eqz v2, :cond_3

    const/4 v3, 0x1

    iput v3, p0, Lcom/meizu/widget/DragSortListView;->mCancelMethod:I

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/meizu/widget/DragSortListView;->doActionUpOrCancel()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeCheckState(I)V
    .locals 11
    .param p1, "position"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .local v0, "cip":Landroid/util/SparseBooleanArray;
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    if-nez v7, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    new-array v6, v7, [I

    .local v6, "runStart":[I
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    new-array v5, v7, [I

    .local v5, "runEnd":[I
    move v3, p1

    .local v3, "rangeStart":I
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v7}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    add-int/lit8 v2, v7, 0x1

    .local v2, "rangeEnd":I
    invoke-static {v0, v3, v2, v6, v5}, Lcom/meizu/widget/DragSortListView;->buildRunList(Landroid/util/SparseBooleanArray;II[I[I)I

    move-result v4

    .local v4, "runCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eq v1, v4, :cond_3

    aget v7, v6, v1

    if-eq v7, p1, :cond_2

    aget v7, v5, v1

    aget v8, v6, v1

    if-ge v7, v8, :cond_1

    aget v7, v5, v1

    if-gt v7, p1, :cond_2

    :cond_1
    aget v7, v6, v1

    invoke-static {v7, v9, v3, v2}, Lcom/meizu/widget/DragSortListView;->rotate(IIII)I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Lcom/meizu/widget/DragSortListView;->setItemChecked(IZ)V

    :cond_2
    aget v7, v5, v1

    invoke-static {v7, v9, v3, v2}, Lcom/meizu/widget/DragSortListView;->rotate(IIII)I

    move-result v7

    invoke-virtual {p0, v7, v10}, Lcom/meizu/widget/DragSortListView;->setItemChecked(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public removeItem(I)V
    .locals 1
    .param p1, "which"    # I

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/DragSortListView;->mUseRemoveVelocity:Z

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/meizu/widget/DragSortListView;->removeItem(IF)V

    return-void
.end method

.method public removeItem(IF)V
    .locals 4
    .param p1, "which"    # I
    .param p2, "velocityX"    # F

    .prologue
    const/4 v3, 0x4

    iget v1, p0, Lcom/meizu/widget/DragSortListView;->mDragState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/meizu/widget/DragSortListView;->mDragState:I

    if-ne v1, v3, :cond_3

    :cond_0
    iget v1, p0, Lcom/meizu/widget/DragSortListView;->mDragState:I

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v1, p1

    iput v1, p0, Lcom/meizu/widget/DragSortListView;->mSrcPos:I

    iget v1, p0, Lcom/meizu/widget/DragSortListView;->mSrcPos:I

    iput v1, p0, Lcom/meizu/widget/DragSortListView;->mFirstExpPos:I

    iget v1, p0, Lcom/meizu/widget/DragSortListView;->mSrcPos:I

    iput v1, p0, Lcom/meizu/widget/DragSortListView;->mSecondExpPos:I

    iget v1, p0, Lcom/meizu/widget/DragSortListView;->mSrcPos:I

    iput v1, p0, Lcom/meizu/widget/DragSortListView;->mFloatPos:I

    iget v1, p0, Lcom/meizu/widget/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/meizu/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .end local v0    # "v":Landroid/view/View;
    :cond_1
    const/4 v1, 0x1

    iput v1, p0, Lcom/meizu/widget/DragSortListView;->mDragState:I

    iput p2, p0, Lcom/meizu/widget/DragSortListView;->mRemoveVelocityX:F

    iget-boolean v1, p0, Lcom/meizu/widget/DragSortListView;->mInTouchEvent:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/meizu/widget/DragSortListView;->mCancelMethod:I

    packed-switch v1, :pswitch_data_0

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/meizu/widget/DragSortListView;->mRemoveAnimator:Lcom/meizu/widget/DragSortListView$RemoveAnimator;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/meizu/widget/DragSortListView;->mRemoveAnimator:Lcom/meizu/widget/DragSortListView$RemoveAnimator;

    invoke-virtual {v1}, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->start()V

    :cond_3
    :goto_1
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/meizu/widget/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/meizu/widget/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/meizu/widget/DragSortListView;->doRemoveItem(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/meizu/widget/DragSortListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    new-instance v0, Lcom/meizu/widget/DragSortListView$AdapterWrapper;

    invoke-direct {v0, p0, p1}, Lcom/meizu/widget/DragSortListView$AdapterWrapper;-><init>(Lcom/meizu/widget/DragSortListView;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/meizu/widget/DragSortListView;->mAdapterWrapper:Lcom/meizu/widget/DragSortListView$AdapterWrapper;

    iget-object v0, p0, Lcom/meizu/widget/DragSortListView;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    instance-of v0, p1, Lcom/meizu/widget/DragSortListView$DropListener;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/meizu/widget/DragSortListView$DropListener;

    invoke-virtual {p0, v0}, Lcom/meizu/widget/DragSortListView;->setDropListener(Lcom/meizu/widget/DragSortListView$DropListener;)V

    :cond_0
    instance-of v0, p1, Lcom/meizu/widget/DragSortListView$DragListener;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/meizu/widget/DragSortListView$DragListener;

    invoke-virtual {p0, v0}, Lcom/meizu/widget/DragSortListView;->setDragListener(Lcom/meizu/widget/DragSortListView$DragListener;)V

    :cond_1
    instance-of v0, p1, Lcom/meizu/widget/DragSortListView$RemoveListener;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/meizu/widget/DragSortListView$RemoveListener;

    .end local p1    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {p0, p1}, Lcom/meizu/widget/DragSortListView;->setRemoveListener(Lcom/meizu/widget/DragSortListView$RemoveListener;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/meizu/widget/DragSortListView;->mAdapterWrapper:Lcom/meizu/widget/DragSortListView$AdapterWrapper;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    .restart local p1    # "adapter":Landroid/widget/ListAdapter;
    :cond_3
    iput-object v0, p0, Lcom/meizu/widget/DragSortListView;->mAdapterWrapper:Lcom/meizu/widget/DragSortListView$AdapterWrapper;

    goto :goto_0
.end method

.method public setDividerPadding(II)V
    .locals 0
    .param p1, "leftPadding"    # I
    .param p2, "rightPadding"    # I

    .prologue
    iput p1, p0, Lcom/meizu/widget/DragSortListView;->mDividerPaddingLeft:I

    iput p2, p0, Lcom/meizu/widget/DragSortListView;->mDividerPaddingRight:I

    return-void
.end method

.method public setDragEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/meizu/widget/DragSortListView;->mDragEnabled:Z

    return-void
.end method

.method public setDragListener(Lcom/meizu/widget/DragSortListView$DragListener;)V
    .locals 0
    .param p1, "l"    # Lcom/meizu/widget/DragSortListView$DragListener;

    .prologue
    iput-object p1, p0, Lcom/meizu/widget/DragSortListView;->mDragListener:Lcom/meizu/widget/DragSortListView$DragListener;

    return-void
.end method

.method public setDragScrollProfile(Lcom/meizu/widget/DragSortListView$DragScrollProfile;)V
    .locals 0
    .param p1, "ssp"    # Lcom/meizu/widget/DragSortListView$DragScrollProfile;

    .prologue
    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/meizu/widget/DragSortListView;->mScrollProfile:Lcom/meizu/widget/DragSortListView$DragScrollProfile;

    :cond_0
    return-void
.end method

.method public setDragScrollStart(F)V
    .locals 0
    .param p1, "heightFraction"    # F

    .prologue
    invoke-virtual {p0, p1, p1}, Lcom/meizu/widget/DragSortListView;->setDragScrollStarts(FF)V

    return-void
.end method

.method public setDragScrollStarts(FF)V
    .locals 2
    .param p1, "upperFrac"    # F
    .param p2, "lowerFrac"    # F

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, p2, v1

    if-lez v0, :cond_1

    iput v1, p0, Lcom/meizu/widget/DragSortListView;->mDragDownScrollStartFrac:F

    :goto_0
    cmpl-float v0, p1, v1

    if-lez v0, :cond_2

    iput v1, p0, Lcom/meizu/widget/DragSortListView;->mDragUpScrollStartFrac:F

    :goto_1
    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/meizu/widget/DragSortListView;->updateScrollStarts()V

    :cond_0
    return-void

    :cond_1
    iput p2, p0, Lcom/meizu/widget/DragSortListView;->mDragDownScrollStartFrac:F

    goto :goto_0

    :cond_2
    iput p1, p0, Lcom/meizu/widget/DragSortListView;->mDragUpScrollStartFrac:F

    goto :goto_1
.end method

.method public setDragSortListener(Lcom/meizu/widget/DragSortListView$DragSortListener;)V
    .locals 0
    .param p1, "l"    # Lcom/meizu/widget/DragSortListView$DragSortListener;

    .prologue
    invoke-virtual {p0, p1}, Lcom/meizu/widget/DragSortListView;->setDropListener(Lcom/meizu/widget/DragSortListView$DropListener;)V

    invoke-virtual {p0, p1}, Lcom/meizu/widget/DragSortListView;->setDragListener(Lcom/meizu/widget/DragSortListView$DragListener;)V

    invoke-virtual {p0, p1}, Lcom/meizu/widget/DragSortListView;->setRemoveListener(Lcom/meizu/widget/DragSortListView$RemoveListener;)V

    return-void
.end method

.method public setDropListener(Lcom/meizu/widget/DragSortListView$DropListener;)V
    .locals 0
    .param p1, "l"    # Lcom/meizu/widget/DragSortListView$DropListener;

    .prologue
    iput-object p1, p0, Lcom/meizu/widget/DragSortListView;->mDropListener:Lcom/meizu/widget/DragSortListView$DropListener;

    return-void
.end method

.method public setFloatAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    iput p1, p0, Lcom/meizu/widget/DragSortListView;->mCurrFloatAlpha:F

    return-void
.end method

.method public setFloatViewManager(Lcom/meizu/widget/DragSortListView$FloatViewManager;)V
    .locals 0
    .param p1, "manager"    # Lcom/meizu/widget/DragSortListView$FloatViewManager;

    .prologue
    iput-object p1, p0, Lcom/meizu/widget/DragSortListView;->mFloatViewManager:Lcom/meizu/widget/DragSortListView$FloatViewManager;

    return-void
.end method

.method public setMaxScrollSpeed(F)V
    .locals 0
    .param p1, "max"    # F

    .prologue
    iput p1, p0, Lcom/meizu/widget/DragSortListView;->mMaxScrollSpeed:F

    return-void
.end method

.method public setRemoveListener(Lcom/meizu/widget/DragSortListView$RemoveListener;)V
    .locals 0
    .param p1, "l"    # Lcom/meizu/widget/DragSortListView$RemoveListener;

    .prologue
    iput-object p1, p0, Lcom/meizu/widget/DragSortListView;->mRemoveListener:Lcom/meizu/widget/DragSortListView$RemoveListener;

    return-void
.end method

.method public startDrag(IIII)Z
    .locals 6
    .param p1, "position"    # I
    .param p2, "dragFlags"    # I
    .param p3, "deltaX"    # I
    .param p4, "deltaY"    # I

    .prologue
    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/meizu/widget/DragSortListView;->mInTouchEvent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/DragSortListView;->mFloatViewManager:Lcom/meizu/widget/DragSortListView$FloatViewManager;

    if-nez v0, :cond_1

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/meizu/widget/DragSortListView;->mFloatViewManager:Lcom/meizu/widget/DragSortListView$FloatViewManager;

    invoke-interface {v0, p1}, Lcom/meizu/widget/DragSortListView$FloatViewManager;->onCreateFloatView(I)Landroid/view/View;

    move-result-object v2

    .local v2, "v":Landroid/view/View;
    if-nez v2, :cond_2

    return v1

    :cond_2
    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/DragSortListView;->startDrag(ILandroid/view/View;III)Z

    move-result v0

    return v0
.end method

.method public startDrag(ILandroid/view/View;III)Z
    .locals 7
    .param p1, "position"    # I
    .param p2, "floatView"    # Landroid/view/View;
    .param p3, "dragFlags"    # I
    .param p4, "deltaX"    # I
    .param p5, "deltaY"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v3, 0x0

    iget v2, p0, Lcom/meizu/widget/DragSortListView;->mDragState:I

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/meizu/widget/DragSortListView;->mInTouchEvent:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/meizu/widget/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v2, :cond_1

    :cond_0
    return v3

    :cond_1
    if-eqz p2, :cond_0

    iget-boolean v2, p0, Lcom/meizu/widget/DragSortListView;->mDragEnabled:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    add-int v0, p1, v2

    .local v0, "pos":I
    iput v0, p0, Lcom/meizu/widget/DragSortListView;->mFirstExpPos:I

    iput v0, p0, Lcom/meizu/widget/DragSortListView;->mSecondExpPos:I

    iput v0, p0, Lcom/meizu/widget/DragSortListView;->mSrcPos:I

    iput v0, p0, Lcom/meizu/widget/DragSortListView;->mFloatPos:I

    iput v6, p0, Lcom/meizu/widget/DragSortListView;->mDragState:I

    iput v3, p0, Lcom/meizu/widget/DragSortListView;->mDragFlags:I

    iget v2, p0, Lcom/meizu/widget/DragSortListView;->mDragFlags:I

    or-int/2addr v2, p3

    iput v2, p0, Lcom/meizu/widget/DragSortListView;->mDragFlags:I

    iput-object p2, p0, Lcom/meizu/widget/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-direct {p0}, Lcom/meizu/widget/DragSortListView;->measureFloatView()V

    iput p4, p0, Lcom/meizu/widget/DragSortListView;->mDragDeltaX:I

    iput p5, p0, Lcom/meizu/widget/DragSortListView;->mDragDeltaY:I

    iget v2, p0, Lcom/meizu/widget/DragSortListView;->mY:I

    iput v2, p0, Lcom/meizu/widget/DragSortListView;->mDragStartY:I

    iget-object v2, p0, Lcom/meizu/widget/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v3, p0, Lcom/meizu/widget/DragSortListView;->mX:I

    iget v4, p0, Lcom/meizu/widget/DragSortListView;->mDragDeltaX:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/meizu/widget/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v3, p0, Lcom/meizu/widget/DragSortListView;->mY:I

    iget v4, p0, Lcom/meizu/widget/DragSortListView;->mDragDeltaY:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/meizu/widget/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/meizu/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .local v1, "srcItem":Landroid/view/View;
    if-eqz v1, :cond_3

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-boolean v2, p0, Lcom/meizu/widget/DragSortListView;->mTrackDragSort:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/meizu/widget/DragSortListView;->mDragSortTracker:Lcom/meizu/widget/DragSortListView$DragSortTracker;

    invoke-virtual {v2}, Lcom/meizu/widget/DragSortListView$DragSortTracker;->startTracking()V

    :cond_4
    iget v2, p0, Lcom/meizu/widget/DragSortListView;->mCancelMethod:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->requestLayout()V

    iget-object v2, p0, Lcom/meizu/widget/DragSortListView;->mLiftAnimator:Lcom/meizu/widget/DragSortListView$LiftAnimator;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/meizu/widget/DragSortListView;->mLiftAnimator:Lcom/meizu/widget/DragSortListView$LiftAnimator;

    invoke-virtual {v2}, Lcom/meizu/widget/DragSortListView$LiftAnimator;->start()V

    :cond_5
    return v5

    :pswitch_0
    iget-object v2, p0, Lcom/meizu/widget/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v2}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/meizu/widget/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v2}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public stopDrag(Z)Z
    .locals 1
    .param p1, "remove"    # Z

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/DragSortListView;->mUseRemoveVelocity:Z

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/meizu/widget/DragSortListView;->stopDrag(ZF)Z

    move-result v0

    return v0
.end method

.method public stopDrag(ZF)Z
    .locals 3
    .param p1, "remove"    # Z
    .param p2, "velocityX"    # F

    .prologue
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/meizu/widget/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/meizu/widget/DragSortListView;->mDragScroller:Lcom/meizu/widget/DragSortListView$DragScroller;

    invoke-virtual {v0, v2}, Lcom/meizu/widget/DragSortListView$DragScroller;->stopScrolling(Z)V

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/meizu/widget/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lcom/meizu/widget/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, p2}, Lcom/meizu/widget/DragSortListView;->removeItem(IF)V

    :goto_0
    iget-boolean v0, p0, Lcom/meizu/widget/DragSortListView;->mTrackDragSort:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/DragSortListView;->mDragSortTracker:Lcom/meizu/widget/DragSortListView$DragSortTracker;

    invoke-virtual {v0}, Lcom/meizu/widget/DragSortListView$DragSortTracker;->stopTracking()V

    :cond_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/meizu/widget/DragSortListView;->mDropAnimator:Lcom/meizu/widget/DragSortListView$DropAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/meizu/widget/DragSortListView;->mDropAnimator:Lcom/meizu/widget/DragSortListView$DropAnimator;

    invoke-virtual {v0}, Lcom/meizu/widget/DragSortListView$DropAnimator;->start()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/meizu/widget/DragSortListView;->dropFloatView()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public stopDragWithVelocity(ZF)Z
    .locals 1
    .param p1, "remove"    # Z
    .param p2, "velocityX"    # F

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/DragSortListView;->mUseRemoveVelocity:Z

    invoke-virtual {p0, p1, p2}, Lcom/meizu/widget/DragSortListView;->stopDrag(ZF)Z

    move-result v0

    return v0
.end method
