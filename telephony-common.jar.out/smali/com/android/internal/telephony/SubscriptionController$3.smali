.class Lcom/android/internal/telephony/SubscriptionController$3;
.super Landroid/database/ContentObserver;
.source "SubscriptionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/SubscriptionController;->initForCancro()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SubscriptionController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SubscriptionController;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionController$3;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController$3;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController$3;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    iget-object v1, v1, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MiuiSettings$VirtualSim;->isVirtualSimEnabled(Landroid/content/Context;)Z

    move-result v1

    # setter for: Lcom/android/internal/telephony/SubscriptionController;->mIsVirtualSimEnabled:Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->access$102(Lcom/android/internal/telephony/SubscriptionController;Z)Z

    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController$3;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange mIsVirtualSimEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController$3;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    # getter for: Lcom/android/internal/telephony/SubscriptionController;->mIsVirtualSimEnabled:Z
    invoke-static {v2}, Lcom/android/internal/telephony/SubscriptionController;->access$100(Lcom/android/internal/telephony/SubscriptionController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->access$200(Lcom/android/internal/telephony/SubscriptionController;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController$3;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    const/4 v1, 0x0

    # invokes: Lcom/android/internal/telephony/SubscriptionController;->resetDdsForCancroIfNeeded(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->access$000(Lcom/android/internal/telephony/SubscriptionController;Landroid/content/Intent;)V

    return-void
.end method
