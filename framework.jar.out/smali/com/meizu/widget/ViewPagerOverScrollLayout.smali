.class public Lcom/meizu/widget/ViewPagerOverScrollLayout;
.super Landroid/widget/FrameLayout;
.source "ViewPagerOverScrollLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/ViewPagerOverScrollLayout$ViewPagerSelectChangeListener;,
        Lcom/meizu/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;
    }
.end annotation


# static fields
.field private static final MAXOVERSCROLLRATE:F = 0.3f


# instance fields
.field private mCurrentPage:I

.field mHorizonalFlingRunnable:Lcom/meizu/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;

.field mMotionX:I

.field private mOverScrollInterpolator:Landroid/animation/TimeInterpolator;

.field mOverscrollDistance:I

.field private mPositionOffset:F

.field mViewPager:Lcom/android/internal/widget/ViewPager;

.field private mViewPagerSelectChangeListener:Lcom/meizu/widget/ViewPagerOverScrollLayout$ViewPagerSelectChangeListener;


# direct methods
.method static synthetic -get0(Lcom/meizu/widget/ViewPagerOverScrollLayout;)Lcom/meizu/widget/ViewPagerOverScrollLayout$ViewPagerSelectChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/meizu/widget/ViewPagerOverScrollLayout;->mViewPagerSelectChangeListener:Lcom/meizu/widget/ViewPagerOverScrollLayout$ViewPagerSelectChangeListener;

    return-object v0
.end method

.method static synthetic -set0(Lcom/meizu/widget/ViewPagerOverScrollLayout;I)I
    .locals 0

    iput p1, p0, Lcom/meizu/widget/ViewPagerOverScrollLayout;->mCurrentPage:I

    return p1
.end method

.method static synthetic -set1(Lcom/meizu/widget/ViewPagerOverScrollLayout;F)F
    .locals 0

    iput p1, p0, Lcom/meizu/widget/ViewPagerOverScrollLayout;->mPositionOffset:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/meizu/widget/ViewPagerOverScrollLayout;IIIIIIIIZ)Z
    .locals 1
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "scrollRangeX"    # I
    .param p6, "scrollRangeY"    # I
    .param p7, "maxOverScrollX"    # I
    .param p8, "maxOverScrollY"    # I
    .param p9, "isTouchEvent"    # Z

    .prologue
    invoke-virtual/range {p0 .. p9}, Lcom/meizu/widget/ViewPagerOverScrollLayout;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/ViewPagerOverScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/widget/ViewPagerOverScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v4, p0, Lcom/meizu/widget/ViewPagerOverScrollLayout;->mPositionOffset:F

    iput v5, p0, Lcom/meizu/widget/ViewPagerOverScrollLayout;->mCurrentPage:I

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3df5c28f    # 0.12f

    const v2, 0x3ea8f5c3    # 0.33f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/widget/ViewPagerOverScrollLayout;->mOverScrollInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p0, v5}, Lcom/meizu/widget/ViewPagerOverScrollLayout;->setOverScrollMode(I)V

    return-void
.end method

