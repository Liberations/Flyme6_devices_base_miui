.class final Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;
.super Ljava/lang/Object;
.source "PowerKeeperPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "HandleState"
.end annotation


# instance fields
.field mBinder:Landroid/os/IBinder;

.field mHandle:I

.field mMaxBatchReportLatencyNs:J

.field mOpByP:Z

.field mPendingOperation:Z

.field mReserve:I

.field mSamplingPeriodNs:J

.field mState:Z

.field final synthetic this$1:Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;


# direct methods
.method constructor <init>(Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;)V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->this$1:Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mState:Z

    iput v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mHandle:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mBinder:Landroid/os/IBinder;

    iput-wide v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mSamplingPeriodNs:J

    iput-wide v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mMaxBatchReportLatencyNs:J

    iput v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mReserve:I

    iput-boolean v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mOpByP:Z

    iput-boolean v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mPendingOperation:Z

    return-void
.end method


# virtual methods
.method public toString(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const-string v0, " {"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " state = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mState:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " Handle = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mHandle:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " binder = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " samp = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mSamplingPeriodNs:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " max = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mMaxBatchReportLatencyNs:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " reserv = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mReserve:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mOpByP = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mOpByP:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mPendingOperation = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$AppSensorsState$HandleState;->mPendingOperation:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "}\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
