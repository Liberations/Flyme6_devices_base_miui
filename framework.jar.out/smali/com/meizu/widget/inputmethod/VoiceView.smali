.class public Lcom/meizu/widget/inputmethod/VoiceView;
.super Lcom/meizu/widget/inputmethod/CoverView;
.source "VoiceView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/inputmethod/VoiceView$CheckForLongPress;
    }
.end annotation


# static fields
.field public static final ACTION_AMP_REFRESH:Ljava/lang/String; = "action_amp_refresh"

.field public static final ACTION_BEGIN_RECORD:Ljava/lang/String; = "action_begin_record"

.field public static final ACTION_CANCEL_RECORD:Ljava/lang/String; = "action_cancel_record"

.field public static final ACTION_PAUSE_RECORD:Ljava/lang/String; = "action_pause_record"

.field public static final ACTION_RESUME_RECORD:Ljava/lang/String; = "action_resume_record"

.field public static final ACTION_STOP_RECORD:Ljava/lang/String; = "action_stop_record"

.field private static final AMP_COLOR:I = 0x5000000

.field private static final AMP_INNER_EDGE_COLOR:I = 0x17000000

.field private static final AMP_OUTER_EDGE_COLOR:I = 0x1a000000

.field private static final ANIM_TIME:I = 0xc8

.field private static final DEBUG:Z = false

.field public static final KEY_AMP_MAX_RADIUS:Ljava/lang/String; = "key_amp_max_radius"

.field public static final KEY_AMP_MIN_RADIUS:Ljava/lang/String; = "key_amp_min_radius"

.field public static final KEY_CURRENT_COLOR:Ljava/lang/String; = "key_current_time_color"

.field public static final KEY_CURRENT_RADIUX:Ljava/lang/String; = "key_current_radiux"

.field public static final KEY_CURRENT_RECORD_TIME:Ljava/lang/String; = "key_current_record_time"

.field public static final KEY_RECORD_TOKEN:Ljava/lang/String; = "key_record_token"

.field private static final LONG_CLICK_FLAG:I = 0x1

.field private static final NOT_CLICK_FLAG:I = -0x1

.field private static final SCALE_VALUE:F = 1.0f

.field private static final SHORT_CLICK_FLAG:I = 0x0

.field public static final STATE_CANCEL:I = 0x2

.field public static final STATE_NORMAL:I = 0x0

.field public static final STATE_PRESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VoiceView"

.field private static final TEXT_COLOR:I = -0x80000000

.field public static final TIME_COLOR:I = -0x80000000

.field private static final TOUCH_SLOP:I = 0x14

.field private static ampCicleSize:I

.field private static textSize:I

.field private static timeSize:I


# instance fields
.field private buttonPaddingBottom:I

.field private buttonPaddingBottomExt:I

.field private drCancel:Landroid/graphics/drawable/Drawable;

.field private drNormal:Landroid/graphics/drawable/Drawable;

.field private drPress:Landroid/graphics/drawable/Drawable;

.field private isDoScaleLarger:Z

.field private isDoScaleLittle:Z

.field private mClickFlag:I

.field private mCurrentDr:Lcom/meizu/widget/inputmethod/CustomeDrawable;

.field private mCurrentRecordTime:J

.field private mCurrentState:I

.field private mCurrentTimeColor:I

.field private mInitialRingWidth:I

.field private mIsNormalWidth:Z

.field private volatile mIsRecording:Z

.field private mLastDownX:I

.field private mLastDownY:I

.field private mLastHeight:I

.field private mLastWidth:I

.field private mLongPressRunnable:Lcom/meizu/widget/inputmethod/VoiceView$CheckForLongPress;

.field private mOuterCicleRadius:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPreRingWidth:I

.field private mPressToken:J

.field mPressed:Z

.field private mRadius:I

.field private mRingWidth:I

.field private mScaleLargerAnim:Landroid/animation/ObjectAnimator;

.field private mScaleLittleAnim:Landroid/animation/ObjectAnimator;

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTimePaint:Landroid/graphics/Paint;

.field private mToken:J

.field mValueAnimator:Landroid/animation/ValueAnimator;

.field private mVolumeAnimator:Landroid/animation/ValueAnimator;

