.class public Lcom/meizu/widget/OptionPopupWindow;
.super Landroid/widget/PopupWindow;
.source "OptionPopupWindow.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/OptionPopupWindow$HandleView;,
        Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;,
        Lcom/meizu/widget/OptionPopupWindow$OptionMenu;,
        Lcom/meizu/widget/OptionPopupWindow$PageInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final STATE_EMPTY:I = 0x0

.field private static final STATE_MAX:I = 0x2

.field private static final STATE_PRESSED:I = 0x1

.field private static final STATE_SETS:[[I

.field private static final SUSPENSION_POINTS:Ljava/lang/String; = "\u2025"

.field private static final TAG:Ljava/lang/String; = "OptionPopupWindow"

.field private static sTmpBitmaps:[Landroid/graphics/Bitmap;


# instance fields
.field private mActionMode:Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;

.field private mContext:Landroid/content/Context;

.field private mCurPageNum:I

.field private mDisableAlignBottom:Z

.field private mGravity:I

.field private mHandleView:Lcom/meizu/widget/OptionPopupWindow$HandleView;

.field private mLocationInWindow:[I

.field private mOptionPageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/widget/OptionPopupWindow$OptionMenu;",
            ">;>;"
        }
    .end annotation
.end field

.field private mParent:Landroid/view/View;

.field private mRectF:Landroid/graphics/RectF;

.field private mWindowRect:Landroid/graphics/Rect;

.field private mWndRect:Landroid/graphics/Rect;


# direct methods
.method static synthetic -get0()[[I
    .locals 1

    sget-object v0, Lcom/meizu/widget/OptionPopupWindow;->STATE_SETS:[[I

    return-object v0
.end method

.method static synthetic -get1(Lcom/meizu/widget/OptionPopupWindow;)Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;
    .locals 1

    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow;->mActionMode:Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;

    return-object v0
.end method

.method static synthetic -get2(Lcom/meizu/widget/OptionPopupWindow;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/meizu/widget/OptionPopupWindow;)I
    .locals 1

    iget v0, p0, Lcom/meizu/widget/OptionPopupWindow;->mCurPageNum:I

    return v0
.end method

.method static synthetic -get4(Lcom/meizu/widget/OptionPopupWindow;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow;->mOptionPageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Lcom/meizu/widget/OptionPopupWindow;Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;)Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;
    .locals 0

    iput-object p1, p0, Lcom/meizu/widget/OptionPopupWindow;->mActionMode:Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;

    return-object p1
.end method

.method static synthetic -set1(Lcom/meizu/widget/OptionPopupWindow;I)I
    .locals 0

    iput p1, p0, Lcom/meizu/widget/OptionPopupWindow;->mCurPageNum:I

    return p1
.end method

.method static synthetic -wrap0(III)[Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "count"    # I
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/meizu/widget/OptionPopupWindow;->getBitmaps(III)[Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [[I

    sput-object v0, Lcom/meizu/widget/OptionPopupWindow;->STATE_SETS:[[I

    sget-object v0, Lcom/meizu/widget/OptionPopupWindow;->STATE_SETS:[[I

    new-array v1, v4, [I

    const v2, 0x10100a9

    aput v2, v1, v3

    aput-object v1, v0, v3

    sget-object v0, Lcom/meizu/widget/OptionPopupWindow;->STATE_SETS:[[I

    new-array v1, v4, [I

    const v2, 0x10100a7

    aput v2, v1, v3

    aput-object v1, v0, v4

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x2

    const/4 v2, -0x2

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput v4, p0, Lcom/meizu/widget/OptionPopupWindow;->mGravity:I

    new-array v1, v3, [I

    iput-object v1, p0, Lcom/meizu/widget/OptionPopupWindow;->mLocationInWindow:[I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/meizu/widget/OptionPopupWindow;->mOptionPageList:Ljava/util/ArrayList;

    iput v4, p0, Lcom/meizu/widget/OptionPopupWindow;->mCurPageNum:I

    iput-object p1, p0, Lcom/meizu/widget/OptionPopupWindow;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/meizu/widget/OptionPopupWindow;->setTouchable(Z)V

    invoke-virtual {p0, v4}, Lcom/meizu/widget/OptionPopupWindow;->setClippingEnabled(Z)V

    invoke-virtual {p0, v2, v2}, Lcom/meizu/widget/OptionPopupWindow;->setWindowLayoutMode(II)V

    invoke-virtual {p0, v3}, Lcom/meizu/widget/OptionPopupWindow;->setInputMethodMode(I)V

    const/16 v1, 0x3ea

    invoke-virtual {p0, v1}, Lcom/meizu/widget/OptionPopupWindow;->setWindowLayoutType(I)V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/meizu/widget/OptionPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcom/meizu/widget/OptionPopupWindow$HandleView;

    iget-object v2, p0, Lcom/meizu/widget/OptionPopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/meizu/widget/OptionPopupWindow$HandleView;-><init>(Lcom/meizu/widget/OptionPopupWindow;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/meizu/widget/OptionPopupWindow;->mHandleView:Lcom/meizu/widget/OptionPopupWindow$HandleView;

    iget-object v1, p0, Lcom/meizu/widget/OptionPopupWindow;->mHandleView:Lcom/meizu/widget/OptionPopupWindow$HandleView;

    invoke-virtual {p0, v1}, Lcom/meizu/widget/OptionPopupWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0, p0}, Lcom/meizu/widget/OptionPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/meizu/widget/OptionPopupWindow;->mWindowRect:Landroid/graphics/Rect;

    return-void
.end method

.method private static getBitmaps(III)[Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "count"    # I
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    sget-object v2, Lcom/meizu/widget/OptionPopupWindow;->sTmpBitmaps:[Landroid/graphics/Bitmap;

    if-nez v2, :cond_4

    new-array v2, p0, [Landroid/graphics/Bitmap;

    sput-object v2, Lcom/meizu/widget/OptionPopupWindow;->sTmpBitmaps:[Landroid/graphics/Bitmap;

    :cond_0
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p0, :cond_6

    sget-object v2, Lcom/meizu/widget/OptionPopupWindow;->sTmpBitmaps:[Landroid/graphics/Bitmap;

    aget-object v0, v2, v1

    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ge v2, p1, :cond_5

    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_3
    sget-object v2, Lcom/meizu/widget/OptionPopupWindow;->sTmpBitmaps:[Landroid/graphics/Bitmap;

    aput-object v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "i":I
    :cond_4
    sget-object v2, Lcom/meizu/widget/OptionPopupWindow;->sTmpBitmaps:[Landroid/graphics/Bitmap;

    array-length v2, v2

    if-ge v2, p0, :cond_0

    sget-object v2, Lcom/meizu/widget/OptionPopupWindow;->sTmpBitmaps:[Landroid/graphics/Bitmap;

    invoke-static {v2, p0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/graphics/Bitmap;

    sput-object v2, Lcom/meizu/widget/OptionPopupWindow;->sTmpBitmaps:[Landroid/graphics/Bitmap;

    goto :goto_0

    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    .restart local v1    # "i":I
    :cond_5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ge v2, p2, :cond_3

    goto :goto_2

    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_6
    sget-object v2, Lcom/meizu/widget/OptionPopupWindow;->sTmpBitmaps:[Landroid/graphics/Bitmap;

    return-object v2
.end method


# virtual methods
.method public disableAlignBottom(Z)V
    .locals 0
    .param p1, "disableAlignBottom"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/meizu/widget/OptionPopupWindow;->mDisableAlignBottom:Z

    return-void
.end method

.method public onDismiss()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/widget/OptionPopupWindow;->mCurPageNum:I

    return-void
.end method

.method public setClickable(Z)V
    .locals 1
    .param p1, "clickable"    # Z

    .prologue
    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow;->mHandleView:Lcom/meizu/widget/OptionPopupWindow$HandleView;

    iput-boolean p1, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->mClickable:Z

    return-void
.end method

.method public setGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    iput p1, p0, Lcom/meizu/widget/OptionPopupWindow;->mGravity:I

    return-void
.end method

.method public setItemMaxWidth(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow;->mHandleView:Lcom/meizu/widget/OptionPopupWindow$HandleView;

    iput p1, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->USER_ITEM_WIDTH_MAX:I

    return-void
.end method

.method public setItemMinWidth(I)V
    .locals 1
    .param p1, "min"    # I

    .prologue
    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow;->mHandleView:Lcom/meizu/widget/OptionPopupWindow$HandleView;

    iput p1, v0, Lcom/meizu/widget/OptionPopupWindow$HandleView;->USER_ITEM_WIDTH_MIN:I

    return-void
.end method

.method public showOptions(Landroid/view/View;Landroid/graphics/RectF;)Z
    .locals 16
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "selRect"    # Landroid/graphics/RectF;

    .prologue
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/OptionPopupWindow;->mParent:Landroid/view/View;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/OptionPopupWindow;->mActionMode:Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;

    if-nez v13, :cond_1

    :cond_0
    const/4 v13, 0x0

    return v13

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/OptionPopupWindow;->mWndRect:Landroid/graphics/Rect;

    if-nez v13, :cond_2

    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/meizu/widget/OptionPopupWindow;->mWndRect:Landroid/graphics/Rect;

    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/widget/OptionPopupWindow;->mWndRect:Landroid/graphics/Rect;

    .local v12, "wndRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/OptionPopupWindow;->mParent:Landroid/view/View;

    invoke-virtual {v13, v12}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v13, v12, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/widget/OptionPopupWindow;->mWindowRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    if-lt v13, v14, :cond_3

    iget v13, v12, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/widget/OptionPopupWindow;->mWindowRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    if-ge v13, v14, :cond_11

    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/meizu/widget/OptionPopupWindow;->mWindowRect:Landroid/graphics/Rect;

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/OptionPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .local v4, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v9, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .local v9, "screenHeight":I
    iget v13, v12, Landroid/graphics/Rect;->top:I

    if-gez v13, :cond_5

    const/4 v13, 0x0

    iput v13, v12, Landroid/graphics/Rect;->top:I

    :cond_5
    iget v13, v12, Landroid/graphics/Rect;->bottom:I

    if-le v13, v9, :cond_6

    iput v9, v12, Landroid/graphics/Rect;->bottom:I

    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/OptionPopupWindow;->mParent:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/widget/OptionPopupWindow;->mLocationInWindow:[I

    invoke-virtual {v13, v14}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance v13, Landroid/graphics/RectF;

    move-object/from16 v0, p2

    invoke-direct {v13, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/meizu/widget/OptionPopupWindow;->mRectF:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/OptionPopupWindow;->mLocationInWindow:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/widget/OptionPopupWindow;->mLocationInWindow:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    int-to-float v14, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/RectF;->offset(FF)V

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/RectF;->top:F

    iget v14, v12, Landroid/graphics/Rect;->top:I

    int-to-float v14, v14

    cmpg-float v13, v13, v14

    if-gez v13, :cond_7

    iget v13, v12, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    move-object/from16 v0, p2

    iput v13, v0, Landroid/graphics/RectF;->top:F

    :cond_7
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/RectF;->bottom:F

    iget v14, v12, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v14

    cmpl-float v13, v13, v14

    if-lez v13, :cond_8

    iget v13, v12, Landroid/graphics/Rect;->bottom:I

    int-to-float v13, v13

    move-object/from16 v0, p2

    iput v13, v0, Landroid/graphics/RectF;->bottom:F

    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/OptionPopupWindow;->mHandleView:Lcom/meizu/widget/OptionPopupWindow$HandleView;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->onMeasure(II)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/OptionPopupWindow;->mHandleView:Lcom/meizu/widget/OptionPopupWindow$HandleView;

    invoke-virtual {v13}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->getContentWidth()I

    move-result v11

    .local v11, "width":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/OptionPopupWindow;->mHandleView:Lcom/meizu/widget/OptionPopupWindow$HandleView;

    invoke-virtual {v13}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->getMeasuredHeight()I

    move-result v6

    .local v6, "height":I
    const/4 v5, 0x0

    .local v5, "gravity":I
    const v8, 0x7f7fffff    # Float.MAX_VALUE

    .local v8, "nearestDis":F
    iget v13, v12, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v6

    int-to-float v13, v13

    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v13, v13, v14

    if-gtz v13, :cond_9

    invoke-virtual {v12}, Landroid/graphics/Rect;->centerY()I

    move-result v13

    int-to-float v13, v13

    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/RectF;->top:F

    shr-int/lit8 v15, v6, 0x1

    int-to-float v15, v15

    sub-float/2addr v14, v15

    sub-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const/16 v5, 0x30

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/meizu/widget/OptionPopupWindow;->mDisableAlignBottom:Z

    if-nez v13, :cond_a

    iget v13, v12, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v6

    int-to-float v13, v13

    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v13, v13, v14

    if-lez v13, :cond_a

    invoke-virtual {v12}, Landroid/graphics/Rect;->centerY()I

    move-result v13

    int-to-float v13, v13

    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/RectF;->bottom:F

    shr-int/lit8 v15, v6, 0x1

    int-to-float v15, v15

    add-float/2addr v14, v15

    sub-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .local v3, "dis":F
    cmpg-float v13, v3, v8

    if-gez v13, :cond_a

    move v8, v3

    const/16 v5, 0x50

    .end local v3    # "dis":F
    :cond_a
    if-nez v5, :cond_b

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/RectF;->top:F

    iget v14, v12, Landroid/graphics/Rect;->top:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    iget v14, v12, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v14

    move-object/from16 v0, p2

    iget v15, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v14, v15

    cmpl-float v13, v13, v14

    if-lez v13, :cond_12

    const/16 v5, 0x30

    :cond_b
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/widget/OptionPopupWindow;->mGravity:I

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/widget/OptionPopupWindow;->mGravity:I

    :cond_c
    const/4 v10, 0x0

    .local v10, "top":F
    const/16 v13, 0x30

    if-ne v5, v13, :cond_13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/OptionPopupWindow;->mHandleView:Lcom/meizu/widget/OptionPopupWindow$HandleView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->setArrowUp(Z)V

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/RectF;->top:F

    int-to-float v14, v6

    sub-float v10, v13, v14

    :goto_2
    iget v13, v12, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    cmpg-float v13, v10, v13

    if-gez v13, :cond_d

    iget v13, v12, Landroid/graphics/Rect;->top:I

    int-to-float v10, v13

    :cond_d
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->centerX()F

    move-result v13

    float-to-int v2, v13

    .local v2, "arrowpos":I
    const/4 v1, 0x0

    .local v1, "arrowOffsetX":I
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    if-gt v2, v13, :cond_16

    div-int/lit8 v13, v11, 0x2

    if-ge v2, v13, :cond_15

    move v1, v2

    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/OptionPopupWindow;->mHandleView:Lcom/meizu/widget/OptionPopupWindow$HandleView;

    invoke-virtual {v13, v1, v11}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->setArrowOffsetX(II)I

    move-result v1

    sub-int v13, v2, v1

    add-int/lit8 v7, v13, 0x0

    .local v7, "left":I
    if-gez v7, :cond_e

    const/4 v7, 0x0

    :cond_e
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v13

    sub-int/2addr v13, v11

    if-le v7, v13, :cond_f

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v13

    sub-int v7, v13, v11

    :cond_f
    int-to-float v13, v6

    add-float/2addr v13, v10

    iget v14, v12, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v14

    cmpl-float v13, v13, v14

    if-lez v13, :cond_10

    iget v13, v12, Landroid/graphics/Rect;->top:I

    int-to-float v10, v13

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/widget/OptionPopupWindow;->isShowing()Z

    move-result v13

    if-eqz v13, :cond_18

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/meizu/widget/OptionPopupWindow;->setWindowLayoutMode(II)V

    float-to-int v13, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v13, v11, v6}, Lcom/meizu/widget/OptionPopupWindow;->update(IIII)V

    :goto_4
    const/4 v13, 0x1

    return v13

    .end local v1    # "arrowOffsetX":I
    .end local v2    # "arrowpos":I
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v5    # "gravity":I
    .end local v6    # "height":I
    .end local v7    # "left":I
    .end local v8    # "nearestDis":F
    .end local v9    # "screenHeight":I
    .end local v10    # "top":F
    .end local v11    # "width":I
    :cond_11
    iget v13, v12, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/widget/OptionPopupWindow;->mWindowRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    if-gt v13, v14, :cond_3

    iget v13, v12, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/widget/OptionPopupWindow;->mWindowRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    if-le v13, v14, :cond_4

    goto/16 :goto_0

    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v5    # "gravity":I
    .restart local v6    # "height":I
    .restart local v8    # "nearestDis":F
    .restart local v9    # "screenHeight":I
    .restart local v11    # "width":I
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/meizu/widget/OptionPopupWindow;->mDisableAlignBottom:Z

    if-nez v13, :cond_b

    const/16 v5, 0x50

    goto/16 :goto_1

    .restart local v10    # "top":F
    :cond_13
    const/16 v13, 0x50

    if-ne v5, v13, :cond_14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/OptionPopupWindow;->mHandleView:Lcom/meizu/widget/OptionPopupWindow$HandleView;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->setArrowUp(Z)V

    move-object/from16 v0, p2

    iget v10, v0, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_2

    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/OptionPopupWindow;->mHandleView:Lcom/meizu/widget/OptionPopupWindow$HandleView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->setArrowUp(Z)V

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/RectF;->top:F

    int-to-float v14, v6

    sub-float v10, v13, v14

    goto/16 :goto_2

    .restart local v1    # "arrowOffsetX":I
    .restart local v2    # "arrowpos":I
    :cond_15
    div-int/lit8 v1, v11, 0x2

    goto/16 :goto_3

    :cond_16
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v13

    sub-int/2addr v13, v2

    div-int/lit8 v14, v11, 0x2

    if-ge v13, v14, :cond_17

    div-int/lit8 v13, v11, 0x2

    div-int/lit8 v14, v11, 0x2

    add-int/2addr v13, v14

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v14

    sub-int/2addr v14, v2

    sub-int v1, v13, v14

    goto/16 :goto_3

    :cond_17
    div-int/lit8 v1, v11, 0x2

    goto/16 :goto_3

    .restart local v7    # "left":I
    :cond_18
    const/4 v13, -0x2

    const/4 v14, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/meizu/widget/OptionPopupWindow;->setWindowLayoutMode(II)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/meizu/widget/OptionPopupWindow;->mParent:Landroid/view/View;

    float-to-int v14, v10

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v15, v7, v14}, Lcom/meizu/widget/OptionPopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_4
.end method

.method public startPopupActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 3
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "cb"    # Landroid/view/ActionMode$Callback;

    .prologue
    const/4 v2, 0x0

    iput-object p1, p0, Lcom/meizu/widget/OptionPopupWindow;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/meizu/widget/OptionPopupWindow;->mActionMode:Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/widget/OptionPopupWindow;->mActionMode:Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;

    invoke-virtual {v1}, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->finish()V

    :cond_0
    new-instance v0, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;

    invoke-direct {v0, p0, p2}, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;-><init>(Lcom/meizu/widget/OptionPopupWindow;Landroid/view/ActionMode$Callback;)V

    .local v0, "mode":Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;
    invoke-virtual {v0}, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->dispatchOnCreate()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->invalidate()V

    iput-object v0, p0, Lcom/meizu/widget/OptionPopupWindow;->mActionMode:Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;

    iget-object v1, p0, Lcom/meizu/widget/OptionPopupWindow;->mOptionPageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/meizu/widget/OptionPopupWindow;->mCurPageNum:I

    return-object v0

    :cond_1
    return-object v2
.end method

.method public updateWindow()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow;->mParent:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow;->mRectF:Landroid/graphics/RectF;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/meizu/widget/OptionPopupWindow;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v1}, Lcom/meizu/widget/OptionPopupWindow;->showOptions(Landroid/view/View;Landroid/graphics/RectF;)Z

    return-void
.end method
