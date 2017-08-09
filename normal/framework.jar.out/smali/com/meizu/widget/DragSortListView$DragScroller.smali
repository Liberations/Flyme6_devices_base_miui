.class Lcom/meizu/widget/DragSortListView$DragScroller;
.super Ljava/lang/Object;
.source "DragSortListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragScroller"
.end annotation


# static fields
.field public static final DOWN:I = 0x1

.field public static final STOP:I = -0x1

.field public static final UP:I


# instance fields
.field private dt:F

.field private dy:I

.field private mAbort:Z

.field private mCurrTime:J

.field private mFirstFooter:I

.field private mLastHeader:I

.field private mPrevTime:J

.field private mScrollSpeed:F

.field private mScrolling:Z

.field private scrollDir:I

.field private tStart:J

.field final synthetic this$0:Lcom/meizu/widget/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/meizu/widget/DragSortListView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/meizu/widget/DragSortListView;

    .prologue
    iput-object p1, p0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/DragSortListView$DragScroller;->mScrolling:Z

    return-void
.end method


# virtual methods
.method public getScrollDir()I
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/meizu/widget/DragSortListView$DragScroller;->mScrolling:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/meizu/widget/DragSortListView$DragScroller;->scrollDir:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isScrolling()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/meizu/widget/DragSortListView$DragScroller;->mScrolling:Z

    return v0
.end method

