.class Lcom/meizu/widget/DragSortListView$RemoveAnimator;
.super Lcom/meizu/widget/DragSortListView$SmoothAnimator;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveAnimator"
.end annotation


# instance fields
.field private mFirstChildHeight:I

.field private mFirstPos:I

.field private mFirstStartBlank:F

.field private mFloatLocX:F

.field private mSecondChildHeight:I

.field private mSecondPos:I

.field private mSecondStartBlank:F

.field private srcPos:I

.field final synthetic this$0:Lcom/meizu/widget/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/meizu/widget/DragSortListView;FI)V
    .locals 1
    .param p1, "this$0"    # Lcom/meizu/widget/DragSortListView;
    .param p2, "smoothness"    # F
    .param p3, "duration"    # I

    .prologue
    const/4 v0, -0x1

    iput-object p1, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/widget/DragSortListView$SmoothAnimator;-><init>(Lcom/meizu/widget/DragSortListView;FI)V

    iput v0, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->mFirstChildHeight:I

    iput v0, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->mSecondChildHeight:I

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v1, -0x1

    const/4 v5, 0x0

    iput v1, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->mFirstChildHeight:I

    iput v1, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->mSecondChildHeight:I

    iget-object v3, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-static {v3}, Lcom/meizu/widget/DragSortListView;->-get5(Lcom/meizu/widget/DragSortListView;)I

    move-result v3

    iput v3, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->mFirstPos:I

    iget-object v3, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-static {v3}, Lcom/meizu/widget/DragSortListView;->-get16(Lcom/meizu/widget/DragSortListView;)I

    move-result v3

    iput v3, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->mSecondPos:I

    iget-object v3, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-static {v3}, Lcom/meizu/widget/DragSortListView;->-get17(Lcom/meizu/widget/DragSortListView;)I

    move-result v3

    iput v3, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->srcPos:I

    iget-object v3, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-static {v3, v2}, Lcom/meizu/widget/DragSortListView;->-set2(Lcom/meizu/widget/DragSortListView;I)I

    iget-object v3, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-static {v3}, Lcom/meizu/widget/DragSortListView;->-get6(Lcom/meizu/widget/DragSortListView;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iput v3, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->mFloatLocX:F

    iget-object v3, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-static {v3}, Lcom/meizu/widget/DragSortListView;->-get19(Lcom/meizu/widget/DragSortListView;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-virtual {v3}, Lcom/meizu/widget/DragSortListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v0, v4, v3

    .local v0, "minVelocity":F
    iget-object v3, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-static {v3}, Lcom/meizu/widget/DragSortListView;->-get14(Lcom/meizu/widget/DragSortListView;)F

    move-result v3

    cmpl-float v3, v3, v5

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->this$0:Lcom/meizu/widget/DragSortListView;

    iget v4, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->mFloatLocX:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    :goto_0
    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {v3, v1}, Lcom/meizu/widget/DragSortListView;->-set3(Lcom/meizu/widget/DragSortListView;F)F

    .end local v0    # "minVelocity":F
    :cond_0
    :goto_1
    return-void

    .restart local v0    # "minVelocity":F
    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    mul-float/2addr v0, v4

    iget-object v1, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-static {v1}, Lcom/meizu/widget/DragSortListView;->-get14(Lcom/meizu/widget/DragSortListView;)F

    move-result v1

    cmpg-float v1, v1, v5

    if-gez v1, :cond_3

    iget-object v1, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-static {v1}, Lcom/meizu/widget/DragSortListView;->-get14(Lcom/meizu/widget/DragSortListView;)F

    move-result v1

    neg-float v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->this$0:Lcom/meizu/widget/DragSortListView;

    neg-float v2, v0

    invoke-static {v1, v2}, Lcom/meizu/widget/DragSortListView;->-set3(Lcom/meizu/widget/DragSortListView;F)F

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-static {v1}, Lcom/meizu/widget/DragSortListView;->-get14(Lcom/meizu/widget/DragSortListView;)F

    move-result v1

    cmpl-float v1, v1, v5

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-static {v1}, Lcom/meizu/widget/DragSortListView;->-get14(Lcom/meizu/widget/DragSortListView;)F

    move-result v1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-static {v1, v0}, Lcom/meizu/widget/DragSortListView;->-set3(Lcom/meizu/widget/DragSortListView;F)F

    goto :goto_1

    .end local v0    # "minVelocity":F
    :cond_4
    iget-object v1, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-static {v1}, Lcom/meizu/widget/DragSortListView;->-wrap5(Lcom/meizu/widget/DragSortListView;)V

    goto :goto_1
.end method

.method public onStop()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-static {v0}, Lcom/meizu/widget/DragSortListView;->-wrap8(Lcom/meizu/widget/DragSortListView;)V

    return-void
.end method

.method public onUpdate(FF)V
    .locals 12
    .param p1, "frac"    # F
    .param p2, "smoothFrac"    # F

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v3, v8, p2

    .local v3, "f":F
    iget-object v8, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-virtual {v8}, Lcom/meizu/widget/DragSortListView;->getFirstVisiblePosition()I

    move-result v4

    .local v4, "firstVis":I
    iget-object v8, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->this$0:Lcom/meizu/widget/DragSortListView;

    iget v9, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->mFirstPos:I

    sub-int/2addr v9, v4

    invoke-virtual {v8, v9}, Lcom/meizu/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .local v5, "item":Landroid/view/View;
    iget-object v8, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-static {v8}, Lcom/meizu/widget/DragSortListView;->-get19(Lcom/meizu/widget/DragSortListView;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->mStartTime:J

    sub-long/2addr v8, v10

    long-to-float v8, v8

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float v1, v8, v9

    .local v1, "dt":F
    const/4 v8, 0x0

    cmpl-float v8, v1, v8

    if-nez v8, :cond_0

    return-void

    :cond_0
    iget-object v8, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-static {v8}, Lcom/meizu/widget/DragSortListView;->-get14(Lcom/meizu/widget/DragSortListView;)F

    move-result v8

    mul-float v2, v8, v1

    .local v2, "dx":F
    iget-object v8, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-virtual {v8}, Lcom/meizu/widget/DragSortListView;->getWidth()I

    move-result v7

    .local v7, "w":I
    iget-object v9, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-static {v9}, Lcom/meizu/widget/DragSortListView;->-get14(Lcom/meizu/widget/DragSortListView;)F

    move-result v10

    iget-object v8, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-static {v8}, Lcom/meizu/widget/DragSortListView;->-get14(Lcom/meizu/widget/DragSortListView;)F

    move-result v8

    const/4 v11, 0x0

    cmpl-float v8, v8, v11

    if-lez v8, :cond_1

    const/4 v8, 0x1

    :goto_0
    int-to-float v8, v8

    mul-float/2addr v8, v1

    int-to-float v11, v7

    mul-float/2addr v8, v11

    add-float/2addr v8, v10

    invoke-static {v9, v8}, Lcom/meizu/widget/DragSortListView;->-set3(Lcom/meizu/widget/DragSortListView;F)F

    iget v8, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->mFloatLocX:F

    add-float/2addr v8, v2

    iput v8, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->mFloatLocX:F

    iget-object v8, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->this$0:Lcom/meizu/widget/DragSortListView;

    invoke-static {v8}, Lcom/meizu/widget/DragSortListView;->-get6(Lcom/meizu/widget/DragSortListView;)Landroid/graphics/Point;

    move-result-object v8

    iget v9, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->mFloatLocX:F

    float-to-int v9, v9

    iput v9, v8, Landroid/graphics/Point;->x:I

    iget v8, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->mFloatLocX:F

    int-to-float v9, v7

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    iget v8, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->mFloatLocX:F

    neg-int v9, v7

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->mStartTime:J

    iget-object v8, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->this$0:Lcom/meizu/widget/DragSortListView;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/meizu/widget/DragSortListView;->-wrap6(Lcom/meizu/widget/DragSortListView;Z)V

    return-void

    :cond_1
    const/4 v8, -0x1

    goto :goto_0

    .end local v1    # "dt":F
    .end local v2    # "dx":F
    .end local v7    # "w":I
    :cond_2
    if-eqz v5, :cond_4

    iget v8, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->mFirstChildHeight:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_3

    iget-object v8, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->this$0:Lcom/meizu/widget/DragSortListView;

    iget v9, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->mFirstPos:I

    const/4 v10, 0x0

    invoke-static {v8, v9, v5, v10}, Lcom/meizu/widget/DragSortListView;->-wrap0(Lcom/meizu/widget/DragSortListView;ILandroid/view/View;Z)I

    move-result v8

    iput v8, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->mFirstChildHeight:I

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->mFirstChildHeight:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iput v8, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->mFirstStartBlank:F

    :cond_3
    iget v8, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->mFirstStartBlank:F

    mul-float/2addr v8, v3

    float-to-int v8, v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    .local v0, "blank":I
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .local v6, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v8, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->mFirstChildHeight:I

    add-int/2addr v8, v0

    iput v8, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .end local v0    # "blank":I
    .end local v6    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    iget v8, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->mSecondPos:I

    iget v9, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->mFirstPos:I

    if-eq v8, v9, :cond_6

    iget-object v8, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->this$0:Lcom/meizu/widget/DragSortListView;

    iget v9, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->mSecondPos:I

    sub-int/2addr v9, v4

    invoke-virtual {v8, v9}, Lcom/meizu/widget/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_6

    iget v8, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->mSecondChildHeight:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_5

    iget-object v8, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->this$0:Lcom/meizu/widget/DragSortListView;

    iget v9, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->mSecondPos:I

    const/4 v10, 0x0

    invoke-static {v8, v9, v5, v10}, Lcom/meizu/widget/DragSortListView;->-wrap0(Lcom/meizu/widget/DragSortListView;ILandroid/view/View;Z)I

    move-result v8

    iput v8, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->mSecondChildHeight:I

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->mSecondChildHeight:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iput v8, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->mSecondStartBlank:F

    :cond_5
    iget v8, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->mSecondStartBlank:F

    mul-float/2addr v8, v3

    float-to-int v8, v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    .restart local v0    # "blank":I
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .restart local v6    # "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v8, p0, Lcom/meizu/widget/DragSortListView$RemoveAnimator;->mSecondChildHeight:I

    add-int/2addr v8, v0

    iput v8, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .end local v0    # "blank":I
    .end local v6    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    return-void
.end method
