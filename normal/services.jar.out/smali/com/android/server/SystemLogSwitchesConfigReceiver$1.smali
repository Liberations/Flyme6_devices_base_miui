.class Lcom/android/server/SystemLogSwitchesConfigReceiver$1;
.super Ljava/lang/Object;
.source "SystemLogSwitchesConfigReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/SystemLogSwitchesConfigReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SystemLogSwitchesConfigReceiver;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/server/SystemLogSwitchesConfigReceiver;Landroid/content/Intent;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/SystemLogSwitchesConfigReceiver$1;->this$0:Lcom/android/server/SystemLogSwitchesConfigReceiver;

    iput-object p2, p0, Lcom/android/server/SystemLogSwitchesConfigReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/SystemLogSwitchesConfigReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-static {v0}, Lmiui/log/SystemLogSwitchesConfigManager;->updateLogSwitches(Landroid/content/Intent;)V

    return-void
.end method
