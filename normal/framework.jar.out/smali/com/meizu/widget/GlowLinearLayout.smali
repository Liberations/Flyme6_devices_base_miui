.class public Lcom/meizu/widget/GlowLinearLayout;
.super Landroid/widget/LinearLayout;
.source "GlowLinearLayout.java"


# instance fields
.field private mDelegate:Lcom/meizu/widget/GlowDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/meizu/widget/GlowLinearLayout;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/meizu/widget/GlowLinearLayout;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/meizu/widget/GlowLinearLayout;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    new-instance v0, Lcom/meizu/widget/GlowDelegate;

    invoke-virtual {p0}, Lcom/meizu/widget/GlowLinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcom/meizu/widget/GlowDelegate;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/meizu/widget/GlowLinearLayout;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/widget/GlowLinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/meizu/widget/GlowLinearLayout;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/GlowDelegate;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getDrawingAlpha()F
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/meizu/widget/GlowLinearLayout;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    invoke-virtual {v0}, Lcom/meizu/widget/GlowDelegate;->getGlowAlpha()F

    move-result v0

    return v0
.end method

.method public getGlowAlpha()F
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/meizu/widget/GlowLinearLayout;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    invoke-virtual {v0}, Lcom/meizu/widget/GlowDelegate;->getGlowAlpha()F

    move-result v0

    return v0
.end method

.method public getGlowScale()F
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/meizu/widget/GlowLinearLayout;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    invoke-virtual {v0}, Lcom/meizu/widget/GlowDelegate;->getGlowScale()F

    move-result v0

    return v0
.end method

.method public setDrawingAlpha(F)V
    .locals 1
    .param p1, "x"    # F

    .prologue
    iget-object v0, p0, Lcom/meizu/widget/GlowLinearLayout;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/GlowDelegate;->setDrawingAlpha(F)V

    return-void
.end method

.method public setGlowAlpha(F)V
    .locals 1
    .param p1, "x"    # F

    .prologue
    iget-object v0, p0, Lcom/meizu/widget/GlowLinearLayout;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/GlowDelegate;->setGlowAlpha(F)V

    return-void
.end method

.method public setGlowScale(F)V
    .locals 1
    .param p1, "x"    # F

    .prologue
    iget-object v0, p0, Lcom/meizu/widget/GlowLinearLayout;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/GlowDelegate;->setGlowScale(F)V

    return-void
.end method

.method public setPressed(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    iget-object v0, p0, Lcom/meizu/widget/GlowLinearLayout;->mDelegate:Lcom/meizu/widget/GlowDelegate;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/GlowDelegate;->setPressed(Z)V

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setPressed(Z)V

    return-void
.end method
