.class public Lcom/meizu/widget/DragSortController;
.super Lcom/meizu/widget/SimpleFloatViewManager;
.source "DragSortController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/DragSortController$1;
    }
.end annotation


# static fields
.field public static final CLICK_REMOVE:I = 0x0

.field public static final FLING_REMOVE:I = 0x1

.field public static final MISS:I = -0x1

.field public static final ON_DOWN:I = 0x0

.field public static final ON_DRAG:I = 0x1

.field public static final ON_LONG_PRESS:I = 0x2


# instance fields
.field private mCanDrag:Z

.field private mClickRemoveHitPos:I

.field private mClickRemoveId:I

.field private mCurrX:I

.field private mCurrY:I

.field private mDetector:Landroid/view/GestureDetector;

.field private mDragHandleId:I

.field private mDragInitMode:I

.field private mDragging:Z

.field private mDslv:Lcom/meizu/widget/DragSortListView;

.field private mFlingHandleId:I

.field private mFlingHitPos:I

.field private mFlingRemoveDetector:Landroid/view/GestureDetector;

.field private mFlingRemoveListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mFlingSpeed:F

.field private mHitPos:I

.field private mIsRemoving:Z

.field private mItemX:I

.field private mItemY:I

.field private mPositionX:I

.field private mRemoveEnabled:Z

.field private mRemoveMode:I

.field private mSortEnabled:Z

.field private mTempLoc:[I

.field private mTouchSlop:I


# direct methods
.method static synthetic -get0(Lcom/meizu/widget/DragSortController;)Lcom/meizu/widget/DragSortListView;
    .locals 1

    iget-object v0, p0, Lcom/meizu/widget/DragSortController;->mDslv:Lcom/meizu/widget/DragSortListView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/meizu/widget/DragSortController;)F
    .locals 1

    iget v0, p0, Lcom/meizu/widget/DragSortController;->mFlingSpeed:F

    return v0
.end method