.method private updateIncrementalDelta(II)I
    .locals 8
    .param p1, "delta"    # I
    .param p2, "currentScoll"    # I

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/meizu/widget/ViewPagerOverScrollLayout;->mOverscrollDistance:I

    .local v3, "overscrollDistance":I
    move v2, p1

    .local v2, "incrementalDelta":I
    if-eqz p2, :cond_2

    if-eqz v3, :cond_2

    mul-int v5, p2, v2

    if-gez v5, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    .local v0, "coeff":F
    const/high16 v1, 0x3f800000    # 1.0f

    .local v1, "finalCoeff":F
    move v4, v2

    .local v4, "temp":I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v7

    int-to-float v6, v3

    div-float v0, v5, v6

    iget-object v5, p0, Lcom/meizu/widget/ViewPagerOverScrollLayout;->mOverScrollInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v5, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v1

    sub-float v1, v7, v1

    const/4 v5, 0x0

    cmpg-float v5, v1, v5

    if-gez v5, :cond_0

    const/4 v1, 0x0

    :cond_0
    int-to-float v5, v2

    mul-float/2addr v5, v1

    float-to-int v2, v5

    if-lez v4, :cond_3

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :cond_1
    :goto_0
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-lt v5, v3, :cond_2

    const/4 v2, 0x0

    .end local v0    # "coeff":F
    .end local v1    # "finalCoeff":F
    .end local v4    # "temp":I
    :cond_2
    :goto_1
    return v2

    .restart local v0    # "coeff":F
    .restart local v1    # "finalCoeff":F
    .restart local v4    # "temp":I
    :cond_3
    if-nez v2, :cond_1

    const/4 v2, -0x1

    goto :goto_0

    .end local v0    # "coeff":F
    .end local v1    # "finalCoeff":F
    .end local v4    # "temp":I
    :cond_4
    div-int/lit8 v2, v2, 0x2

    goto :goto_1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 23
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    .local v12, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    move/from16 v22, v0

    .local v22, "x":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/widget/ViewPagerOverScrollLayout;->mViewPager:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v2}, Lcom/android/internal/widget/ViewPager;->getAdapter()Lcom/android/internal/widget/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v18

    .local v18, "itemcount":I
    packed-switch v12, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    :pswitch_0
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/ViewPagerOverScrollLayout;->mMotionX:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/widget/ViewPagerOverScrollLayout;->mHorizonalFlingRunnable:Lcom/meizu/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/widget/ViewPagerOverScrollLayout;->mHorizonalFlingRunnable:Lcom/meizu/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;

    invoke-virtual {v2}, Lcom/meizu/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;->endFling()V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/ViewPagerOverScrollLayout;->getScrollX()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/ViewPagerOverScrollLayout;->getScrollX()I

    move-result v2

    if-nez v2, :cond_7

    const/4 v13, 0x0

    .local v13, "beginOverScroll":Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/widget/ViewPagerOverScrollLayout;->mCurrentPage:I

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/widget/ViewPagerOverScrollLayout;->mPositionOffset:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-nez v2, :cond_5

    const/16 v16, 0x1

    .local v16, "isReachLeftBoundary":Z
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/widget/ViewPagerOverScrollLayout;->mCurrentPage:I

    add-int/lit8 v4, v18, -0x1

    if-ne v2, v4, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/widget/ViewPagerOverScrollLayout;->mPositionOffset:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-nez v2, :cond_6

    const/16 v17, 0x1

    .local v17, "isReachRightBoundary":Z
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/widget/ViewPagerOverScrollLayout;->mMotionX:I

    move/from16 v0, v22

    if-le v0, v2, :cond_2

    if-nez v16, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/widget/ViewPagerOverScrollLayout;->mMotionX:I

    move/from16 v0, v22

    if-ge v0, v2, :cond_4

    if-eqz v17, :cond_4

    :cond_3
    const/4 v13, 0x1

    :cond_4
    if-eqz v13, :cond_e

    const/4 v2, 0x1

    move/from16 v0, v18

    if-le v0, v2, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/widget/ViewPagerOverScrollLayout;->mMotionX:I

    sub-int v15, v22, v2

    .local v15, "incrementalDeltaX":I
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/ViewPagerOverScrollLayout;->getScrollX()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lcom/meizu/widget/ViewPagerOverScrollLayout;->updateIncrementalDelta(II)I

    move-result v15

    neg-int v3, v15

    .local v3, "overScrollDistance":I
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/ViewPagerOverScrollLayout;->getScrollX()I

    move-result v5

    move-object/from16 v0, p0

    iget v9, v0, Lcom/meizu/widget/ViewPagerOverScrollLayout;->mOverscrollDistance:I

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, Lcom/meizu/widget/ViewPagerOverScrollLayout;->overScrollBy(IIIIIIIIZ)Z

    move-object/from16 v19, p1

    .local v19, "last":Landroid/view/MotionEvent;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v11

    const/4 v8, 0x3

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v14

    .local v14, "e":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    invoke-super {v0, v14}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v14}, Landroid/view/MotionEvent;->recycle()V

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/ViewPagerOverScrollLayout;->mMotionX:I

    const/4 v2, 0x1

    return v2

    .end local v3    # "overScrollDistance":I
    .end local v14    # "e":Landroid/view/MotionEvent;
    .end local v15    # "incrementalDeltaX":I
    .end local v16    # "isReachLeftBoundary":Z
    .end local v17    # "isReachRightBoundary":Z
    .end local v19    # "last":Landroid/view/MotionEvent;
    :cond_5
    const/16 v16, 0x0

    .restart local v16    # "isReachLeftBoundary":Z
    goto :goto_1

    :cond_6
    const/16 v17, 0x0

    .restart local v17    # "isReachRightBoundary":Z
    goto :goto_2

    .end local v13    # "beginOverScroll":Z
    .end local v16    # "isReachLeftBoundary":Z
    .end local v17    # "isReachRightBoundary":Z
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/widget/ViewPagerOverScrollLayout;->mMotionX:I

    move/from16 v0, v22

    if-eq v0, v2, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/widget/ViewPagerOverScrollLayout;->mMotionX:I

    sub-int v15, v22, v2

    .restart local v15    # "incrementalDeltaX":I
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/ViewPagerOverScrollLayout;->getScrollX()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lcom/meizu/widget/ViewPagerOverScrollLayout;->updateIncrementalDelta(II)I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/ViewPagerOverScrollLayout;->getScrollX()I

    move-result v21

    .local v21, "oldScroll":I
    sub-int v20, v21, v15

    .local v20, "newScroll":I
    neg-int v3, v15

    .restart local v3    # "overScrollDistance":I
    if-gtz v20, :cond_c

    if-lez v21, :cond_c

    :cond_8
    move/from16 v0, v21

    neg-int v3, v0

    :goto_3
    if-eqz v3, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/ViewPagerOverScrollLayout;->getScrollX()I

    move-result v5

    move-object/from16 v0, p0

    iget v9, v0, Lcom/meizu/widget/ViewPagerOverScrollLayout;->mOverscrollDistance:I

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, Lcom/meizu/widget/ViewPagerOverScrollLayout;->overScrollBy(IIIIIIIIZ)Z

    :cond_9
    if-eqz v15, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/ViewPagerOverScrollLayout;->getScrollX()I

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/widget/ViewPagerOverScrollLayout;->setScrollX(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/ViewPagerOverScrollLayout;->invalidateParentIfNeeded()V

    :cond_a
    move-object/from16 v19, p1

    .restart local v19    # "last":Landroid/view/MotionEvent;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v11

    const/4 v8, 0x0

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v14

    .restart local v14    # "e":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    invoke-super {v0, v14}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v14}, Landroid/view/MotionEvent;->recycle()V

    .end local v14    # "e":Landroid/view/MotionEvent;
    .end local v19    # "last":Landroid/view/MotionEvent;
    :cond_b
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/ViewPagerOverScrollLayout;->mMotionX:I

    const/4 v2, 0x1

    return v2

    :cond_c
    if-ltz v20, :cond_d

    if-ltz v21, :cond_8

    :cond_d
    const/4 v15, 0x0

    goto :goto_3

    .end local v3    # "overScrollDistance":I
    .end local v15    # "incrementalDeltaX":I
    .end local v20    # "newScroll":I
    .end local v21    # "oldScroll":I
    :cond_e
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/widget/ViewPagerOverScrollLayout;->mMotionX:I

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/ViewPagerOverScrollLayout;->getScrollX()I

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/widget/ViewPagerOverScrollLayout;->mHorizonalFlingRunnable:Lcom/meizu/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;

    if-nez v2, :cond_f

    new-instance v2, Lcom/meizu/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/meizu/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;-><init>(Lcom/meizu/widget/ViewPagerOverScrollLayout;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/widget/ViewPagerOverScrollLayout;->mHorizonalFlingRunnable:Lcom/meizu/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/widget/ViewPagerOverScrollLayout;->mHorizonalFlingRunnable:Lcom/meizu/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;

    invoke-virtual {v2}, Lcom/meizu/widget/ViewPagerOverScrollLayout$HorizonalFlingRunnable;->startSpringback()V

    const/4 v2, 0x1

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected invalidateParentIfNeeded()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/meizu/widget/ViewPagerOverScrollLayout;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/widget/ViewPagerOverScrollLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/widget/ViewPagerOverScrollLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/meizu/widget/ViewPagerOverScrollLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ViewPagerOverScrollLayout only can host 1 elements"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/meizu/widget/ViewPagerOverScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    instance-of v1, v0, Lcom/android/internal/widget/ViewPager;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ViewPagerOverScrollLayout only contain ViewPager"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    check-cast v0, Lcom/android/internal/widget/ViewPager;

    .end local v0    # "child":Landroid/view/View;
    iput-object v0, p0, Lcom/meizu/widget/ViewPagerOverScrollLayout;->mViewPager:Lcom/android/internal/widget/ViewPager;

    iget-object v1, p0, Lcom/meizu/widget/ViewPagerOverScrollLayout;->mViewPager:Lcom/android/internal/widget/ViewPager;

    new-instance v2, Lcom/meizu/widget/ViewPagerOverScrollLayout$1;

    invoke-direct {v2, p0}, Lcom/meizu/widget/ViewPagerOverScrollLayout$1;-><init>(Lcom/meizu/widget/ViewPagerOverScrollLayout;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ViewPager;->setOnPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 2
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    invoke-virtual {p0}, Lcom/meizu/widget/ViewPagerOverScrollLayout;->getScrollX()I

    move-result v0

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/meizu/widget/ViewPagerOverScrollLayout;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/widget/ViewPagerOverScrollLayout;->getScrollY()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/meizu/widget/ViewPagerOverScrollLayout;->onScrollChanged(IIII)V

    invoke-virtual {p0, p1}, Lcom/meizu/widget/ViewPagerOverScrollLayout;->setScrollX(I)V

    invoke-virtual {p0}, Lcom/meizu/widget/ViewPagerOverScrollLayout;->invalidateParentIfNeeded()V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    int-to-float v0, p1

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/widget/ViewPagerOverScrollLayout;->mOverscrollDistance:I

    return-void
.end method

.method public setViewPagerSelectChangeListener(Lcom/meizu/widget/ViewPagerOverScrollLayout$ViewPagerSelectChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/meizu/widget/ViewPagerOverScrollLayout$ViewPagerSelectChangeListener;

    .prologue
    iput-object p1, p0, Lcom/meizu/widget/ViewPagerOverScrollLayout;->mViewPagerSelectChangeListener:Lcom/meizu/widget/ViewPagerOverScrollLayout$ViewPagerSelectChangeListener;

    return-void
.end method
