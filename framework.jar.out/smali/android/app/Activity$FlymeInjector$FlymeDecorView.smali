.class final Landroid/app/Activity$FlymeInjector$FlymeDecorView;
.super Ljava/lang/Object;
.source "Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Activity$FlymeInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeDecorView"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mEvent:[Landroid/view/MotionEvent;

.field private mLength:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;[Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "event"    # [Landroid/view/MotionEvent;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/Activity$FlymeInjector$FlymeDecorView;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Landroid/app/Activity$FlymeInjector$FlymeDecorView;->mEvent:[Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    iget-object v3, p0, Landroid/app/Activity$FlymeInjector$FlymeDecorView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .local v0, "decorView":Landroid/view/View;
    iget-object v3, p0, Landroid/app/Activity$FlymeInjector$FlymeDecorView;->mEvent:[Landroid/view/MotionEvent;

    array-length v2, v3

    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Landroid/app/Activity$FlymeInjector$FlymeDecorView;->mEvent:[Landroid/view/MotionEvent;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
