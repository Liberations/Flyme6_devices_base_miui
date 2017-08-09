.class public Lcom/meizu/util/StrokeDrawableUtils;
.super Ljava/lang/Object;
.source "StrokeDrawableUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/util/StrokeDrawableUtils$StrokeLruCache;
    }
.end annotation


# static fields
.field private static final DEF_STROKE_RADIUS:I = 0xa

.field private static final EFFECTIVE_COLOR:I = 0x23000000

.field private static final MAX_LENGTH:I = 0x3e8

.field private static final STROKE_ALPHA_VALUE:I = 0xff

.field private static final STROKE_RECT_ALPHA_VALUE:I = 0x1a

.field private static final syncStroke:Ljava/lang/Object;

.field private static final syncStrokeRect:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/util/StrokeDrawableUtils;->syncStroke:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/util/StrokeDrawableUtils;->syncStrokeRect:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createRectStrokeDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 11
    .param p0, "originalDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    sget-object v10, Lcom/meizu/util/StrokeDrawableUtils;->syncStrokeRect:Ljava/lang/Object;

    monitor-enter v10

    const/4 v8, 0x0

    .local v8, "newDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .local v7, "createWidth":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .local v6, "createHeight":I
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v6, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .local v9, "strokeBitmap":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    invoke-static {}, Lcom/meizu/util/StrokeDrawableUtils$StrokeLruCache;->obtainStrokeCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v7, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    invoke-static {}, Lcom/meizu/util/StrokeDrawableUtils$StrokeLruCache;->obtainStokePaint()Landroid/graphics/Paint;

    move-result-object v5

    .local v5, "strokePaint":Landroid/graphics/Paint;
    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v1, 0x23000000

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v1, 0x1a

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v1, 0x41200000    # 10.0f

    const/high16 v2, 0x41200000    # 10.0f

    add-int/lit8 v3, v7, -0xa

    int-to-float v3, v3

    add-int/lit8 v4, v6, -0xa

    int-to-float v4, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    .end local v8    # "newDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-direct {v8, p1, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "strokePaint":Landroid/graphics/Paint;
    :cond_0
    if-nez v8, :cond_1

    .end local p0    # "originalDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    monitor-exit v10

    return-object p0

    .restart local p0    # "originalDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    move-object p0, v8

    goto :goto_0

    .end local v6    # "createHeight":I
    .end local v7    # "createWidth":I
    .end local v9    # "strokeBitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    monitor-exit v10

    throw v1
.end method

