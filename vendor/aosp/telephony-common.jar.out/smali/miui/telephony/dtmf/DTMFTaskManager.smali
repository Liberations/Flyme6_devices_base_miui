.class public Lmiui/telephony/dtmf/DTMFTaskManager;
.super Ljava/lang/Object;
.source "DTMFTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecognizeThread;,
        Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecordThread;,
        Lmiui/telephony/dtmf/DTMFTaskManager$DTMFMonitorTimerTask;,
        Lmiui/telephony/dtmf/DTMFTaskManager$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DTMFTaskManager"


# instance fields
.field private mConnection:Lcom/android/internal/telephony/Connection;

.field private mDTMFMonitorTimerTask:Lmiui/telephony/dtmf/DTMFTaskManager$DTMFMonitorTimerTask;

.field private mDataQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lmiui/telephony/dtmf/AudioData;",
            ">;"
        }
    .end annotation
.end field

.field private mDrvierCall:Lcom/android/internal/telephony/DriverCall;

.field private mHasStarted:Z

.field private mImsCall:Lcom/android/ims/ImsCall;

.field private mLivetalkCallTracker:Lcom/android/internal/telephony/LivetalkCallTracker;

.field private mRecognizeListener:Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecognizeThread$DTMFRecognizeListener;

.field private mRecognizeThread:Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecognizeThread;

.field private mRecordListener:Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecordThread$DTMFRecordListener;

.field private mRecordThread:Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecordThread;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/LivetalkCallTracker;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;Lcom/android/ims/ImsCall;)V
    .locals 1
    .param p1, "callTracker"    # Lcom/android/internal/telephony/LivetalkCallTracker;
    .param p2, "conn"    # Lcom/android/internal/telephony/Connection;
    .param p3, "dc"    # Lcom/android/internal/telephony/DriverCall;
    .param p4, "imsCall"    # Lcom/android/ims/ImsCall;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mHasStarted:Z

    new-instance v0, Lmiui/telephony/dtmf/DTMFTaskManager$1;

    invoke-direct {v0, p0}, Lmiui/telephony/dtmf/DTMFTaskManager$1;-><init>(Lmiui/telephony/dtmf/DTMFTaskManager;)V

    iput-object v0, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mRecognizeListener:Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecognizeThread$DTMFRecognizeListener;

    new-instance v0, Lmiui/telephony/dtmf/DTMFTaskManager$2;

    invoke-direct {v0, p0}, Lmiui/telephony/dtmf/DTMFTaskManager$2;-><init>(Lmiui/telephony/dtmf/DTMFTaskManager;)V

    iput-object v0, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mRecordListener:Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecordThread$DTMFRecordListener;

    iput-object p1, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mLivetalkCallTracker:Lcom/android/internal/telephony/LivetalkCallTracker;

    iput-object p2, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mConnection:Lcom/android/internal/telephony/Connection;

    iput-object p3, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mDrvierCall:Lcom/android/internal/telephony/DriverCall;

    iput-object p4, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mImsCall:Lcom/android/ims/ImsCall;

    return-void
.end method

.method static synthetic access$000(Lmiui/telephony/dtmf/DTMFTaskManager;Z)V
    .locals 0
    .param p0, "x0"    # Lmiui/telephony/dtmf/DTMFTaskManager;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lmiui/telephony/dtmf/DTMFTaskManager;->onDTMFRecognizedFinished(Z)V

    return-void
.end method

