.class public Lcom/meizu/transition/PositionScaleTransition;
.super Landroid/app/CustomTransition;
.source "PositionScaleTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/transition/PositionScaleTransition$ScaleXAnimation;,
        Lcom/meizu/transition/PositionScaleTransition$ScaleYAnimation;
    }
.end annotation


# static fields
.field private static final KEY_ANIM_SCALE_TYPE:Ljava/lang/String; = "PositionScaleTransition.animScaleType"


# instance fields
.field private final ALPHA_DURATION:I

.field private final LAUNCHER_SCALE:F

.field private final OPEN_APP_ALPHA_UP_DURATION:J

.field private final OPEN_APP_LAUNCHER_ALPHA_DURATION:J

.field private final OPEN_APP_THUMB_ALPHA_DURATION:J

.field private final SCALE_DURATION:J

.field private final THUMBNAIL_TRANSITION_ENTER_SCALE_DOWN:I

.field private final THUMBNAIL_TRANSITION_ENTER_SCALE_UP:I

.field private final THUMBNAIL_TRANSITION_EXIT_SCALE_DOWN:I

.field private final THUMBNAIL_TRANSITION_EXIT_SCALE_UP:I

.field private final TRANSIT_WALLPAPER_INTRA_OPEN:I

.field private mScaleUp:Z

.field private mStartX:I

.field private mStartY:I

.field private mThumbHeight:F

.field private mThumbWidth:F

.field private final sAppScaleInterpolator:Landroid/view/animation/Interpolator;

.field private final sCloseAppAlphaInterpolator:Landroid/view/animation/Interpolator;

.field private final sOpenAppAlphaInterpolator:Landroid/view/animation/Interpolator;

.field private final sOpenThumbAlphaInterpolator:Landroid/view/animation/Interpolator;

.field private final sScaleInterpolator:Landroid/view/animation/Interpolator;

.field private final sScaleXDownInterpolator:Landroid/view/animation/Interpolator;

