.class public Lcom/meizu/widget/LimitedHeightScrollView;
.super Landroid/widget/ScrollView;
.source "LimitedHeightScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/LimitedHeightScrollView$ScrollRunnable;
    }
.end annotation


# instance fields
.field MAX_HEIGHT_LANDSCAPE:I

.field MAX_HEIGHT_PORTRAIT:I

.field private RESPONSE_RANGER:I

.field private mMaxHeight:I

.field private mScrollRunnable:Lcom/meizu/widget/LimitedHeightScrollView$ScrollRunnable;


# direct methods
.method static synthetic -get0(Lcom/meizu/widget/LimitedHeightScrollView;)I
    .locals 1

    iget v0, p0, Lcom/meizu/widget/LimitedHeightScrollView;->RESPONSE_RANGER:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/meizu/widget/LimitedHeightScrollView;Z)V
    .locals 0
    .param p1, "forward"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/meizu/widget/LimitedHeightScrollView;->startScroll(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/meizu/widget/LimitedHeightScrollView;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/widget/LimitedHeightScrollView;->stopScroll()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/LimitedHeightScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/widget/LimitedHeightScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/LimitedHeightScrollView;->mScrollRunnable:Lcom/meizu/widget/LimitedHeightScrollView$ScrollRunnable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/flyme/internal/R$dimen;->mz_resolve_grid_land_max_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/LimitedHeightScrollView;->MAX_HEIGHT_LANDSCAPE:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/flyme/internal/R$dimen;->mz_resolve_grid_port_max_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/LimitedHeightScrollView;->MAX_HEIGHT_PORTRAIT:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/flyme/internal/R$dimen;->mz_resolve_auto_scroll_response_range:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/LimitedHeightScrollView;->RESPONSE_RANGER:I

    iget v0, p0, Lcom/meizu/widget/LimitedHeightScrollView;->MAX_HEIGHT_PORTRAIT:I

    iput v0, p0, Lcom/meizu/widget/LimitedHeightScrollView;->mMaxHeight:I

    new-instance v0, Lcom/meizu/widget/LimitedHeightScrollView$1;

    invoke-direct {v0, p0}, Lcom/meizu/widget/LimitedHeightScrollView$1;-><init>(Lcom/meizu/widget/LimitedHeightScrollView;)V

    invoke-virtual {p0, v0}, Lcom/meizu/widget/LimitedHeightScrollView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    return-void
.end method

.method private startScroll(Z)V
    .locals 3
    .param p1, "forward"    # Z

    .prologue
    const/4 v2, 0x0

    iget-object v1, p0, Lcom/meizu/widget/LimitedHeightScrollView;->mScrollRunnable:Lcom/meizu/widget/LimitedHeightScrollView$ScrollRunnable;

    if-nez v1, :cond_0

    new-instance v1, Lcom/meizu/widget/LimitedHeightScrollView$ScrollRunnable;

    invoke-direct {v1, p0, v2}, Lcom/meizu/widget/LimitedHeightScrollView$ScrollRunnable;-><init>(Lcom/meizu/widget/LimitedHeightScrollView;Lcom/meizu/widget/LimitedHeightScrollView$ScrollRunnable;)V

    iput-object v1, p0, Lcom/meizu/widget/LimitedHeightScrollView;->mScrollRunnable:Lcom/meizu/widget/LimitedHeightScrollView$ScrollRunnable;

    :cond_0
    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/meizu/widget/LimitedHeightScrollView;->canScrollVertically(I)Z

    move-result v0

    .local v0, "enabledScroll":Z
    iget-object v1, p0, Lcom/meizu/widget/LimitedHeightScrollView;->mScrollRunnable:Lcom/meizu/widget/LimitedHeightScrollView$ScrollRunnable;

    invoke-virtual {v1}, Lcom/meizu/widget/LimitedHeightScrollView$ScrollRunnable;->isStarted()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/meizu/widget/LimitedHeightScrollView;->mScrollRunnable:Lcom/meizu/widget/LimitedHeightScrollView$ScrollRunnable;

    invoke-virtual {v1, p1}, Lcom/meizu/widget/LimitedHeightScrollView$ScrollRunnable;->startScroll(Z)V

    :cond_1
    return-void

    .end local v0    # "enabledScroll":Z
    :cond_2
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private stopScroll()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/meizu/widget/LimitedHeightScrollView;->mScrollRunnable:Lcom/meizu/widget/LimitedHeightScrollView$ScrollRunnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/LimitedHeightScrollView;->mScrollRunnable:Lcom/meizu/widget/LimitedHeightScrollView$ScrollRunnable;

    invoke-virtual {v0}, Lcom/meizu/widget/LimitedHeightScrollView$ScrollRunnable;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/LimitedHeightScrollView;->mScrollRunnable:Lcom/meizu/widget/LimitedHeightScrollView$ScrollRunnable;

    invoke-virtual {v0}, Lcom/meizu/widget/LimitedHeightScrollView$ScrollRunnable;->finish()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/meizu/widget/LimitedHeightScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    return-void

    :cond_0
    invoke-virtual {p0, v5}, Lcom/meizu/widget/LimitedHeightScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0, v5}, Lcom/meizu/widget/LimitedHeightScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .local v0, "height":I
    invoke-virtual {p0}, Lcom/meizu/widget/LimitedHeightScrollView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .local v3, "screenWidth":I
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .local v2, "screenHeight":I
    if-le v3, v2, :cond_2

    iget v4, p0, Lcom/meizu/widget/LimitedHeightScrollView;->MAX_HEIGHT_LANDSCAPE:I

    iput v4, p0, Lcom/meizu/widget/LimitedHeightScrollView;->mMaxHeight:I

    :goto_0
    iget v4, p0, Lcom/meizu/widget/LimitedHeightScrollView;->mMaxHeight:I

    if-le v0, v4, :cond_1

    iget v0, p0, Lcom/meizu/widget/LimitedHeightScrollView;->mMaxHeight:I

    :cond_1
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-super {p0, p1, v4}, Landroid/widget/ScrollView;->onMeasure(II)V

    return-void

    :cond_2
    iget v4, p0, Lcom/meizu/widget/LimitedHeightScrollView;->MAX_HEIGHT_PORTRAIT:I

    iput v4, p0, Lcom/meizu/widget/LimitedHeightScrollView;->mMaxHeight:I

    goto :goto_0
.end method