.field private maxRadius:I

.field private minRadius:I

.field private picHeight:I

.field private picNormalHeight:I

.field private picNormalWidth:I

.field private picWidth:I

.field pointInRecordCircle:Z

.field private textCancel:Ljava/lang/String;

.field private textNormal:Ljava/lang/String;

.field private textPaddingBottom:I

.field private textPressed:Ljava/lang/String;

.field private timePaddingBottom:I


# direct methods
.method static synthetic -get0(Lcom/meizu/widget/inputmethod/VoiceView;)J
    .locals 2

    iget-wide v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressToken:J

    return-wide v0
.end method

.method static synthetic -set0(Lcom/meizu/widget/inputmethod/VoiceView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->isDoScaleLarger:Z

    return p1
.end method

.method static synthetic -set1(Lcom/meizu/widget/inputmethod/VoiceView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->isDoScaleLittle:Z

    return p1
.end method

.method static synthetic -set2(Lcom/meizu/widget/inputmethod/VoiceView;I)I
    .locals 0

    iput p1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mClickFlag:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/meizu/widget/inputmethod/VoiceView;I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/meizu/widget/inputmethod/VoiceView;->setState(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0xe

    sput v0, Lcom/meizu/widget/inputmethod/VoiceView;->textSize:I

    const/16 v0, 0x24

    sput v0, Lcom/meizu/widget/inputmethod/VoiceView;->timeSize:I

    const/4 v0, 0x2

    sput v0, Lcom/meizu/widget/inputmethod/VoiceView;->ampCicleSize:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/meizu/widget/inputmethod/CoverView;-><init>(Landroid/content/Context;)V

    iput-wide v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mToken:J

    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->minRadius:I

    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->maxRadius:I

    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPreRingWidth:I

    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRingWidth:I

    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mOuterCicleRadius:I

    iput-wide v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentRecordTime:J

    iput-boolean v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mIsRecording:Z

    iput v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentState:I

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentDr:Lcom/meizu/widget/inputmethod/CustomeDrawable;

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drNormal:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drPress:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drCancel:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picWidth:I

    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picHeight:I

    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picNormalWidth:I

    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picNormalHeight:I

    const-string v0, "\u6309\u4f4f\u5f55\u97f3\u8bb2\u8bdd"

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textNormal:Ljava/lang/String;

    const-string v0, "\u624b\u6307\u4e0a\u6ed1\uff0c\u53d6\u6d88\u53d1\u9001"

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textPressed:Ljava/lang/String;

    const-string v0, "\u677e\u5f00\u53d6\u6d88\u5f55\u5236"

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textCancel:Ljava/lang/String;

    const/16 v0, 0x6f

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textPaddingBottom:I

    const/16 v0, 0xb7

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->timePaddingBottom:I

    const/16 v0, 0x75

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->buttonPaddingBottom:I

    const/16 v0, 0x8a

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->buttonPaddingBottomExt:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentTimeColor:I

    iput-wide v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressToken:J

    iput-boolean v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->isDoScaleLittle:Z

    iput-boolean v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->isDoScaleLarger:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mIsNormalWidth:Z

    iput v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mClickFlag:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, -0x1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/meizu/widget/inputmethod/CoverView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-wide v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mToken:J

    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->minRadius:I

    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->maxRadius:I

    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPreRingWidth:I

    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRingWidth:I

    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mOuterCicleRadius:I

    iput-wide v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentRecordTime:J

    iput-boolean v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mIsRecording:Z

    iput v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentState:I

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentDr:Lcom/meizu/widget/inputmethod/CustomeDrawable;

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drNormal:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drPress:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drCancel:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picWidth:I

    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picHeight:I

    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picNormalWidth:I

    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picNormalHeight:I

    const-string v0, "\u6309\u4f4f\u5f55\u97f3\u8bb2\u8bdd"

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textNormal:Ljava/lang/String;

    const-string v0, "\u624b\u6307\u4e0a\u6ed1\uff0c\u53d6\u6d88\u53d1\u9001"

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textPressed:Ljava/lang/String;

    const-string v0, "\u677e\u5f00\u53d6\u6d88\u5f55\u5236"

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textCancel:Ljava/lang/String;

    const/16 v0, 0x6f

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textPaddingBottom:I

    const/16 v0, 0xb7

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->timePaddingBottom:I

    const/16 v0, 0x75

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->buttonPaddingBottom:I

    const/16 v0, 0x8a

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->buttonPaddingBottomExt:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentTimeColor:I

    iput-wide v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressToken:J

    iput-boolean v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->isDoScaleLittle:Z

    iput-boolean v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->isDoScaleLarger:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mIsNormalWidth:Z

    iput v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mClickFlag:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, -0x1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/widget/inputmethod/CoverView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-wide v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mToken:J

    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->minRadius:I

    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->maxRadius:I

    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPreRingWidth:I

    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRingWidth:I

    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mOuterCicleRadius:I

    iput-wide v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentRecordTime:J

    iput-boolean v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mIsRecording:Z

    iput v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentState:I

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentDr:Lcom/meizu/widget/inputmethod/CustomeDrawable;

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drNormal:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drPress:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drCancel:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picWidth:I

    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picHeight:I

    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picNormalWidth:I

    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picNormalHeight:I

    const-string v0, "\u6309\u4f4f\u5f55\u97f3\u8bb2\u8bdd"

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textNormal:Ljava/lang/String;

    const-string v0, "\u624b\u6307\u4e0a\u6ed1\uff0c\u53d6\u6d88\u53d1\u9001"

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textPressed:Ljava/lang/String;

    const-string v0, "\u677e\u5f00\u53d6\u6d88\u5f55\u5236"

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textCancel:Ljava/lang/String;

    const/16 v0, 0x6f

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textPaddingBottom:I

    const/16 v0, 0xb7

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->timePaddingBottom:I

    const/16 v0, 0x75

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->buttonPaddingBottom:I

    const/16 v0, 0x8a

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->buttonPaddingBottomExt:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentTimeColor:I

    iput-wide v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressToken:J

    iput-boolean v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->isDoScaleLittle:Z

    iput-boolean v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->isDoScaleLarger:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mIsNormalWidth:Z

    iput v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mClickFlag:I

    return-void
.end method

.method private cancelRecord()V
    .locals 2

    .prologue
    const-string v0, "action_cancel_record"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/meizu/widget/inputmethod/VoiceView;->sendPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mIsRecording:Z

    return-void
.end method

.method private cancleScaleLittle()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->isDoScaleLittle:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mScaleLittleAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private checkForLongClick(I)V
    .locals 4
    .param p1, "delayOffset"    # I

    .prologue
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mLongPressRunnable:Lcom/meizu/widget/inputmethod/VoiceView$CheckForLongPress;

    if-nez v0, :cond_0

    new-instance v0, Lcom/meizu/widget/inputmethod/VoiceView$CheckForLongPress;

    invoke-direct {v0, p0}, Lcom/meizu/widget/inputmethod/VoiceView$CheckForLongPress;-><init>(Lcom/meizu/widget/inputmethod/VoiceView;)V

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mLongPressRunnable:Lcom/meizu/widget/inputmethod/VoiceView$CheckForLongPress;

    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mLongPressRunnable:Lcom/meizu/widget/inputmethod/VoiceView$CheckForLongPress;

    iget-wide v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressToken:J

    invoke-virtual {v0, v2, v3}, Lcom/meizu/widget/inputmethod/VoiceView$CheckForLongPress;->rememberPressToken(J)V

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mLongPressRunnable:Lcom/meizu/widget/inputmethod/VoiceView$CheckForLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, p1

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/meizu/widget/inputmethod/VoiceView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private createAnim()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x6e

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentDr:Lcom/meizu/widget/inputmethod/CustomeDrawable;

    const-string v1, "scale"

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mScaleLittleAnim:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mScaleLittleAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mScaleLittleAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mScaleLittleAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/meizu/widget/inputmethod/VoiceView$1;

    invoke-direct {v1, p0}, Lcom/meizu/widget/inputmethod/VoiceView$1;-><init>(Lcom/meizu/widget/inputmethod/VoiceView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentDr:Lcom/meizu/widget/inputmethod/CustomeDrawable;

    const-string v1, "scale"

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mScaleLargerAnim:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mScaleLargerAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mScaleLargerAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mScaleLargerAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/meizu/widget/inputmethod/VoiceView$2;

    invoke-direct {v1, p0}, Lcom/meizu/widget/inputmethod/VoiceView$2;-><init>(Lcom/meizu/widget/inputmethod/VoiceView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private drawAmpCircle(Landroid/graphics/Canvas;II)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->maxRadius:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->minRadius:I

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->initCircleRadius()V

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mInitialRingWidth:I

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRingWidth:I

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x5000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRingWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRadius:I

    add-int/2addr v0, p2

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRadius:I

    add-int/2addr v1, p3

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRingWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x17000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcom/meizu/widget/inputmethod/VoiceView;->ampCicleSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRadius:I

    add-int/2addr v0, p2

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRadius:I

    add-int/2addr v1, p3

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRingWidth:I

    add-int/2addr v2, v3

    sget v3, Lcom/meizu/widget/inputmethod/VoiceView;->ampCicleSize:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x1a000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcom/meizu/widget/inputmethod/VoiceView;->ampCicleSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x12

    iget v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRingWidth:I

    div-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x9

    add-int/2addr v0, v1

    sget v1, Lcom/meizu/widget/inputmethod/VoiceView;->ampCicleSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mOuterCicleRadius:I

    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRadius:I

    add-int/2addr v0, p2

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRadius:I

    add-int/2addr v1, p3

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mOuterCicleRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRingWidth:I

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPreRingWidth:I

    return-void
.end method

.method private drawButton(Landroid/graphics/Canvas;II)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentDr:Lcom/meizu/widget/inputmethod/CustomeDrawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    int-to-float v0, p2

    int-to-float v1, p3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentDr:Lcom/meizu/widget/inputmethod/CustomeDrawable;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/inputmethod/CustomeDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawRecordTime(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->save(I)I

    iget-object v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTimePaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentTimeColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTimePaint:Landroid/graphics/Paint;

    const-string v4, "00:00"

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-double v4, v3

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    double-to-int v2, v4

    .local v2, "textWidth":I
    invoke-virtual {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v3, v2

    div-int/lit8 v0, v3, 0x2

    .local v0, "dx":I
    invoke-virtual {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->getMeasuredHeight()I

    move-result v3

    iget v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->buttonPaddingBottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picNormalHeight:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->timePaddingBottom:I

    sub-int v1, v3, v4

    .local v1, "dy":I
    iget-wide v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentRecordTime:J

    const-wide/16 v6, 0xa

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "00:0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentRecordTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    int-to-float v4, v0

    int-to-float v5, v1

    iget-object v6, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTimePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_0
    iget-wide v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentRecordTime:J

    const-wide/16 v6, 0x3c

    cmp-long v3, v4, v6

    if-gez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "00:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentRecordTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    int-to-float v4, v0

    int-to-float v5, v1

    iget-object v6, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTimePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    const-string v3, "01:00"

    int-to-float v4, v0

    int-to-float v5, v1

    iget-object v6, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTimePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawText(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const-wide/16 v8, 0x3c

    const-wide/16 v6, 0x33

    iget-object v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentDr:Lcom/meizu/widget/inputmethod/CustomeDrawable;

    if-nez v4, :cond_0

    return-void

    :cond_0
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->save(I)I

    const-string v2, ""

    .local v2, "text":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mClickFlag:I

    if-nez v4, :cond_3

    :cond_1
    iget-object v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textNormal:Ljava/lang/String;

    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    double-to-int v3, v4

    .local v3, "textWidth":I
    invoke-virtual {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v4, v3

    div-int/lit8 v0, v4, 0x2

    .local v0, "dx":I
    invoke-virtual {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lcom/meizu/widget/inputmethod/VoiceView;->buttonPaddingBottom:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picNormalHeight:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textPaddingBottom:I

    sub-int v1, v4, v5

    .local v1, "dy":I
    int-to-float v4, v0

    int-to-float v5, v1

    iget-object v6, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .end local v0    # "dx":I
    .end local v1    # "dy":I
    .end local v3    # "textWidth":I
    :cond_3
    iget-boolean v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->pointInRecordCircle:Z

    if-eqz v4, :cond_6

    iget-wide v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentRecordTime:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_4

    iget-wide v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentRecordTime:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textPressed:Ljava/lang/String;

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->getRemainTimeText()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_6
    iget-boolean v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->pointInRecordCircle:Z

    if-nez v4, :cond_2

    iget-wide v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentRecordTime:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_7

    iget-wide v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentRecordTime:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textCancel:Ljava/lang/String;

    goto :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->getRemainTimeText()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getRemainTimeText()Ljava/lang/String;
    .locals 8

    .prologue
    const-string v0, ""

    .local v0, "timeText":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/flyme/internal/R$string;->voice_text_remain:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentRecordTime:J

    const-wide/16 v6, 0x3c

    sub-long v4, v6, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initCircleDrawable(Landroid/content/res/Resources;)V
    .locals 5
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    sget v0, Lcom/flyme/internal/R$drawable;->audio_btn_normal:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drNormal:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picWidth:I

    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picWidth:I

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picNormalWidth:I

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picHeight:I

    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picHeight:I

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picNormalHeight:I

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drNormal:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picWidth:I

    iget v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget v0, Lcom/flyme/internal/R$drawable;->audio_btn_press:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drPress:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drPress:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picWidth:I

    iget v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picNormalWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mLastWidth:I

    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picNormalHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mLastHeight:I

    sget v0, Lcom/flyme/internal/R$drawable;->audio_btn_cancel:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drCancel:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drCancel:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picWidth:I

    iget v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentDr:Lcom/meizu/widget/inputmethod/CustomeDrawable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/meizu/widget/inputmethod/CustomeDrawable;

    iget-object v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drNormal:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v1}, Lcom/meizu/widget/inputmethod/CustomeDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentDr:Lcom/meizu/widget/inputmethod/CustomeDrawable;

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentDr:Lcom/meizu/widget/inputmethod/CustomeDrawable;

    invoke-virtual {v0, p0}, Lcom/meizu/widget/inputmethod/CustomeDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    invoke-direct {p0, v3}, Lcom/meizu/widget/inputmethod/VoiceView;->setState(I)V

    return-void
.end method

.method private initCircleRadius()V
    .locals 2

    .prologue
    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mLastWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->minRadius:I

    invoke-virtual {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mLastHeight:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x6

    iget v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->minRadius:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->maxRadius:I

    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->maxRadius:I

    iget v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->minRadius:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRingWidth:I

    return-void
.end method

.method private initPaints()V
    .locals 4

    .prologue
    const/high16 v3, -0x80000000

    const/4 v2, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTextPaint:Landroid/graphics/Paint;

    sget v1, Lcom/meizu/widget/inputmethod/VoiceView;->textSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x5000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTimePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTimePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTimePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTimePaint:Landroid/graphics/Paint;

    const-string v1, "/system/fonts/DINPro-Light.otf"

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTimePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mTimePaint:Landroid/graphics/Paint;

    sget v1, Lcom/meizu/widget/inputmethod/VoiceView;->timeSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method private initScaleValue()V
    .locals 1

    .prologue
    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picNormalHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mRadius:I

    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->createAnim()V

    return-void
.end method

.method private initText(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    sget v0, Lcom/flyme/internal/R$string;->voice_text_normal:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textNormal:Ljava/lang/String;

    sget v0, Lcom/flyme/internal/R$string;->voice_text_press:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textPressed:Ljava/lang/String;

    sget v0, Lcom/flyme/internal/R$string;->voice_text_over:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textCancel:Ljava/lang/String;

    sget v0, Lcom/flyme/internal/R$dimen;->voice_text_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/meizu/widget/inputmethod/VoiceView;->textSize:I

    sget v0, Lcom/flyme/internal/R$dimen;->voice_record_time_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/meizu/widget/inputmethod/VoiceView;->timeSize:I

    sget v0, Lcom/flyme/internal/R$dimen;->amp_cicle_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/meizu/widget/inputmethod/VoiceView;->ampCicleSize:I

    sget v0, Lcom/flyme/internal/R$dimen;->voice_text_padding_bottom:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->textPaddingBottom:I

    sget v0, Lcom/flyme/internal/R$dimen;->voice_time_padding_bottom:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->timePaddingBottom:I

    sget v0, Lcom/flyme/internal/R$dimen;->voice_btn_padding_bottom:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->buttonPaddingBottom:I

    sget v0, Lcom/flyme/internal/R$dimen;->voice_btn_padding_bottom_ext:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->buttonPaddingBottomExt:I

    return-void
.end method

.method private isDoingAnim()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->isDoScaleLittle:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->isDoScaleLarger:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private final isPointInCircle(II)Z
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    invoke-virtual {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v0, p1, v3

    .local v0, "dx":I
    invoke-virtual {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v1, p2, v3

    .local v1, "dy":I
    iget v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picWidth:I

    div-int/lit8 v2, v3, 0x2

    .local v2, "r":I
    mul-int v3, v0, v0

    mul-int v4, v1, v1

    add-int/2addr v3, v4

    mul-int v4, v2, v2

    if-gt v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private onCancelRecordModule(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mIsRecording:Z

    invoke-direct {p0, v0}, Lcom/meizu/widget/inputmethod/VoiceView;->setState(I)V

    iput-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentRecordTime:J

    invoke-virtual {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->postInvalidate()V

    return-void
.end method

.method private onRefreshAmp(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    const-string v0, "key_current_radiux"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mInitialRingWidth:I

    const-string v0, "key_current_record_time"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentRecordTime:J

    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mInitialRingWidth:I

    iget v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPreRingWidth:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPreRingWidth:I

    iget v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mInitialRingWidth:I

    const/16 v2, 0xc8

    invoke-direct {p0, v2, v0, v1}, Lcom/meizu/widget/inputmethod/VoiceView;->startVolumeAnim(III)V

    :cond_0
    return-void
.end method

.method private onStartRecordModule(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v4, 0x0

    const-string v2, "key_record_token"

    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .local v0, "tokenFromApp":J
    iget-wide v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mToken:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mIsRecording:Z

    invoke-virtual {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->postInvalidate()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->cancelRecord()V

    goto :goto_0
.end method

.method private onStopRecordModule(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mIsRecording:Z

    invoke-direct {p0, v0}, Lcom/meizu/widget/inputmethod/VoiceView;->setState(I)V

    iput-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentRecordTime:J

    invoke-virtual {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->postInvalidate()V

    return-void
.end method

.method private pauseRecord()V
    .locals 2

    .prologue
    const-string v0, "action_pause_record"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/meizu/widget/inputmethod/VoiceView;->sendPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    return-void
.end method

.method private removeLongPressCallback()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mLongPressRunnable:Lcom/meizu/widget/inputmethod/VoiceView$CheckForLongPress;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mToken:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mToken:J

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mLongPressRunnable:Lcom/meizu/widget/inputmethod/VoiceView$CheckForLongPress;

    invoke-virtual {p0, v0}, Lcom/meizu/widget/inputmethod/VoiceView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private resumeRecord()V
    .locals 2

    .prologue
    const-string v0, "action_resume_record"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/meizu/widget/inputmethod/VoiceView;->sendPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    return-void
.end method

.method private setState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentState:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    :goto_0
    iput p1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentState:I

    invoke-virtual {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->invalidate()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentDr:Lcom/meizu/widget/inputmethod/CustomeDrawable;

    iget-object v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/meizu/widget/inputmethod/CustomeDrawable;->setTargetDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentDr:Lcom/meizu/widget/inputmethod/CustomeDrawable;

    iget-object v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drPress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/meizu/widget/inputmethod/CustomeDrawable;->setTargetDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentDr:Lcom/meizu/widget/inputmethod/CustomeDrawable;

    iget-object v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->drCancel:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/meizu/widget/inputmethod/CustomeDrawable;->setTargetDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private startRecord()V
    .locals 6

    .prologue
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "key_amp_min_radius"

    iget v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->minRadius:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "key_amp_max_radius"

    iget v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->maxRadius:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-wide v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mToken:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mToken:J

    const-string v1, "key_record_token"

    iget-wide v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mToken:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "action_begin_record"

    invoke-virtual {p0, v1, v0}, Lcom/meizu/widget/inputmethod/VoiceView;->sendPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    return-void
.end method

.method private startScaleLarger()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->cancleScaleLittle()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mIsNormalWidth:Z

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mScaleLargerAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private startScaleLittle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->isDoingAnim()Z

    move-result v0

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mIsNormalWidth:Z

    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->maxRadius:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->minRadius:I

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->initCircleRadius()V

    :cond_1
    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->startValueAnimator()V

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mScaleLittleAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_2
    return-void
.end method

.method private startValueAnimator()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    iput v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mInitialRingWidth:I

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x6e

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v4, v1, v4

    iget v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->maxRadius:I

    iget v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->minRadius:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x4

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startVolumeAnim(III)V
    .locals 4
    .param p1, "duration"    # I
    .param p2, "start"    # I
    .param p3, "target"    # I

    .prologue
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mVolumeAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mVolumeAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mVolumeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mVolumeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mVolumeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mVolumeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    if-ge p2, p3, :cond_2

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mVolumeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x5a

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :goto_0
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mVolumeAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x1

    aput p3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mVolumeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mVolumeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x78

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_0
.end method

.method private stopRecord()V
    .locals 2

    .prologue
    const-string v0, "action_stop_record"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/meizu/widget/inputmethod/VoiceView;->sendPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mIsRecording:Z

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v6, 0x14

    const/4 v3, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .local v1, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return v5

    :pswitch_0
    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mLastDownX:I

    iput v1, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mLastDownY:I

    invoke-direct {p0, v0, v1}, Lcom/meizu/widget/inputmethod/VoiceView;->isPointInCircle(II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->pointInRecordCircle:Z

    iget-boolean v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->pointInRecordCircle:Z

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mToken:J

    iput-wide v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressToken:J

    iput-boolean v5, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    iput v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mClickFlag:I

    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->startScaleLittle()V

    invoke-direct {p0, v4}, Lcom/meizu/widget/inputmethod/VoiceView;->checkForLongClick(I)V

    goto :goto_0

    :pswitch_1
    iget-boolean v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mLastDownX:I

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v6, :cond_1

    iget v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mLastDownY:I

    sub-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v6, :cond_2

    :cond_1
    iput-boolean v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->removeLongPressCallback()V

    invoke-direct {p0, v4}, Lcom/meizu/widget/inputmethod/VoiceView;->setState(I)V

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mIsRecording:Z

    if-eqz v2, :cond_4

    invoke-direct {p0, v0, v1}, Lcom/meizu/widget/inputmethod/VoiceView;->isPointInCircle(II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->pointInRecordCircle:Z

    iget-boolean v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->pointInRecordCircle:Z

    if-eqz v2, :cond_3

    invoke-direct {p0, v5}, Lcom/meizu/widget/inputmethod/VoiceView;->setState(I)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/meizu/widget/inputmethod/VoiceView;->setState(I)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v4}, Lcom/meizu/widget/inputmethod/VoiceView;->setState(I)V

    goto :goto_0

    :pswitch_2
    iput v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mClickFlag:I

    iput-boolean v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    iget-boolean v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mIsNormalWidth:Z

    if-nez v2, :cond_5

    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->startScaleLarger()V

    :cond_5
    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->removeLongPressCallback()V

    iget-boolean v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mIsRecording:Z

    if-eqz v2, :cond_6

    invoke-direct {p0, v0, v1}, Lcom/meizu/widget/inputmethod/VoiceView;->isPointInCircle(II)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->stopRecord()V

    :cond_6
    :goto_1
    invoke-direct {p0, v4}, Lcom/meizu/widget/inputmethod/VoiceView;->setState(I)V

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->cancelRecord()V

    goto :goto_1

    :pswitch_3
    iput v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mClickFlag:I

    iput-boolean v4, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    iget-boolean v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mIsNormalWidth:Z

    if-nez v2, :cond_8

    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->startScaleLarger()V

    :cond_8
    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->removeLongPressCallback()V

    iget-boolean v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mIsRecording:Z

    if-eqz v2, :cond_9

    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->cancelRecord()V

    :cond_9
    invoke-direct {p0, v4}, Lcom/meizu/widget/inputmethod/VoiceView;->setState(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    invoke-virtual {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->postInvalidate()V

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mInitialRingWidth:I

    invoke-virtual {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->postInvalidate()V

    return-void
.end method

.method public onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    const-string v0, "action_begin_record"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/meizu/widget/inputmethod/VoiceView;->onStartRecordModule(Landroid/os/Bundle;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "action_cancel_record"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p2}, Lcom/meizu/widget/inputmethod/VoiceView;->onCancelRecordModule(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    const-string v0, "action_stop_record"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p2}, Lcom/meizu/widget/inputmethod/VoiceView;->onStopRecordModule(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    const-string v0, "action_amp_refresh"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/meizu/widget/inputmethod/VoiceView;->onRefreshAmp(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    invoke-super {p0}, Lcom/meizu/widget/inputmethod/CoverView;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    invoke-super {p0}, Lcom/meizu/widget/inputmethod/CoverView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-super {p0, p1}, Lcom/meizu/widget/inputmethod/CoverView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentDr:Lcom/meizu/widget/inputmethod/CustomeDrawable;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentDr:Lcom/meizu/widget/inputmethod/CustomeDrawable;

    invoke-virtual {v2}, Lcom/meizu/widget/inputmethod/CustomeDrawable;->getRealWidth()I

    move-result v2

    iput v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picWidth:I

    iget-object v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentDr:Lcom/meizu/widget/inputmethod/CustomeDrawable;

    invoke-virtual {v2}, Lcom/meizu/widget/inputmethod/CustomeDrawable;->getRealHeight()I

    move-result v2

    iput v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picHeight:I

    invoke-virtual {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .local v0, "dx":I
    invoke-virtual {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->picNormalHeight:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->buttonPaddingBottom:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/meizu/widget/inputmethod/VoiceView;->buttonPaddingBottomExt:I

    add-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

    .local v1, "dy":I
    invoke-direct {p0, p1, v0, v1}, Lcom/meizu/widget/inputmethod/VoiceView;->drawButton(Landroid/graphics/Canvas;II)V

    invoke-direct {p0, p1}, Lcom/meizu/widget/inputmethod/VoiceView;->drawText(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/meizu/widget/inputmethod/VoiceView;->drawRecordTime(Landroid/graphics/Canvas;)V

    iget-boolean v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mCurrentRecordTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0, p1, v0, v1}, Lcom/meizu/widget/inputmethod/VoiceView;->drawAmpCircle(Landroid/graphics/Canvas;II)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/meizu/widget/inputmethod/CoverView;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .local v0, "res":Landroid/content/res/Resources;
    invoke-direct {p0, v0}, Lcom/meizu/widget/inputmethod/VoiceView;->initText(Landroid/content/res/Resources;)V

    invoke-direct {p0, v0}, Lcom/meizu/widget/inputmethod/VoiceView;->initCircleDrawable(Landroid/content/res/Resources;)V

    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->initPaints()V

    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->initScaleValue()V

    return-void
.end method

.method public onPrivateImeOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    invoke-super {p0, p1, p2}, Lcom/meizu/widget/inputmethod/CoverView;->onPrivateImeOption(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    iput-wide v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mToken:J

    iput-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    iput-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->pointInRecordCircle:Z

    invoke-direct {p0, v0}, Lcom/meizu/widget/inputmethod/VoiceView;->setState(I)V

    :goto_0
    return-void

    :cond_0
    iput-wide v2, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mToken:J

    iput-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->mPressed:Z

    iput-boolean v0, p0, Lcom/meizu/widget/inputmethod/VoiceView;->pointInRecordCircle:Z

    invoke-direct {p0, v0}, Lcom/meizu/widget/inputmethod/VoiceView;->setState(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public performLongClick()Z
    .locals 1

    .prologue
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/meizu/widget/inputmethod/VoiceView;->sendAccessibilityEvent(I)V

    invoke-direct {p0}, Lcom/meizu/widget/inputmethod/VoiceView;->startRecord()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/widget/inputmethod/VoiceView;->performHapticFeedback(I)Z

    const/4 v0, 0x1

    return v0
.end method