.field private final sScaleYDownInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const v6, 0x3f4ccccd    # 0.8f

    const/4 v5, 0x0

    const v2, 0x3e99999a    # 0.3f

    const v4, 0x3e4ccccd    # 0.2f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p0}, Landroid/app/CustomTransition;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/transition/PositionScaleTransition;->THUMBNAIL_TRANSITION_ENTER_SCALE_UP:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/transition/PositionScaleTransition;->THUMBNAIL_TRANSITION_EXIT_SCALE_UP:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/meizu/transition/PositionScaleTransition;->THUMBNAIL_TRANSITION_ENTER_SCALE_DOWN:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/meizu/transition/PositionScaleTransition;->THUMBNAIL_TRANSITION_EXIT_SCALE_DOWN:I

    const/16 v0, 0xe

    iput v0, p0, Lcom/meizu/transition/PositionScaleTransition;->TRANSIT_WALLPAPER_INTRA_OPEN:I

    const-wide/16 v0, 0x190

    iput-wide v0, p0, Lcom/meizu/transition/PositionScaleTransition;->SCALE_DURATION:J

    const/16 v0, 0x96

    iput v0, p0, Lcom/meizu/transition/PositionScaleTransition;->ALPHA_DURATION:I

    const/high16 v0, 0x40200000    # 2.5f

    iput v0, p0, Lcom/meizu/transition/PositionScaleTransition;->LAUNCHER_SCALE:F

    const-wide/16 v0, 0x50

    iput-wide v0, p0, Lcom/meizu/transition/PositionScaleTransition;->OPEN_APP_ALPHA_UP_DURATION:J

    const-wide/16 v0, 0x60

    iput-wide v0, p0, Lcom/meizu/transition/PositionScaleTransition;->OPEN_APP_THUMB_ALPHA_DURATION:J

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/meizu/transition/PositionScaleTransition;->OPEN_APP_LAUNCHER_ALPHA_DURATION:J

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f266666    # 0.65f

    invoke-direct {v0, v2, v1, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/transition/PositionScaleTransition;->sScaleInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v6, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/transition/PositionScaleTransition;->sAppScaleInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f28f5c3    # 0.66f

    invoke-direct {v0, v6, v5, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/transition/PositionScaleTransition;->sOpenAppAlphaInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f333333    # 0.7f

    invoke-direct {v0, v2, v5, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/transition/PositionScaleTransition;->sOpenThumbAlphaInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v5, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/transition/PositionScaleTransition;->sCloseAppAlphaInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e19999a    # 0.15f

    invoke-direct {v0, v1, v6, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/transition/PositionScaleTransition;->sScaleXDownInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e19999a    # 0.15f

    const v2, 0x3f733333    # 0.95f

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/transition/PositionScaleTransition;->sScaleYDownInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private static computePivot(IF)F
    .locals 3
    .param p0, "startPos"    # I
    .param p1, "finalScale"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, p1, v1

    .local v0, "denom":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x38d1b717    # 1.0E-4f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    int-to-float v1, p0

    return v1

    :cond_0
    neg-int v1, p0

    int-to-float v1, v1

    div-float/2addr v1, v0

    return v1
.end method

.method private getThumbnailTransitionState(Z)I
    .locals 1
    .param p1, "enter"    # Z

    .prologue
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/meizu/transition/PositionScaleTransition;->mScaleUp:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/meizu/transition/PositionScaleTransition;->mScaleUp:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x3

    return v0
.end method

.method public static makeBundle(Landroid/graphics/Bitmap;ZII)Landroid/os/Bundle;
    .locals 3
    .param p0, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p1, "scaleUp"    # Z
    .param p2, "startX"    # I
    .param p3, "startY"    # I

    .prologue
    new-instance v1, Landroid/app/CustomTransition$Builder;

    const-string v2, "com.meizu.transition.PositionScaleTransition"

    invoke-direct {v1, v2}, Landroid/app/CustomTransition$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p2, p3}, Landroid/app/CustomTransition$Builder;->setThumbnail(Landroid/graphics/Bitmap;II)Landroid/app/CustomTransition$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/CustomTransition$Builder;->pack()Landroid/os/Bundle;

    move-result-object v0

    .local v0, "options":Landroid/os/Bundle;
    const-string v1, "PositionScaleTransition.animScaleType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method private static prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .locals 3
    .param p0, "a"    # Landroid/view/animation/Animation;
    .param p1, "appWidth"    # I
    .param p2, "appHeight"    # I
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p3, p4}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {p0, p5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p0, p1, p2, p1, p2}, Landroid/view/animation/Animation;->initialize(IIII)V

    return-object p0
.end method


# virtual methods
.method public animateWallpaper()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public createAnimation(Landroid/view/DisplayInfo;IZI)Landroid/view/animation/Animation;
    .locals 31
    .param p1, "displayInfo"    # Landroid/view/DisplayInfo;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "orientation"    # I

    .prologue
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/DisplayInfo;->appWidth:I

    move/from16 v23, v0

    .local v23, "appWidth":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/DisplayInfo;->appHeight:I

    move/from16 v22, v0

    .local v22, "appHeight":I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/meizu/transition/PositionScaleTransition;->mStartX:I

    div-int/lit8 v10, v23, 0x2

    if-ge v8, v10, :cond_0

    const/4 v8, 0x1

    :goto_0
    int-to-float v0, v8

    move/from16 v29, v0

    .local v29, "xDirection":F
    move-object/from16 v0, p0

    iget v8, v0, Lcom/meizu/transition/PositionScaleTransition;->mStartY:I

    div-int/lit8 v10, v22, 0x2

    if-ge v8, v10, :cond_1

    const/4 v8, 0x1

    :goto_1
    int-to-float v0, v8

    move/from16 v30, v0

    .local v30, "yDirection":F
    move-object/from16 v0, p0

    iget v8, v0, Lcom/meizu/transition/PositionScaleTransition;->mStartX:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/meizu/transition/PositionScaleTransition;->mThumbWidth:F

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v10, v10, v16

    invoke-static {v8, v10}, Lcom/meizu/transition/PositionScaleTransition;->computePivot(IF)F

    move-result v11

    .local v11, "launcherPivotX":F
    move-object/from16 v0, p0

    iget v8, v0, Lcom/meizu/transition/PositionScaleTransition;->mStartY:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/meizu/transition/PositionScaleTransition;->mThumbHeight:F

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v10, v10, v16

    invoke-static {v8, v10}, Lcom/meizu/transition/PositionScaleTransition;->computePivot(IF)F

    move-result v12

    .local v12, "launcherPivotY":F
    move-object/from16 v0, p0

    iget v8, v0, Lcom/meizu/transition/PositionScaleTransition;->mThumbWidth:F

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v8, v10

    mul-float v27, v8, v29

    .local v27, "translateX":F
    move-object/from16 v0, p0

    iget v8, v0, Lcom/meizu/transition/PositionScaleTransition;->mThumbHeight:F

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v8, v10

    mul-float v28, v8, v30

    .local v28, "translateY":F
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/meizu/transition/PositionScaleTransition;->getThumbnailTransitionState(Z)I

    move-result v25

    .local v25, "thumbTransitState":I
    packed-switch v25, :pswitch_data_0

    new-instance v8, Ljava/lang/RuntimeException;

    const-string v10, "Invalid thumbnail transition state"

    invoke-direct {v8, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .end local v11    # "launcherPivotX":F
    .end local v12    # "launcherPivotY":F
    .end local v25    # "thumbTransitState":I
    .end local v27    # "translateX":F
    .end local v28    # "translateY":F
    .end local v29    # "xDirection":F
    .end local v30    # "yDirection":F
    :cond_0
    const/4 v8, -0x1

    goto :goto_0

    .restart local v29    # "xDirection":F
    :cond_1
    const/4 v8, -0x1

    goto :goto_1

    .restart local v11    # "launcherPivotX":F
    .restart local v12    # "launcherPivotY":F
    .restart local v25    # "thumbTransitState":I
    .restart local v27    # "translateX":F
    .restart local v28    # "translateY":F
    .restart local v30    # "yDirection":F
    :pswitch_0
    move-object/from16 v0, p0

    iget v8, v0, Lcom/meizu/transition/PositionScaleTransition;->mThumbWidth:F

    move/from16 v0, v23

    int-to-float v10, v0

    div-float v7, v8, v10

    .local v7, "scaleW":F
    move-object/from16 v0, p0

    iget v8, v0, Lcom/meizu/transition/PositionScaleTransition;->mThumbHeight:F

    move/from16 v0, v22

    int-to-float v10, v0

    div-float v9, v8, v10

    .local v9, "scaleH":F
    new-instance v24, Landroid/view/animation/AnimationSet;

    const/4 v8, 0x0

    move-object/from16 v0, v24

    invoke-direct {v0, v8}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .local v24, "set":Landroid/view/animation/AnimationSet;
    new-instance v6, Landroid/view/animation/ScaleAnimation;

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct/range {v6 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .local v6, "scale":Landroid/view/animation/Animation;
    const-wide/16 v16, 0x190

    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/meizu/transition/PositionScaleTransition;->sScaleInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v21, Landroid/view/animation/AlphaAnimation;

    const/4 v8, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    move-object/from16 v0, v21

    invoke-direct {v0, v8, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .local v21, "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/meizu/transition/PositionScaleTransition;->sOpenAppAlphaInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v16, 0x50

    move-object/from16 v0, v21

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v8, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    move-object/from16 v0, v24

    move/from16 v1, v23

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    const/4 v8, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    move-object/from16 v15, v24

    .local v15, "a":Landroid/view/animation/Animation;
    return-object v15

    .end local v6    # "scale":Landroid/view/animation/Animation;
    .end local v7    # "scaleW":F
    .end local v9    # "scaleH":F
    .end local v15    # "a":Landroid/view/animation/Animation;
    .end local v21    # "alpha":Landroid/view/animation/Animation;
    .end local v24    # "set":Landroid/view/animation/AnimationSet;
    :pswitch_1
    const/16 v8, 0xe

    move/from16 v0, p2

    if-ne v0, v8, :cond_2

    new-instance v15, Landroid/view/animation/AlphaAnimation;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    invoke-direct {v15, v8, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v15    # "a":Landroid/view/animation/Animation;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/transition/PositionScaleTransition;->sAppScaleInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v20, v0

    const-wide/16 v18, 0x190

    move/from16 v16, v23

    move/from16 v17, v22

    invoke-static/range {v15 .. v20}, Lcom/meizu/transition/PositionScaleTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v8

    return-object v8

    .end local v15    # "a":Landroid/view/animation/Animation;
    :cond_2
    new-instance v24, Landroid/view/animation/AnimationSet;

    const/4 v8, 0x0

    move-object/from16 v0, v24

    invoke-direct {v0, v8}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .restart local v24    # "set":Landroid/view/animation/AnimationSet;
    new-instance v6, Landroid/view/animation/ScaleAnimation;

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v15, 0x40200000    # 2.5f

    const/high16 v17, 0x40200000    # 2.5f

    move-object v13, v6

    move/from16 v18, v11

    move/from16 v19, v12

    invoke-direct/range {v13 .. v19}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .restart local v6    # "scale":Landroid/view/animation/Animation;
    const-wide/16 v16, 0x190

    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/meizu/transition/PositionScaleTransition;->sScaleInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v21, Landroid/view/animation/AlphaAnimation;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v8, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v21    # "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/meizu/transition/PositionScaleTransition;->sOpenThumbAlphaInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v16, 0x12c

    move-object/from16 v0, v21

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v26, Landroid/view/animation/TranslateAnimation;

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v8, v1, v10, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .local v26, "translate":Landroid/view/animation/Animation;
    const-wide/16 v16, 0x190

    move-object/from16 v0, v26

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/meizu/transition/PositionScaleTransition;->sScaleInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v8, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    move-object/from16 v0, v24

    move/from16 v1, v23

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    move-object/from16 v15, v24

    .restart local v15    # "a":Landroid/view/animation/Animation;
    return-object v15

    .end local v6    # "scale":Landroid/view/animation/Animation;
    .end local v15    # "a":Landroid/view/animation/Animation;
    .end local v21    # "alpha":Landroid/view/animation/Animation;
    .end local v24    # "set":Landroid/view/animation/AnimationSet;
    .end local v26    # "translate":Landroid/view/animation/Animation;
    :pswitch_2
    new-instance v6, Landroid/view/animation/ScaleAnimation;

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v14, 0x40200000    # 2.5f

    const/high16 v16, 0x40200000    # 2.5f

    move-object v13, v6

    move/from16 v18, v11

    move/from16 v19, v12

    invoke-direct/range {v13 .. v19}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .restart local v6    # "scale":Landroid/view/animation/Animation;
    new-instance v21, Landroid/view/animation/AlphaAnimation;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v10, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v21    # "alpha":Landroid/view/animation/Animation;
    new-instance v26, Landroid/view/animation/TranslateAnimation;

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v8, v2, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v26    # "translate":Landroid/view/animation/Animation;
    new-instance v24, Landroid/view/animation/AnimationSet;

    const/4 v8, 0x1

    move-object/from16 v0, v24

    invoke-direct {v0, v8}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .restart local v24    # "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v15, v24

    .restart local v15    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_2

    .end local v6    # "scale":Landroid/view/animation/Animation;
    .end local v15    # "a":Landroid/view/animation/Animation;
    .end local v21    # "alpha":Landroid/view/animation/Animation;
    .end local v24    # "set":Landroid/view/animation/AnimationSet;
    .end local v26    # "translate":Landroid/view/animation/Animation;
    :pswitch_3
    move-object/from16 v0, p0

    iget v8, v0, Lcom/meizu/transition/PositionScaleTransition;->mThumbWidth:F

    move/from16 v0, v23

    int-to-float v10, v0

    div-float v7, v8, v10

    .restart local v7    # "scaleW":F
    move-object/from16 v0, p0

    iget v8, v0, Lcom/meizu/transition/PositionScaleTransition;->mThumbHeight:F

    move/from16 v0, v22

    int-to-float v10, v0

    div-float v9, v8, v10

    .restart local v9    # "scaleH":F
    new-instance v13, Lcom/meizu/transition/PositionScaleTransition$ScaleXAnimation;

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    move v15, v7

    move/from16 v18, v11

    invoke-direct/range {v13 .. v19}, Lcom/meizu/transition/PositionScaleTransition$ScaleXAnimation;-><init>(FFFFFF)V

    .local v13, "scaleX":Landroid/view/animation/Animation;
    const-wide/16 v16, 0x190

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/meizu/transition/PositionScaleTransition;->sScaleXDownInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v13, v8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v14, Lcom/meizu/transition/PositionScaleTransition$ScaleYAnimation;

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    move/from16 v18, v9

    move/from16 v20, v12

    invoke-direct/range {v14 .. v20}, Lcom/meizu/transition/PositionScaleTransition$ScaleYAnimation;-><init>(FFFFFF)V

    .local v14, "scaleY":Landroid/view/animation/Animation;
    const-wide/16 v16, 0x190

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/meizu/transition/PositionScaleTransition;->sScaleYDownInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v14, v8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v21, Landroid/view/animation/AlphaAnimation;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v8, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v21    # "alpha":Landroid/view/animation/Animation;
    const-wide/16 v16, 0x96

    move-object/from16 v0, v21

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/meizu/transition/PositionScaleTransition;->sCloseAppAlphaInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v24, Landroid/view/animation/AnimationSet;

    const/4 v8, 0x0

    move-object/from16 v0, v24

    invoke-direct {v0, v8}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .restart local v24    # "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v8, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    const/4 v8, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    move-object/from16 v0, v24

    move/from16 v1, v23

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    move-object/from16 v15, v24

    .restart local v15    # "a":Landroid/view/animation/Animation;
    return-object v15

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public createThumbnailAnimation(Landroid/view/DisplayInfo;I)Landroid/view/animation/Animation;
    .locals 27
    .param p1, "displayInfo"    # Landroid/view/DisplayInfo;
    .param p2, "transit"    # I

    .prologue
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/DisplayInfo;->appWidth:I

    move/from16 v23, v0

    .local v23, "appWidth":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/DisplayInfo;->appHeight:I

    move/from16 v22, v0

    .local v22, "appHeight":I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/meizu/transition/PositionScaleTransition;->mThumbWidth:F

    move/from16 v0, v23

    int-to-float v8, v0

    div-float v25, v7, v8

    .local v25, "scaleW":F
    move-object/from16 v0, p0

    iget v7, v0, Lcom/meizu/transition/PositionScaleTransition;->mThumbHeight:F

    move/from16 v0, v22

    int-to-float v8, v0

    div-float v24, v7, v8

    .local v24, "scaleH":F
    move-object/from16 v0, p0

    iget v7, v0, Lcom/meizu/transition/PositionScaleTransition;->mStartX:I

    move/from16 v0, v25

    invoke-static {v7, v0}, Lcom/meizu/transition/PositionScaleTransition;->computePivot(IF)F

    move-result v11

    .local v11, "launcherPivotX":F
    move-object/from16 v0, p0

    iget v7, v0, Lcom/meizu/transition/PositionScaleTransition;->mStartY:I

    move/from16 v0, v24

    invoke-static {v7, v0}, Lcom/meizu/transition/PositionScaleTransition;->computePivot(IF)F

    move-result v12

    .local v12, "launcherPivotY":F
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/meizu/transition/PositionScaleTransition;->mScaleUp:Z

    if-eqz v7, :cond_0

    new-instance v6, Landroid/view/animation/ScaleAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    div-float v8, v8, v25

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    div-float v10, v10, v24

    invoke-direct/range {v6 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .local v6, "scale":Landroid/view/animation/Animation;
    const-wide/16 v8, 0x190

    invoke-virtual {v6, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/meizu/transition/PositionScaleTransition;->sScaleInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v21, Landroid/view/animation/AlphaAnimation;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v7, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .local v21, "alpha":Landroid/view/animation/Animation;
    const-wide/16 v8, 0x60

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/meizu/transition/PositionScaleTransition;->sOpenThumbAlphaInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v26, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    move-object/from16 v0, v26

    invoke-direct {v0, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .local v26, "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v7, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    move-object/from16 v0, v26

    move/from16 v1, v23

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    return-object v26

    .end local v6    # "scale":Landroid/view/animation/Animation;
    .end local v21    # "alpha":Landroid/view/animation/Animation;
    .end local v26    # "set":Landroid/view/animation/AnimationSet;
    :cond_0
    new-instance v13, Lcom/meizu/transition/PositionScaleTransition$ScaleXAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    div-float v14, v7, v25

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    move/from16 v18, v11

    invoke-direct/range {v13 .. v19}, Lcom/meizu/transition/PositionScaleTransition$ScaleXAnimation;-><init>(FFFFFF)V

    .local v13, "scaleX":Landroid/view/animation/Animation;
    const-wide/16 v8, 0x190

    invoke-virtual {v13, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/meizu/transition/PositionScaleTransition;->sScaleXDownInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v13, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v14, Lcom/meizu/transition/PositionScaleTransition$ScaleYAnimation;

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    div-float v17, v7, v24

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    move/from16 v20, v12

    invoke-direct/range {v14 .. v20}, Lcom/meizu/transition/PositionScaleTransition$ScaleYAnimation;-><init>(FFFFFF)V

    .local v14, "scaleY":Landroid/view/animation/Animation;
    const-wide/16 v8, 0x190

    invoke-virtual {v14, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/meizu/transition/PositionScaleTransition;->sScaleYDownInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v14, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v26, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    move-object/from16 v0, v26

    invoke-direct {v0, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .restart local v26    # "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v7, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    move-object/from16 v0, v26

    move/from16 v1, v23

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    return-object v26
.end method

.method protected init(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    if-eqz p1, :cond_0

    const-string v4, "PositionScaleTransition.animScaleType"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/meizu/transition/PositionScaleTransition;->mScaleUp:Z

    invoke-virtual {p0}, Lcom/meizu/transition/PositionScaleTransition;->getStartingX()I

    move-result v4

    iput v4, p0, Lcom/meizu/transition/PositionScaleTransition;->mStartX:I

    invoke-virtual {p0}, Lcom/meizu/transition/PositionScaleTransition;->getStartingY()I

    move-result v4

    iput v4, p0, Lcom/meizu/transition/PositionScaleTransition;->mStartY:I

    invoke-virtual {p0}, Lcom/meizu/transition/PositionScaleTransition;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v2

    .local v2, "thumbnail":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .local v1, "thumbWidthI":I
    if-lez v1, :cond_1

    .end local v1    # "thumbWidthI":I
    :goto_0
    int-to-float v4, v1

    iput v4, p0, Lcom/meizu/transition/PositionScaleTransition;->mThumbWidth:F

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .local v0, "thumbHeightI":I
    if-lez v0, :cond_2

    .end local v0    # "thumbHeightI":I
    :goto_1
    int-to-float v3, v0

    iput v3, p0, Lcom/meizu/transition/PositionScaleTransition;->mThumbHeight:F

    .end local v2    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_0
    return-void

    .restart local v1    # "thumbWidthI":I
    .restart local v2    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_1
    move v1, v3

    goto :goto_0

    .end local v1    # "thumbWidthI":I
    .restart local v0    # "thumbHeightI":I
    :cond_2
    move v0, v3

    goto :goto_1
.end method

.method protected isPersisted()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method
