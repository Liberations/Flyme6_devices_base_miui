.class Lcom/miui/server/PerfShielderService$3;
.super Ljava/lang/Object;
.source "PerfShielderService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/PerfShielderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/PerfShielderService;


# direct methods
.method constructor <init>(Lcom/miui/server/PerfShielderService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/miui/server/PerfShielderService$3;->this$0:Lcom/miui/server/PerfShielderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const-string v1, "PerfShielderService"

    const-string v2, "Miui performance service binderDied!"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/server/PerfShielderService$3;->this$0:Lcom/miui/server/PerfShielderService;

    iget-object v1, v1, Lcom/miui/server/PerfShielderService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/miui/server/PerfShielderService$3;->this$0:Lcom/miui/server/PerfShielderService;

    iget-object v1, v1, Lcom/miui/server/PerfShielderService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/server/PerfShielderService$3;->this$0:Lcom/miui/server/PerfShielderService;

    iget-object v1, v1, Lcom/miui/server/PerfShielderService;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