.method static synthetic access$100(Lmiui/telephony/dtmf/DTMFTaskManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/telephony/dtmf/DTMFTaskManager;

    .prologue
    invoke-direct {p0}, Lmiui/telephony/dtmf/DTMFTaskManager;->starRecognizeThread()V

    return-void
.end method

.method static synthetic access$200(Lmiui/telephony/dtmf/DTMFTaskManager;)V
    .locals 0
    .param p0, "x0"    # Lmiui/telephony/dtmf/DTMFTaskManager;

    .prologue
    invoke-direct {p0}, Lmiui/telephony/dtmf/DTMFTaskManager;->startMonitorTimerTask()V

    return-void
.end method

.method static synthetic access$300(J)Z
    .locals 2
    .param p0, "x0"    # J

    .prologue
    invoke-static {p0, p1}, Lmiui/telephony/dtmf/DTMFTaskManager;->isTimeout(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lmiui/telephony/dtmf/DTMFTaskManager;)Z
    .locals 1
    .param p0, "x0"    # Lmiui/telephony/dtmf/DTMFTaskManager;

    .prologue
    invoke-direct {p0}, Lmiui/telephony/dtmf/DTMFTaskManager;->isConnAlive()Z

    move-result v0

    return v0
.end method

.method private createAudioDataQueue()V
    .locals 2

    .prologue
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mDataQueue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method public static createDTMFTask(Lcom/android/internal/telephony/LivetalkCallTracker;Lcom/android/internal/telephony/Connection;Lcom/android/ims/ImsCall;)Lmiui/telephony/dtmf/DTMFTaskManager;
    .locals 2
    .param p0, "livetalkCallTracker"    # Lcom/android/internal/telephony/LivetalkCallTracker;
    .param p1, "connection"    # Lcom/android/internal/telephony/Connection;
    .param p2, "imsCall"    # Lcom/android/ims/ImsCall;

    .prologue
    new-instance v1, Lmiui/telephony/dtmf/DTMFTaskManager$Builder;

    invoke-direct {v1}, Lmiui/telephony/dtmf/DTMFTaskManager$Builder;-><init>()V

    invoke-virtual {v1, p0}, Lmiui/telephony/dtmf/DTMFTaskManager$Builder;->setCallTracker(Lcom/android/internal/telephony/LivetalkCallTracker;)Lmiui/telephony/dtmf/DTMFTaskManager$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmiui/telephony/dtmf/DTMFTaskManager$Builder;->setConnection(Lcom/android/internal/telephony/Connection;)Lmiui/telephony/dtmf/DTMFTaskManager$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lmiui/telephony/dtmf/DTMFTaskManager$Builder;->setImsCall(Lcom/android/ims/ImsCall;)Lmiui/telephony/dtmf/DTMFTaskManager$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/dtmf/DTMFTaskManager$Builder;->create()Lmiui/telephony/dtmf/DTMFTaskManager;

    move-result-object v0

    .local v0, "dtmfTaskManager":Lmiui/telephony/dtmf/DTMFTaskManager;
    return-object v0
.end method

.method public static createDTMFTask(Lcom/android/internal/telephony/LivetalkCallTracker;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)Lmiui/telephony/dtmf/DTMFTaskManager;
    .locals 2
    .param p0, "livetalkCallTracker"    # Lcom/android/internal/telephony/LivetalkCallTracker;
    .param p1, "connection"    # Lcom/android/internal/telephony/Connection;
    .param p2, "driverCall"    # Lcom/android/internal/telephony/DriverCall;

    .prologue
    new-instance v1, Lmiui/telephony/dtmf/DTMFTaskManager$Builder;

    invoke-direct {v1}, Lmiui/telephony/dtmf/DTMFTaskManager$Builder;-><init>()V

    invoke-virtual {v1, p0}, Lmiui/telephony/dtmf/DTMFTaskManager$Builder;->setCallTracker(Lcom/android/internal/telephony/LivetalkCallTracker;)Lmiui/telephony/dtmf/DTMFTaskManager$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmiui/telephony/dtmf/DTMFTaskManager$Builder;->setConnection(Lcom/android/internal/telephony/Connection;)Lmiui/telephony/dtmf/DTMFTaskManager$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lmiui/telephony/dtmf/DTMFTaskManager$Builder;->setDriverCall(Lcom/android/internal/telephony/DriverCall;)Lmiui/telephony/dtmf/DTMFTaskManager$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/dtmf/DTMFTaskManager$Builder;->create()Lmiui/telephony/dtmf/DTMFTaskManager;

    move-result-object v0

    .local v0, "dtmfTaskManager":Lmiui/telephony/dtmf/DTMFTaskManager;
    return-object v0
.end method

.method private destoryAudioDataQueue()V
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mDataQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mDataQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mDataQueue:Ljava/util/concurrent/BlockingQueue;

    :cond_0
    return-void
.end method

.method private isConnAlive()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isTimeout(J)Z
    .locals 4
    .param p0, "startTime"    # J

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    const-wide/32 v2, 0x9c40

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized onDTMFRecognizedFinished(Z)V
    .locals 6
    .param p1, "result"    # Z

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v1, "DTMFTaskManager"

    const-string v2, "onDTMFRecognizedFinished: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mHasStarted:Z

    if-nez v1, :cond_0

    const-string v1, "DTMFTaskManager"

    const-string v2, "not started"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lmiui/telephony/dtmf/DTMFTaskManager;->stopMonitorTimerTask()V

    invoke-direct {p0}, Lmiui/telephony/dtmf/DTMFTaskManager;->stopRecordThread()V

    invoke-direct {p0}, Lmiui/telephony/dtmf/DTMFTaskManager;->stopRecognizeThread()V

    invoke-direct {p0}, Lmiui/telephony/dtmf/DTMFTaskManager;->destoryAudioDataQueue()V

    invoke-direct {p0}, Lmiui/telephony/dtmf/DTMFTaskManager;->isConnAlive()Z

    move-result v0

    .local v0, "isConnAlive":Z
    iget-object v1, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mLivetalkCallTracker:Lcom/android/internal/telephony/LivetalkCallTracker;

    if-eqz v1, :cond_2

    if-nez p1, :cond_1

    invoke-direct {p0}, Lmiui/telephony/dtmf/DTMFTaskManager;->isConnAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "DTMFTaskManager"

    const-string v2, "onDTMFRecognizedFinished connect: %s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mLivetalkCallTracker:Lcom/android/internal/telephony/LivetalkCallTracker;

    instance-of v1, v1, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;

    if-eqz v1, :cond_3

    const-string v1, "DTMFTaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDTMFRecognized mImsCall="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mImsCall:Lcom/android/ims/ImsCall;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DTMFTaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDTMFRecognized mConnection="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mLivetalkCallTracker:Lcom/android/internal/telephony/LivetalkCallTracker;

    iget-object v2, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mConnection:Lcom/android/internal/telephony/Connection;

    iget-object v3, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mImsCall:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/LivetalkCallTracker;->onLiveTalkRealConnect(Lcom/android/internal/telephony/Connection;Lcom/android/ims/ImsCall;)V

    :cond_2
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mConnection:Lcom/android/internal/telephony/Connection;

    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mDrvierCall:Lcom/android/internal/telephony/DriverCall;

    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mLivetalkCallTracker:Lcom/android/internal/telephony/LivetalkCallTracker;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mHasStarted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .end local v0    # "isConnAlive":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .restart local v0    # "isConnAlive":Z
    :cond_3
    :try_start_2
    iget-object v1, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mLivetalkCallTracker:Lcom/android/internal/telephony/LivetalkCallTracker;

    iget-object v2, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mConnection:Lcom/android/internal/telephony/Connection;

    iget-object v3, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mDrvierCall:Lcom/android/internal/telephony/DriverCall;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/LivetalkCallTracker;->onLiveTalkRealConnect(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private starRecognizeThread()V
    .locals 3

    .prologue
    new-instance v0, Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecognizeThread;

    iget-object v1, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mDataQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v2, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mRecognizeListener:Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecognizeThread$DTMFRecognizeListener;

    invoke-direct {v0, v1, v2}, Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecognizeThread;-><init>(Ljava/util/concurrent/BlockingQueue;Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecognizeThread$DTMFRecognizeListener;)V

    iput-object v0, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mRecognizeThread:Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecognizeThread;

    iget-object v0, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mRecognizeThread:Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecognizeThread;

    invoke-virtual {v0}, Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecognizeThread;->start()V

    return-void
.end method

.method private startMonitorTimerTask()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x3e8

    new-instance v0, Lmiui/telephony/dtmf/DTMFTaskManager$DTMFMonitorTimerTask;

    invoke-direct {v0, p0}, Lmiui/telephony/dtmf/DTMFTaskManager$DTMFMonitorTimerTask;-><init>(Lmiui/telephony/dtmf/DTMFTaskManager;)V

    iput-object v0, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mDTMFMonitorTimerTask:Lmiui/telephony/dtmf/DTMFTaskManager$DTMFMonitorTimerTask;

    new-instance v0, Ljava/util/Timer;

    const-string v1, "DTMFTaskManager"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mTimer:Ljava/util/Timer;

    iget-object v0, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mDTMFMonitorTimerTask:Lmiui/telephony/dtmf/DTMFTaskManager$DTMFMonitorTimerTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private startRecordThread()V
    .locals 3

    .prologue
    new-instance v0, Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecordThread;

    iget-object v1, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mDataQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v2, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mRecordListener:Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecordThread$DTMFRecordListener;

    invoke-direct {v0, v1, v2}, Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecordThread;-><init>(Ljava/util/concurrent/BlockingQueue;Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecordThread$DTMFRecordListener;)V

    iput-object v0, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mRecordThread:Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecordThread;

    iget-object v0, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mRecordThread:Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecordThread;

    invoke-virtual {v0}, Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecordThread;->start()V

    return-void
.end method

.method private stopMonitorTimerTask()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mDTMFMonitorTimerTask:Lmiui/telephony/dtmf/DTMFTaskManager$DTMFMonitorTimerTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mDTMFMonitorTimerTask:Lmiui/telephony/dtmf/DTMFTaskManager$DTMFMonitorTimerTask;

    invoke-virtual {v0}, Lmiui/telephony/dtmf/DTMFTaskManager$DTMFMonitorTimerTask;->cancel()Z

    iput-object v1, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mDTMFMonitorTimerTask:Lmiui/telephony/dtmf/DTMFTaskManager$DTMFMonitorTimerTask;

    :cond_0
    iget-object v0, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mTimer:Ljava/util/Timer;

    :cond_1
    return-void
.end method

.method private stopRecognizeThread()V
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mRecognizeThread:Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecognizeThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mRecognizeThread:Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecognizeThread;

    invoke-virtual {v0}, Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecognizeThread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mRecognizeThread:Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecognizeThread;

    :cond_0
    return-void
.end method

.method private stopRecordThread()V
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mRecordThread:Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecordThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mRecordThread:Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecordThread;

    invoke-virtual {v0}, Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecordThread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mRecordThread:Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecordThread;

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized startDTMFRecognize()V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v0, "DTMFTaskManager"

    const-string v1, "startDTMFRecognize"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mHasStarted:Z

    if-eqz v0, :cond_0

    const-string v0, "DTMFTaskManager"

    const-string v1, "startDTMFRecognize has started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lmiui/telephony/dtmf/DTMFTaskManager;->createAudioDataQueue()V

    invoke-direct {p0}, Lmiui/telephony/dtmf/DTMFTaskManager;->startRecordThread()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/telephony/dtmf/DTMFTaskManager;->mHasStarted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopDTMFRecognize()V
    .locals 2

    .prologue
    const-string v0, "DTMFTaskManager"

    const-string v1, "stopDTMFRecognize"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/telephony/dtmf/DTMFTaskManager;->onDTMFRecognizedFinished(Z)V

    return-void
.end method