.method public run()V
    .locals 18

    .prologue
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->mAbort:Z

    if-eqz v13, :cond_0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->mScrolling:Z

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-virtual {v13}, Lcom/meizu/widget/DragSortListView;->getFirstVisiblePosition()I

    move-result v3

    .local v3, "first":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-virtual {v13}, Lcom/meizu/widget/DragSortListView;->getLastVisiblePosition()I

    move-result v4

    .local v4, "last":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-virtual {v13}, Lcom/meizu/widget/DragSortListView;->getCount()I

    move-result v2

    .local v2, "count":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-virtual {v13}, Lcom/meizu/widget/DragSortListView;->getPaddingTop()I

    move-result v10

    .local v10, "padTop":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-virtual {v13}, Lcom/meizu/widget/DragSortListView;->getHeight()I

    move-result v13

    sub-int/2addr v13, v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-virtual {v14}, Lcom/meizu/widget/DragSortListView;->getPaddingBottom()I

    move-result v14

    sub-int v5, v13, v14

    .local v5, "listHeight":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-static {v13}, Lcom/meizu/widget/DragSortListView;->-get20(Lcom/meizu/widget/DragSortListView;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-static {v14}, Lcom/meizu/widget/DragSortListView;->-get10(Lcom/meizu/widget/DragSortListView;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-static {v15}, Lcom/meizu/widget/DragSortListView;->-get9(Lcom/meizu/widget/DragSortListView;)I

    move-result v15

    add-int/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v7

    .local v7, "minY":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-static {v13}, Lcom/meizu/widget/DragSortListView;->-get20(Lcom/meizu/widget/DragSortListView;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-static {v14}, Lcom/meizu/widget/DragSortListView;->-get10(Lcom/meizu/widget/DragSortListView;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-static {v15}, Lcom/meizu/widget/DragSortListView;->-get9(Lcom/meizu/widget/DragSortListView;)I

    move-result v15

    sub-int/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v6

    .local v6, "maxY":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->scrollDir:I

    if-nez v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/meizu/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .local v12, "v":Landroid/view/View;
    if-nez v12, :cond_1

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->mScrolling:Z

    return-void

    :cond_1
    if-nez v3, :cond_2

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v13

    if-ne v13, v10, :cond_2

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->mScrolling:Z

    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-static {v13}, Lcom/meizu/widget/DragSortListView;->-get15(Lcom/meizu/widget/DragSortListView;)Lcom/meizu/widget/DragSortListView$DragScrollProfile;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-static {v14}, Lcom/meizu/widget/DragSortListView;->-get18(Lcom/meizu/widget/DragSortListView;)F

    move-result v14

    int-to-float v15, v6

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-static {v15}, Lcom/meizu/widget/DragSortListView;->-get4(Lcom/meizu/widget/DragSortListView;)F

    move-result v15

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->mPrevTime:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-interface {v13, v14, v0, v1}, Lcom/meizu/widget/DragSortListView$DragScrollProfile;->getSpeed(FJ)F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->mScrollSpeed:F

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->mCurrTime:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->mCurrTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->mPrevTime:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    long-to-float v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->dt:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->mScrollSpeed:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->dt:F

    mul-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->dy:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->dy:I

    if-ltz v13, :cond_7

    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->dy:I

    invoke-static {v5, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->dy:I

    move v9, v3

    .local v9, "movePos":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    sub-int v14, v9, v3

    invoke-virtual {v13, v14}, Lcom/meizu/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .local v8, "moveItem":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->dy:I

    add-int v11, v13, v14

    .local v11, "top":I
    if-nez v9, :cond_3

    if-le v11, v10, :cond_3

    move v11, v10

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/meizu/widget/DragSortListView;->-set0(Lcom/meizu/widget/DragSortListView;Z)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    sub-int v14, v11, v10

    invoke-virtual {v13, v9, v14}, Lcom/meizu/widget/DragSortListView;->setSelectionFromTop(II)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-virtual {v13}, Lcom/meizu/widget/DragSortListView;->layoutChildren()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-virtual {v13}, Lcom/meizu/widget/DragSortListView;->invalidate()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/meizu/widget/DragSortListView;->-set0(Lcom/meizu/widget/DragSortListView;Z)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    const/4 v14, 0x0

    invoke-static {v13, v9, v8, v14}, Lcom/meizu/widget/DragSortListView;->-wrap7(Lcom/meizu/widget/DragSortListView;ILandroid/view/View;Z)V

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->mCurrTime:J

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->mPrevTime:J

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/meizu/widget/DragSortListView;->post(Ljava/lang/Runnable;)Z

    return-void

    .end local v8    # "moveItem":Landroid/view/View;
    .end local v9    # "movePos":I
    .end local v11    # "top":I
    .end local v12    # "v":Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    sub-int v14, v4, v3

    invoke-virtual {v13, v14}, Lcom/meizu/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .restart local v12    # "v":Landroid/view/View;
    if-nez v12, :cond_5

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->mScrolling:Z

    return-void

    :cond_5
    add-int/lit8 v13, v2, -0x1

    if-ne v4, v13, :cond_6

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int v14, v5, v10

    if-gt v13, v14, :cond_6

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->mScrolling:Z

    return-void

    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-static {v13}, Lcom/meizu/widget/DragSortListView;->-get15(Lcom/meizu/widget/DragSortListView;)Lcom/meizu/widget/DragSortListView$DragScrollProfile;

    move-result-object v13

    int-to-float v14, v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-static {v15}, Lcom/meizu/widget/DragSortListView;->-get0(Lcom/meizu/widget/DragSortListView;)F

    move-result v15

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-static {v15}, Lcom/meizu/widget/DragSortListView;->-get2(Lcom/meizu/widget/DragSortListView;)F

    move-result v15

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->mPrevTime:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-interface {v13, v14, v0, v1}, Lcom/meizu/widget/DragSortListView$DragScrollProfile;->getSpeed(FJ)F

    move-result v13

    neg-float v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->mScrollSpeed:F

    goto/16 :goto_0

    :cond_7
    neg-int v13, v5

    move-object/from16 v0, p0

    iget v14, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->dy:I

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/meizu/widget/DragSortListView$DragScroller;->dy:I

    move v9, v4

    .restart local v9    # "movePos":I
    goto/16 :goto_1
.end method

.method public startScrolling(I)V
    .locals 2
    .param p1, "dir"    # I

    .prologue
    iget-boolean v0, p0, Lcom/meizu/widget/DragSortListView$DragScroller;->mScrolling:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/DragSortListView$DragScroller;->mAbort:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/DragSortListView$DragScroller;->mScrolling:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/widget/DragSortListView$DragScroller;->tStart:J

    iget-wide v0, p0, Lcom/meizu/widget/DragSortListView$DragScroller;->tStart:J

    iput-wide v0, p0, Lcom/meizu/widget/DragSortListView$DragScroller;->mPrevTime:J

    iput p1, p0, Lcom/meizu/widget/DragSortListView$DragScroller;->scrollDir:I

    iget-object v0, p0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/meizu/widget/DragSortListView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public stopScrolling(Z)V
    .locals 1
    .param p1, "now"    # Z

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/DragSortListView$DragScroller;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/meizu/widget/DragSortListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/DragSortListView$DragScroller;->mScrolling:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/DragSortListView$DragScroller;->mAbort:Z

    goto :goto_0
.end method
