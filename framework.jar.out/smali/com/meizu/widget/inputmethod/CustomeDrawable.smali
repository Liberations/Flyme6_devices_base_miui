.class public Lcom/meizu/widget/inputmethod/CustomeDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CustomeDrawable.java"


# instance fields
.field private mBottom:I

.field private mPicHeight:I

.field private mPicWidth:I

.field private mRight:I

.field private mScale:F

.field private mTargetDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "target"    # Landroid/graphics/drawable/Drawable;

    .prologue
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/meizu/widget/inputmethod/CustomeDrawable;->mScale:F

    iput-object p1, p0, Lcom/meizu/widget/inputmethod/CustomeDrawable;->mTargetDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/CustomeDrawable;->mTargetDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/inputmethod/CustomeDrawable;->mPicWidth:I

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/CustomeDrawable;->mTargetDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/inputmethod/CustomeDrawable;->mPicHeight:I

    iget v0, p0, Lcom/meizu/widget/inputmethod/CustomeDrawable;->mPicWidth:I

    iput v0, p0, Lcom/meizu/widget/inputmethod/CustomeDrawable;->mRight:I

    iget v0, p0, Lcom/meizu/widget/inputmethod/CustomeDrawable;->mPicHeight:I

    iput v0, p0, Lcom/meizu/widget/inputmethod/CustomeDrawable;->mBottom:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/CustomeDrawable;->mTargetDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/CustomeDrawable;->mTargetDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/meizu/widget/inputmethod/CustomeDrawable;->mRight:I

    iget v2, p0, Lcom/meizu/widget/inputmethod/CustomeDrawable;->mBottom:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/CustomeDrawable;->mTargetDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/CustomeDrawable;->mTargetDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/CustomeDrawable;->mTargetDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public getRealHeight()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/meizu/widget/inputmethod/CustomeDrawable;->mBottom:I

    return v0
.end method

.method public getRealWidth()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/meizu/widget/inputmethod/CustomeDrawable;->mRight:I

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/meizu/widget/inputmethod/CustomeDrawable;->mScale:F

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/CustomeDrawable;->mTargetDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/CustomeDrawable;->mTargetDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/CustomeDrawable;->mTargetDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/CustomeDrawable;->mTargetDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method public setScale(F)V
    .locals 1
    .param p1, "scale"    # F

    .prologue
    iput p1, p0, Lcom/meizu/widget/inputmethod/CustomeDrawable;->mScale:F

    iget v0, p0, Lcom/meizu/widget/inputmethod/CustomeDrawable;->mPicWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/widget/inputmethod/CustomeDrawable;->mRight:I

    iget v0, p0, Lcom/meizu/widget/inputmethod/CustomeDrawable;->mPicHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/widget/inputmethod/CustomeDrawable;->mBottom:I

    invoke-virtual {p0}, Lcom/meizu/widget/inputmethod/CustomeDrawable;->invalidateSelf()V

    return-void
.end method

.method public setTargetDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "targetDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iput-object p1, p0, Lcom/meizu/widget/inputmethod/CustomeDrawable;->mTargetDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method
