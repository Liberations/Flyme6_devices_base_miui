.class final Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeStatusBarDarkTheme;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager$FlymeInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeStatusBarDarkTheme"
.end annotation


# instance fields
.field private mAnimation:Z

.field private mDark:Z

.field private mPwm:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;ZZ)V
    .locals 0
    .param p1, "pwm"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "dark"    # Z
    .param p3, "animation"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeStatusBarDarkTheme;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeStatusBarDarkTheme;->mDark:Z

    iput-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeStatusBarDarkTheme;->mAnimation:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeStatusBarDarkTheme;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->getFlymeStatusBarService()Lmeizu/statusbar/IFlymeStatusBarService;

    move-result-object v1

    .local v1, "statusbar":Lmeizu/statusbar/IFlymeStatusBarService;
    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeStatusBarDarkTheme;->mDark:Z

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeStatusBarDarkTheme;->mAnimation:Z

    invoke-interface {v1, v2, v3}, Lmeizu/statusbar/IFlymeStatusBarService;->setStatusBarDarkTheme(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "statusbar":Lmeizu/statusbar/IFlymeStatusBarService;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeStatusBarDarkTheme;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iput-object v4, v2, Lcom/android/server/policy/PhoneWindowManager;->mFlymeStatusBarService:Lmeizu/statusbar/IFlymeStatusBarService;

    goto :goto_0
.end method
