.class final Lcom/android/server/MasterClearReceiver$FlymeRebootThread;
.super Ljava/lang/Thread;
.source "MasterClearReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MasterClearReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FlymeRebootThread"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v0, "FlymeReboot"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/MasterClearReceiver$FlymeRebootThread;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/MasterClearReceiver$FlymeRebootThread;->mIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MasterClearReceiver$FlymeRebootThread;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/MasterClearReceiver$FlymeRebootThread;->mIntent:Landroid/content/Intent;

    invoke-static {v2, v3}, Landroid/os/RecoverySystem;->flymeRebootWipeUserData(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "MasterClear"

    const-string v3, "Can\'t perform master clear/factory reset"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    const-string v2, "MasterClear"

    const-string v3, "Can\'t perform master clear/factory reset"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