.method static synthetic -get2(Lcom/meizu/widget/DragSortController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/meizu/widget/DragSortController;->mIsRemoving:Z

    return v0
.end method

.method static synthetic -get3(Lcom/meizu/widget/DragSortController;)I
    .locals 1

    iget v0, p0, Lcom/meizu/widget/DragSortController;->mPositionX:I

    return v0
.end method

.method static synthetic -get4(Lcom/meizu/widget/DragSortController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/meizu/widget/DragSortController;->mRemoveEnabled:Z

    return v0
.end method

.method static synthetic -set0(Lcom/meizu/widget/DragSortController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/meizu/widget/DragSortController;->mIsRemoving:Z

    return p1
.end method

.method public constructor <init>(Lcom/meizu/widget/DragSortListView;)V
    .locals 2
    .param p1, "dslv"    # Lcom/meizu/widget/DragSortListView;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/meizu/widget/DragSortController;-><init>(Lcom/meizu/widget/DragSortListView;III)V

    return-void
.end method

.method public constructor <init>(Lcom/meizu/widget/DragSortListView;III)V
    .locals 6
    .param p1, "dslv"    # Lcom/meizu/widget/DragSortListView;
    .param p2, "dragHandleId"    # I
    .param p3, "dragInitMode"    # I
    .param p4, "removeMode"    # I

    .prologue
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/meizu/widget/DragSortController;-><init>(Lcom/meizu/widget/DragSortListView;IIII)V

    return-void
.end method

.method public constructor <init>(Lcom/meizu/widget/DragSortListView;IIII)V
    .locals 7
    .param p1, "dslv"    # Lcom/meizu/widget/DragSortListView;
    .param p2, "dragHandleId"    # I
    .param p3, "dragInitMode"    # I
    .param p4, "removeMode"    # I
    .param p5, "clickRemoveId"    # I

    .prologue
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/meizu/widget/DragSortController;-><init>(Lcom/meizu/widget/DragSortListView;IIIII)V

    return-void
.end method

.method public constructor <init>(Lcom/meizu/widget/DragSortListView;IIIII)V
    .locals 4
    .param p1, "dslv"    # Lcom/meizu/widget/DragSortListView;
    .param p2, "dragHandleId"    # I
    .param p3, "dragInitMode"    # I
    .param p4, "removeMode"    # I
    .param p5, "clickRemoveId"    # I
    .param p6, "flingHandleId"    # I

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/meizu/widget/SimpleFloatViewManager;-><init>(Landroid/widget/ListView;)V

    iput v3, p0, Lcom/meizu/widget/DragSortController;->mDragInitMode:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/DragSortController;->mSortEnabled:Z

    iput-boolean v3, p0, Lcom/meizu/widget/DragSortController;->mRemoveEnabled:Z

    iput-boolean v3, p0, Lcom/meizu/widget/DragSortController;->mIsRemoving:Z

    iput v1, p0, Lcom/meizu/widget/DragSortController;->mHitPos:I

    iput v1, p0, Lcom/meizu/widget/DragSortController;->mFlingHitPos:I

    iput v1, p0, Lcom/meizu/widget/DragSortController;->mClickRemoveHitPos:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/meizu/widget/DragSortController;->mTempLoc:[I

    iput-boolean v3, p0, Lcom/meizu/widget/DragSortController;->mDragging:Z

    const/high16 v0, 0x43fa0000    # 500.0f

    iput v0, p0, Lcom/meizu/widget/DragSortController;->mFlingSpeed:F

    new-instance v0, Lcom/meizu/widget/DragSortController$1;

    invoke-direct {v0, p0}, Lcom/meizu/widget/DragSortController$1;-><init>(Lcom/meizu/widget/DragSortController;)V

    iput-object v0, p0, Lcom/meizu/widget/DragSortController;->mFlingRemoveListener:Landroid/view/GestureDetector$OnGestureListener;

    iput-object p1, p0, Lcom/meizu/widget/DragSortController;->mDslv:Lcom/meizu/widget/DragSortListView;

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lcom/meizu/widget/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/meizu/widget/DragSortController;->mDetector:Landroid/view/GestureDetector;

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lcom/meizu/widget/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/widget/DragSortController;->mFlingRemoveListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/meizu/widget/DragSortController;->mFlingRemoveDetector:Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/meizu/widget/DragSortController;->mFlingRemoveDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v3}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    invoke-virtual {p1}, Lcom/meizu/widget/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/DragSortController;->mTouchSlop:I

    iput p2, p0, Lcom/meizu/widget/DragSortController;->mDragHandleId:I

    iput p5, p0, Lcom/meizu/widget/DragSortController;->mClickRemoveId:I

    iput p6, p0, Lcom/meizu/widget/DragSortController;->mFlingHandleId:I

    invoke-virtual {p0, p4}, Lcom/meizu/widget/DragSortController;->setRemoveMode(I)V

    invoke-virtual {p0, p3}, Lcom/meizu/widget/DragSortController;->setDragInitMode(I)V

    return-void
.end method


# virtual methods
.method public dragHandleHitPosition(Landroid/view/MotionEvent;)I
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    iget v0, p0, Lcom/meizu/widget/DragSortController;->mDragHandleId:I

    invoke-virtual {p0, p1, v0}, Lcom/meizu/widget/DragSortController;->viewIdHitPosition(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public flingHandleHitPosition(Landroid/view/MotionEvent;)I
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    iget v0, p0, Lcom/meizu/widget/DragSortController;->mFlingHandleId:I

    invoke-virtual {p0, p1, v0}, Lcom/meizu/widget/DragSortController;->viewIdHitPosition(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public getDragInitMode()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/meizu/widget/DragSortController;->mDragInitMode:I

    return v0
.end method

.method public getRemoveMode()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/meizu/widget/DragSortController;->mRemoveMode:I

    return v0
.end method

.method public isRemoveEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/meizu/widget/DragSortController;->mRemoveEnabled:Z

    return v0
.end method

.method public isSortEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/meizu/widget/DragSortController;->mSortEnabled:Z

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/meizu/widget/DragSortController;->mRemoveEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/meizu/widget/DragSortController;->mRemoveMode:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/meizu/widget/DragSortController;->mClickRemoveId:I

    invoke-virtual {p0, p1, v0}, Lcom/meizu/widget/DragSortController;->viewIdHitPosition(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/DragSortController;->mClickRemoveHitPos:I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/meizu/widget/DragSortController;->startDragPosition(Landroid/view/MotionEvent;)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/DragSortController;->mHitPos:I

    iget v0, p0, Lcom/meizu/widget/DragSortController;->mHitPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/meizu/widget/DragSortController;->mDragInitMode:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/meizu/widget/DragSortController;->mHitPos:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/meizu/widget/DragSortController;->mItemX:I

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/meizu/widget/DragSortController;->mItemY:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/meizu/widget/DragSortController;->startDrag(III)Z

    :cond_1
    iput-boolean v4, p0, Lcom/meizu/widget/DragSortController;->mIsRemoving:Z

    iput-boolean v5, p0, Lcom/meizu/widget/DragSortController;->mCanDrag:Z

    iput v4, p0, Lcom/meizu/widget/DragSortController;->mPositionX:I

    invoke-virtual {p0, p1}, Lcom/meizu/widget/DragSortController;->startFlingPosition(Landroid/view/MotionEvent;)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/DragSortController;->mFlingHitPos:I

    return v5
.end method

.method public onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 1
    .param p1, "floatView"    # Landroid/view/View;
    .param p2, "position"    # Landroid/graphics/Point;
    .param p3, "touch"    # Landroid/graphics/Point;

    .prologue
    iget-boolean v0, p0, Lcom/meizu/widget/DragSortController;->mRemoveEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/widget/DragSortController;->mIsRemoving:Z

    if-eqz v0, :cond_0

    iget v0, p2, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/meizu/widget/DragSortController;->mPositionX:I

    :cond_0
    return-void
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    iget v0, p0, Lcom/meizu/widget/DragSortController;->mHitPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/meizu/widget/DragSortController;->mDragInitMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/DragSortController;->mDslv:Lcom/meizu/widget/DragSortListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/widget/DragSortListView;->performHapticFeedback(I)Z

    iget v0, p0, Lcom/meizu/widget/DragSortController;->mHitPos:I

    iget v1, p0, Lcom/meizu/widget/DragSortController;->mCurrX:I

    iget v2, p0, Lcom/meizu/widget/DragSortController;->mItemX:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/meizu/widget/DragSortController;->mCurrY:I

    iget v3, p0, Lcom/meizu/widget/DragSortController;->mItemY:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/meizu/widget/DragSortController;->startDrag(III)Z

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v2, v6

    .local v2, "x1":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v4, v6

    .local v4, "y1":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v3, v6

    .local v3, "x2":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .local v5, "y2":I
    iget v6, p0, Lcom/meizu/widget/DragSortController;->mItemX:I

    sub-int v0, v3, v6

    .local v0, "deltaX":I
    iget v6, p0, Lcom/meizu/widget/DragSortController;->mItemY:I

    sub-int v1, v5, v6

    .local v1, "deltaY":I
    iget-boolean v6, p0, Lcom/meizu/widget/DragSortController;->mCanDrag:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/meizu/widget/DragSortController;->mDragging:Z

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    iget v6, p0, Lcom/meizu/widget/DragSortController;->mHitPos:I

    if-ne v6, v7, :cond_2

    iget v6, p0, Lcom/meizu/widget/DragSortController;->mFlingHitPos:I

    if-eq v6, v7, :cond_0

    :cond_2
    iget v6, p0, Lcom/meizu/widget/DragSortController;->mHitPos:I

    if-eq v6, v7, :cond_4

    iget v6, p0, Lcom/meizu/widget/DragSortController;->mDragInitMode:I

    if-ne v6, v9, :cond_3

    sub-int v6, v5, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/meizu/widget/DragSortController;->mTouchSlop:I

    if-le v6, v7, :cond_3

    iget-boolean v6, p0, Lcom/meizu/widget/DragSortController;->mSortEnabled:Z

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/meizu/widget/DragSortController;->mHitPos:I

    invoke-virtual {p0, v6, v0, v1}, Lcom/meizu/widget/DragSortController;->startDrag(III)Z

    goto :goto_0

    :cond_3
    iget v6, p0, Lcom/meizu/widget/DragSortController;->mDragInitMode:I

    if-eqz v6, :cond_0

    sub-int v6, v3, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/meizu/widget/DragSortController;->mTouchSlop:I

    if-le v6, v7, :cond_0

    iget-boolean v6, p0, Lcom/meizu/widget/DragSortController;->mRemoveEnabled:Z

    if-eqz v6, :cond_0

    iput-boolean v9, p0, Lcom/meizu/widget/DragSortController;->mIsRemoving:Z

    iget v6, p0, Lcom/meizu/widget/DragSortController;->mFlingHitPos:I

    invoke-virtual {p0, v6, v0, v1}, Lcom/meizu/widget/DragSortController;->startDrag(III)Z

    goto :goto_0

    :cond_4
    iget v6, p0, Lcom/meizu/widget/DragSortController;->mFlingHitPos:I

    if-eq v6, v7, :cond_0

    sub-int v6, v3, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/meizu/widget/DragSortController;->mTouchSlop:I

    if-le v6, v7, :cond_5

    iget-boolean v6, p0, Lcom/meizu/widget/DragSortController;->mRemoveEnabled:Z

    if-eqz v6, :cond_5

    iput-boolean v9, p0, Lcom/meizu/widget/DragSortController;->mIsRemoving:Z

    iget v6, p0, Lcom/meizu/widget/DragSortController;->mFlingHitPos:I

    invoke-virtual {p0, v6, v0, v1}, Lcom/meizu/widget/DragSortController;->startDrag(III)Z

    goto :goto_0

    :cond_5
    sub-int v6, v5, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/meizu/widget/DragSortController;->mTouchSlop:I

    if-le v6, v7, :cond_0

    iput-boolean v8, p0, Lcom/meizu/widget/DragSortController;->mCanDrag:Z

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    iget-boolean v0, p0, Lcom/meizu/widget/DragSortController;->mRemoveEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/meizu/widget/DragSortController;->mRemoveMode:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/meizu/widget/DragSortController;->mClickRemoveHitPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/DragSortController;->mDslv:Lcom/meizu/widget/DragSortListView;

    iget v1, p0, Lcom/meizu/widget/DragSortController;->mClickRemoveHitPos:I

    iget-object v2, p0, Lcom/meizu/widget/DragSortController;->mDslv:Lcom/meizu/widget/DragSortListView;

    invoke-virtual {v2}, Lcom/meizu/widget/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/meizu/widget/DragSortListView;->removeItem(I)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/meizu/widget/DragSortController;->mDslv:Lcom/meizu/widget/DragSortListView;

    invoke-virtual {v3}, Lcom/meizu/widget/DragSortListView;->isDragEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/meizu/widget/DragSortController;->mDslv:Lcom/meizu/widget/DragSortListView;

    invoke-virtual {v3}, Lcom/meizu/widget/DragSortListView;->listViewIntercepted()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return v5

    :cond_1
    iget-object v3, p0, Lcom/meizu/widget/DragSortController;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-boolean v3, p0, Lcom/meizu/widget/DragSortController;->mRemoveEnabled:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/meizu/widget/DragSortController;->mDragging:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/meizu/widget/DragSortController;->mRemoveMode:I

    if-ne v3, v6, :cond_2

    iget-object v3, p0, Lcom/meizu/widget/DragSortController;->mFlingRemoveDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v5

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/meizu/widget/DragSortController;->mCurrX:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/meizu/widget/DragSortController;->mCurrY:I

    goto :goto_0

    :pswitch_2
    iget-boolean v3, p0, Lcom/meizu/widget/DragSortController;->mRemoveEnabled:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/meizu/widget/DragSortController;->mIsRemoving:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/meizu/widget/DragSortController;->mPositionX:I

    if-ltz v3, :cond_4

    iget v2, p0, Lcom/meizu/widget/DragSortController;->mPositionX:I

    .local v2, "x":I
    :goto_1
    iget-object v3, p0, Lcom/meizu/widget/DragSortController;->mDslv:Lcom/meizu/widget/DragSortListView;

    invoke-virtual {v3}, Lcom/meizu/widget/DragSortListView;->getWidth()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .local v1, "removePoint":I
    if-le v2, v1, :cond_3

    iget-object v3, p0, Lcom/meizu/widget/DragSortController;->mDslv:Lcom/meizu/widget/DragSortListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v6, v4}, Lcom/meizu/widget/DragSortListView;->stopDragWithVelocity(ZF)Z

    .end local v1    # "removePoint":I
    .end local v2    # "x":I
    :cond_3
    :pswitch_3
    iput-boolean v5, p0, Lcom/meizu/widget/DragSortController;->mIsRemoving:Z

    iput-boolean v5, p0, Lcom/meizu/widget/DragSortController;->mDragging:Z

    goto :goto_0

    :cond_4
    iget v3, p0, Lcom/meizu/widget/DragSortController;->mPositionX:I

    neg-int v2, v3

    .restart local v2    # "x":I
    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setClickRemoveId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    iput p1, p0, Lcom/meizu/widget/DragSortController;->mClickRemoveId:I

    return-void
.end method

.method public setDragHandleId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    iput p1, p0, Lcom/meizu/widget/DragSortController;->mDragHandleId:I

    return-void
.end method

.method public setDragInitMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    iput p1, p0, Lcom/meizu/widget/DragSortController;->mDragInitMode:I

    return-void
.end method

.method public setFlingHandleId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    iput p1, p0, Lcom/meizu/widget/DragSortController;->mFlingHandleId:I

    return-void
.end method

.method public setRemoveEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/meizu/widget/DragSortController;->mRemoveEnabled:Z

    return-void
.end method

.method public setRemoveMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    iput p1, p0, Lcom/meizu/widget/DragSortController;->mRemoveMode:I

    return-void
.end method

.method public setSortEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/meizu/widget/DragSortController;->mSortEnabled:Z

    return-void
.end method

.method public startDrag(III)Z
    .locals 3
    .param p1, "position"    # I
    .param p2, "deltaX"    # I
    .param p3, "deltaY"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "dragFlags":I
    iget-boolean v1, p0, Lcom/meizu/widget/DragSortController;->mSortEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/meizu/widget/DragSortController;->mIsRemoving:Z

    if-eqz v1, :cond_2

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/meizu/widget/DragSortController;->mRemoveEnabled:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/meizu/widget/DragSortController;->mIsRemoving:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    iget-object v1, p0, Lcom/meizu/widget/DragSortController;->mDslv:Lcom/meizu/widget/DragSortListView;

    iget-object v2, p0, Lcom/meizu/widget/DragSortController;->mDslv:Lcom/meizu/widget/DragSortListView;

    invoke-virtual {v2}, Lcom/meizu/widget/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2, v0, p2, p3}, Lcom/meizu/widget/DragSortListView;->startDrag(IIII)Z

    move-result v1

    iput-boolean v1, p0, Lcom/meizu/widget/DragSortController;->mDragging:Z

    iget-boolean v1, p0, Lcom/meizu/widget/DragSortController;->mDragging:Z

    return v1

    :cond_2
    const/16 v0, 0xc

    goto :goto_0
.end method

.method public startDragPosition(Landroid/view/MotionEvent;)I
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual {p0, p1}, Lcom/meizu/widget/DragSortController;->dragHandleHitPosition(Landroid/view/MotionEvent;)I

    move-result v0

    return v0
.end method

.method public startFlingPosition(Landroid/view/MotionEvent;)I
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    iget v0, p0, Lcom/meizu/widget/DragSortController;->mRemoveMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/meizu/widget/DragSortController;->flingHandleHitPosition(Landroid/view/MotionEvent;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public viewIdHitPosition(Landroid/view/MotionEvent;I)I
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "id"    # I

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v8, v10

    .local v8, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v9, v10

    .local v9, "y":I
    iget-object v10, p0, Lcom/meizu/widget/DragSortController;->mDslv:Lcom/meizu/widget/DragSortListView;

    invoke-virtual {v10, v8, v9}, Lcom/meizu/widget/DragSortListView;->pointToPosition(II)I

    move-result v7

    .local v7, "touchPos":I
    iget-object v10, p0, Lcom/meizu/widget/DragSortController;->mDslv:Lcom/meizu/widget/DragSortListView;

    invoke-virtual {v10}, Lcom/meizu/widget/DragSortListView;->getHeaderViewsCount()I

    move-result v4

    .local v4, "numHeaders":I
    iget-object v10, p0, Lcom/meizu/widget/DragSortController;->mDslv:Lcom/meizu/widget/DragSortListView;

    invoke-virtual {v10}, Lcom/meizu/widget/DragSortListView;->getFooterViewsCount()I

    move-result v3

    .local v3, "numFooters":I
    iget-object v10, p0, Lcom/meizu/widget/DragSortController;->mDslv:Lcom/meizu/widget/DragSortListView;

    invoke-virtual {v10}, Lcom/meizu/widget/DragSortListView;->getCount()I

    move-result v0

    .local v0, "count":I
    const/4 v10, -0x1

    if-eq v7, v10, :cond_1

    if-lt v7, v4, :cond_1

    sub-int v10, v0, v3

    if-ge v7, v10, :cond_1

    iget-object v10, p0, Lcom/meizu/widget/DragSortController;->mDslv:Lcom/meizu/widget/DragSortListView;

    iget-object v11, p0, Lcom/meizu/widget/DragSortController;->mDslv:Lcom/meizu/widget/DragSortListView;

    invoke-virtual {v11}, Lcom/meizu/widget/DragSortListView;->getFirstVisiblePosition()I

    move-result v11

    sub-int v11, v7, v11

    invoke-virtual {v10, v11}, Lcom/meizu/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .local v2, "item":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    float-to-int v5, v10

    .local v5, "rawX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    float-to-int v6, v10

    .local v6, "rawY":I
    if-nez p2, :cond_0

    move-object v1, v2

    .local v1, "dragBox":Landroid/view/View;
    :goto_0
    if-eqz v1, :cond_1

    iget-object v10, p0, Lcom/meizu/widget/DragSortController;->mTempLoc:[I

    invoke-virtual {v1, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v10, p0, Lcom/meizu/widget/DragSortController;->mTempLoc:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    if-le v5, v10, :cond_1

    iget-object v10, p0, Lcom/meizu/widget/DragSortController;->mTempLoc:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    if-le v6, v10, :cond_1

    iget-object v10, p0, Lcom/meizu/widget/DragSortController;->mTempLoc:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    if-ge v5, v10, :cond_1

    iget-object v10, p0, Lcom/meizu/widget/DragSortController;->mTempLoc:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    if-ge v6, v10, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v10

    iput v10, p0, Lcom/meizu/widget/DragSortController;->mItemX:I

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v10

    iput v10, p0, Lcom/meizu/widget/DragSortController;->mItemY:I

    return v7

    .end local v1    # "dragBox":Landroid/view/View;
    :cond_0
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "dragBox":Landroid/view/View;
    goto :goto_0

    .end local v1    # "dragBox":Landroid/view/View;
    .end local v2    # "item":Landroid/view/View;
    .end local v5    # "rawX":I
    .end local v6    # "rawY":I
    :cond_1
    const/4 v10, -0x1

    return v10
.end method