.method public static createStrokeDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "originalDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/meizu/util/StrokeDrawableUtils;->createStrokeDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Ljava/lang/Boolean;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static createStrokeDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Ljava/lang/Boolean;)Landroid/graphics/drawable/Drawable;
    .locals 14
    .param p0, "originalDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "recycle"    # Ljava/lang/Boolean;

    .prologue
    sget-object v11, Lcom/meizu/util/StrokeDrawableUtils;->syncStroke:Ljava/lang/Object;

    monitor-enter v11

    const/4 v7, 0x0

    .local v7, "newDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :try_start_0
    invoke-static {p0}, Lcom/meizu/util/StrokeDrawableUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v6

    .local v6, "mapBitmap":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    add-int/lit8 v2, v10, 0x14

    .local v2, "createHeight":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    add-int/lit8 v3, v10, 0x14

    .local v3, "createWidth":I
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .local v9, "strokeBitmap":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->hashCode()I

    move-result v5

    .local v5, "hashCode":I
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/graphics/Bitmap;->eraseColor(I)V

    invoke-static {}, Lcom/meizu/util/StrokeDrawableUtils$StrokeLruCache;->obtainStrokeCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/meizu/util/StrokeDrawableUtils$StrokeLruCache;->obtainStokePaint()Landroid/graphics/Paint;

    move-result-object v4

    .local v4, "filterPaint":Landroid/graphics/Paint;
    invoke-static {v3, v2, v5, v6}, Lcom/meizu/util/StrokeDrawableUtils$StrokeLruCache;->getExtraAlphaBitmap(IIILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "alphaBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Paint;->reset()V

    const/high16 v10, 0x23000000

    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    sub-int v10, v3, v10

    shr-int/lit8 v10, v10, 0x1

    int-to-float v10, v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    sub-int v12, v2, v12

    shr-int/lit8 v12, v12, 0x1

    int-to-float v12, v12

    invoke-virtual {v1, v0, v10, v12, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    sub-int v10, v3, v10

    shr-int/lit8 v10, v10, 0x1

    int-to-float v10, v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    sub-int v12, v2, v12

    shr-int/lit8 v12, v12, 0x1

    int-to-float v12, v12

    const/4 v13, 0x0

    invoke-virtual {v1, v6, v10, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v8, p1, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v8, "newDrawable":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v10, 0x0

    const/4 v12, 0x0

    :try_start_1
    invoke-virtual {v8, v10, v12, v3, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v7    # "newDrawable":Landroid/graphics/drawable/BitmapDrawable;
    move-object v7, v8

    .end local v0    # "alphaBitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "createHeight":I
    .end local v3    # "createWidth":I
    .end local v4    # "filterPaint":Landroid/graphics/Paint;
    .end local v5    # "hashCode":I
    .end local v8    # "newDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v9    # "strokeBitmap":Landroid/graphics/Bitmap;
    :cond_0
    if-nez v7, :cond_1

    .end local p0    # "originalDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    monitor-exit v11

    return-object p0

    .restart local p0    # "originalDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    move-object p0, v7

    goto :goto_0

    .end local v6    # "mapBitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "newDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :catchall_0
    move-exception v10

    .end local v7    # "newDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :goto_1
    monitor-exit v11

    throw v10

    .restart local v0    # "alphaBitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    .restart local v2    # "createHeight":I
    .restart local v3    # "createWidth":I
    .restart local v4    # "filterPaint":Landroid/graphics/Paint;
    .restart local v5    # "hashCode":I
    .restart local v6    # "mapBitmap":Landroid/graphics/Bitmap;
    .restart local v8    # "newDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v9    # "strokeBitmap":Landroid/graphics/Bitmap;
    :catchall_1
    move-exception v10

    move-object v7, v8

    .end local v8    # "newDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .local v7, "newDrawable":Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_1
.end method

.method private static drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/16 v3, 0x3e8

    const/4 v6, 0x0

    const/4 v5, 0x0

    if-nez p0, :cond_0

    return-object v5

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-gt v2, v3, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-le v2, v3, :cond_2

    :cond_1
    return-object v5

    :cond_2
    instance-of v2, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_3

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    instance-of v2, p0, Landroid/graphics/drawable/NinePatchDrawable;

    if-nez v2, :cond_4

    instance-of v2, p0, Landroid/graphics/drawable/StateListDrawable;

    if-nez v2, :cond_4

    instance-of v2, p0, Landroid/graphics/drawable/GradientDrawable;

    if-nez v2, :cond_4

    instance-of v2, p0, Landroid/graphics/drawable/InsetDrawable;

    if-nez v2, :cond_4

    instance-of v2, p0, Landroid/graphics/drawable/LayerDrawable;

    if-nez v2, :cond_4

    instance-of v2, p0, Landroid/graphics/drawable/LevelListDrawable;

    if-nez v2, :cond_4

    instance-of v2, p0, Landroid/graphics/drawable/PaintDrawable;

    if-nez v2, :cond_4

    instance-of v2, p0, Landroid/graphics/drawable/PictureDrawable;

    if-nez v2, :cond_4

    instance-of v2, p0, Landroid/graphics/drawable/RotateDrawable;

    if-nez v2, :cond_4

    instance-of v2, p0, Landroid/graphics/drawable/ScaleDrawable;

    if-nez v2, :cond_4

    instance-of v2, p0, Landroid/graphics/drawable/ShapeDrawable;

    if-nez v2, :cond_4

    instance-of v2, p0, Landroid/graphics/drawable/ClipDrawable;

    if-eqz v2, :cond_7

    :cond_4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-gtz v2, :cond_6

    :cond_5
    return-object v5

    :cond_6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_7

    invoke-static {}, Lcom/meizu/util/StrokeDrawableUtils$StrokeLruCache;->obtainStrokeCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {p0, v6, v6, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_7
    return-object v5
.end method
