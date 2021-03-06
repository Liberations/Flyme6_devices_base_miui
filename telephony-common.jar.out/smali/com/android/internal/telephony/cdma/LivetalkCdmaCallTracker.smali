.class public Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;
.super Lcom/android/internal/telephony/LivetalkCallTracker;
.source "LivetalkCdmaCallTracker.java"


# static fields
.field public static final CALLWAITING_STATE_CHANGED:I = 0x1

.field public static final CURRENT_CALL_HAS_BEEN_ACCEPT:I = 0x0

.field public static final GO_ON_HANDLE_POLL_CALLS:I = 0x2

.field public static final TAG:Ljava/lang/String; = "LivetalkCdmaCallTracker"


# instance fields
.field private mCallTracker:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

.field mCallWaitingNumber:Ljava/lang/String;

.field private mDTMFTaskManager:Lmiui/telephony/dtmf/DTMFTaskManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaCallTracker;)V
    .locals 2
    .param p1, "cdmaCallTracker"    # Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    .prologue
    const/16 v1, 0x8

    invoke-direct {p0}, Lcom/android/internal/telephony/LivetalkCallTracker;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mCallTracker:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mFakeNumbers:[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mRawNumbers:[Ljava/lang/String;

    return-void
.end method

.method private startDTMF(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V
    .locals 2
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;
    .param p2, "dc"    # Lcom/android/internal/telephony/DriverCall;

    .prologue
    const-string v0, "LivetalkCdmaCallTracker"

    const-string v1, "startDTMF"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mDTMFTaskManager:Lmiui/telephony/dtmf/DTMFTaskManager;

    if-nez v0, :cond_0

    invoke-static {p0, p1, p2}, Lmiui/telephony/dtmf/DTMFTaskManager;->createDTMFTask(Lcom/android/internal/telephony/LivetalkCallTracker;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)Lmiui/telephony/dtmf/DTMFTaskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mDTMFTaskManager:Lmiui/telephony/dtmf/DTMFTaskManager;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mDTMFTaskManager:Lmiui/telephony/dtmf/DTMFTaskManager;

    invoke-virtual {v0}, Lmiui/telephony/dtmf/DTMFTaskManager;->startDTMFRecognize()V

    :cond_0
    return-void
.end method

.method private stopDTMF()V
    .locals 2

    .prologue
    const-string v0, "LivetalkCdmaCallTracker"

    const-string v1, "stopDTMF"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mDTMFTaskManager:Lmiui/telephony/dtmf/DTMFTaskManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mDTMFTaskManager:Lmiui/telephony/dtmf/DTMFTaskManager;

    invoke-virtual {v0}, Lmiui/telephony/dtmf/DTMFTaskManager;->stopDTMFRecognize()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mDTMFTaskManager:Lmiui/telephony/dtmf/DTMFTaskManager;

    :cond_0
    return-void
.end method


# virtual methods
.method public acceptBackCallInCallWaiting(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)Z
    .locals 7
    .param p1, "cw"    # Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v2, "LivetalkCdmaCallTracker"

    const-string v5, "acceptBackCallInCallWaiting"

    invoke-static {v2, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mCallTracker:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->isCallbackState(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mCallTracker:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaCall;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .local v0, "conn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mCallTracker:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->acceptCall()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mIsFakePendingMO:Z

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mCallTracker:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/LivetalkCallTracker;->acceptBackCall(Landroid/content/Context;)V

    const-string v2, "LivetalkCdmaCallTracker"

    const-string v4, "accept by livetalk of cw: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onDisconnect(I)Z

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mCallTracker:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaCall;->clearDisconnected()V

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->fakeReset(I)V

    .end local v0    # "conn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    :goto_2
    return v3

    :cond_0
    move v2, v4

    goto :goto_0

    .restart local v0    # "conn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    :catch_0
    move-exception v1

    .local v1, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v2, "LivetalkCdmaCallTracker"

    const-string v4, "answerCall: caught "

    invoke-static {v2, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v0    # "conn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    .end local v1    # "ex":Lcom/android/internal/telephony/CallStateException;
    :cond_1
    move v3, v4

    goto :goto_2
.end method

.method public dial(Z)V
    .locals 5
    .param p1, "isDialThreeWay"    # Z

    .prologue
    const-string v0, "LivetalkCdmaCallTracker"

    const-string v1, "dial %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mCallTracker:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onConnectedInOrOut()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mCallTracker:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->dial(Ljava/lang/String;)V

    return-void
.end method

.method public fakeReset(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->stopDTMF()V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mCallTracker:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    :cond_0
    const/16 v0, 0x8

    invoke-super {p0, p1, v0}, Lcom/android/internal/telephony/LivetalkCallTracker;->fakeReset(II)V

    return-void
.end method

.method public fakeResetAll()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->stopDTMF()V

    const/16 v0, 0x8

    invoke-super {p0, v0}, Lcom/android/internal/telephony/LivetalkCallTracker;->fakeResetAll(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mCallTracker:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    return-void
.end method

.method public getStateForConnection(Lcom/android/internal/telephony/DriverCall;ILcom/android/internal/telephony/cdma/CdmaConnection;)I
    .locals 4
    .param p1, "dc"    # Lcom/android/internal/telephony/DriverCall;
    .param p2, "i"    # I
    .param p3, "conn"    # Lcom/android/internal/telephony/cdma/CdmaConnection;

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    const-string v1, "LivetalkCdmaCallTracker"

    const-string v2, "getStateForConnection"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mFakeNumbers:[Ljava/lang/String;

    aget-object v1, v1, p2

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-eqz v1, :cond_2

    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mCallTracker:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v2, Lcom/android/internal/telephony/DriverCall$State;->INCOMING:Lcom/android/internal/telephony/DriverCall$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v2, Lcom/android/internal/telephony/DriverCall$State;->WAITING:Lcom/android/internal/telephony/DriverCall$State;

    if-ne v1, v2, :cond_1

    :cond_0
    const-string v1, "LivetalkCdmaCallTracker"

    const-string v2, "This incoming call has been acepted."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mRawNumbers:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v2, Lcom/android/internal/telephony/DriverCall$State;->INCOMING:Lcom/android/internal/telephony/DriverCall$State;

    if-eq v1, v2, :cond_2

    iget-object v1, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v2, Lcom/android/internal/telephony/DriverCall$State;->WAITING:Lcom/android/internal/telephony/DriverCall$State;

    if-eq v1, v2, :cond_2

    const-string v1, "LivetalkCdmaCallTracker"

    const-string v2, "State change of connected livetalk"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mFakeNumbers:[Ljava/lang/String;

    aget-object v0, v0, p2

    iput-object v0, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mCallWaitingNumber:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mCallWaitingNumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mRawNumbers:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mCallTracker:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mCallWaitingNumber:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mFakePendingMONumber:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->stopDTMF()V

    invoke-direct {p0, p3, p1}, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->startDTMF(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public handleCallWaitingInfoInLivetalk(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V
    .locals 2
    .param p1, "cw"    # Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    .prologue
    const-string v0, "LivetalkCdmaCallTracker"

    const-string v1, "handleCallWaitingInfoInLivetalk"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mCallTracker:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->isCallbackState(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->number:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mCallWaitingNumber:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mFakePendingMONumber:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->number:Ljava/lang/String;

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHandle(ILcom/android/internal/telephony/DriverCall;)Z
    .locals 11
    .param p1, "i"    # I
    .param p2, "dc"    # Lcom/android/internal/telephony/DriverCall;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v3, "LivetalkCdmaCallTracker"

    const-string v6, "isHandle %s %s"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    aput-object p2, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-static {v3}, Lmiui/telephony/livetalk/LivetalkUtils;->isLiveTalkCallbackNumber(Ljava/lang/String;)Z

    move-result v1

    .local v1, "isCallBackNumber":Z
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mCallTracker:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    if-nez v3, :cond_5

    move v3, v4

    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->isCallbackState(Z)Z

    move-result v2

    .local v2, "isCallBackState":Z
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mCallTracker:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mCallTracker:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v6, p2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-static {v3, v6, v1, v2}, Lcom/android/internal/telephony/LivetalkCallTracker;->recordDcInfoByFile(Landroid/content/Context;Ljava/lang/String;ZZ)V

    :cond_0
    const-string v3, "LivetalkCdmaCallTracker"

    const-string v6, "isHandle %s %s"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_8

    if-eqz v1, :cond_7

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mRawNumbers:[Ljava/lang/String;

    iget-object v6, p2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    aput-object v6, v3, p1

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mFakeNumbers:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mFakePendingMONumber:Ljava/lang/String;

    aput-object v6, v3, p1

    iput-boolean v5, p2, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mFakePendingMONumber:Ljava/lang/String;

    iput-object v3, p2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mCallTracker:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    iput p1, v3, Lcom/android/internal/telephony/cdma/CdmaConnection;->mIndex:I

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mCallTracker:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    new-instance v6, Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mCallTracker:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mCallTracker:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-direct {v6, v7, p2, v8, p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/cdma/CdmaCallTracker;I)V

    aput-object v6, v3, p1

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mCallTracker:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getCall()Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v3

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mCallTracker:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    if-ne v3, v6, :cond_6

    const-string v3, "LivetalkCdmaCallTracker"

    const-string v6, "Notify new ring "

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mCallTracker:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v3, v3, p1

    const/4 v6, 0x3

    iput v6, v3, Lcom/android/internal/telephony/cdma/CdmaConnection;->mCause:I

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mCallTracker:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mCallTracker:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v6, v6, p1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mCallTracker:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mCallTracker:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    aput-object v6, v3, p1

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mCallTracker:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iput-object v9, v3, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPendingMO:Lcom/android/internal/telephony/cdma/CdmaConnection;

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mFakePendingMONumber:Ljava/lang/String;

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mCallTracker:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->acceptCall()V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mIsFakePendingMO:Z

    const-string v3, "LivetalkCdmaCallTracker"

    const-string v6, "accept by livetalk"

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mCallTracker:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/LivetalkCallTracker;->acceptBackCall(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    if-nez v1, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    move v5, v4

    :cond_4
    return v5

    .end local v2    # "isCallBackState":Z
    :cond_5
    move v3, v5

    goto/16 :goto_0

    .restart local v2    # "isCallBackState":Z
    :cond_6
    const-string v3, "LivetalkCdmaCallTracker"

    const-string v6, "Phantom call appeared "

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v6, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    if-eq v3, v6, :cond_1

    iget-object v3, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v6, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    if-eq v3, v6, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mCallTracker:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onConnectedInOrOut()V

    iget-object v3, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v6, Lcom/android/internal/telephony/DriverCall$State;->HOLDING:Lcom/android/internal/telephony/DriverCall$State;

    if-ne v3, v6, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mCallTracker:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mConnections:[Lcom/android/internal/telephony/cdma/CdmaConnection;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onStartedHolding()V

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "LivetalkCdmaCallTracker"

    const-string v6, "Error for accepting callback by livetalk"

    invoke-static {v3, v6, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mCallTracker:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v9}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    const-string v3, "LivetalkCdmaCallTracker"

    const-string v6, "reject by livetalk in callback state"

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_8
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mCallTracker:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v9}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    const-string v3, "LivetalkCdmaCallTracker"

    const-string v6, "reject a callback by livetalk out of callback state"

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public isStartDTMF(ILcom/android/internal/telephony/cdma/CdmaConnection;Lcom/android/internal/telephony/DriverCall;)Z
    .locals 5
    .param p1, "i"    # I
    .param p2, "conn"    # Lcom/android/internal/telephony/cdma/CdmaConnection;
    .param p3, "dc"    # Lcom/android/internal/telephony/DriverCall;

    .prologue
    const/4 v4, 0x0

    const-string v0, "LivetalkCdmaCallTracker"

    const-string v1, "isStartDTMF %s %s %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public onLiveTalkRealConnect(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V
    .locals 6
    .param p1, "connection"    # Lcom/android/internal/telephony/Connection;
    .param p2, "dc"    # Lcom/android/internal/telephony/DriverCall;

    .prologue
    check-cast p1, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .end local p1    # "connection":Lcom/android/internal/telephony/Connection;
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v0

    .local v0, "isChange":Z
    const-string v1, "LivetalkCdmaCallTracker"

    const-string v2, "onLiveTalkRealConnect %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mCallTracker:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->clearDisconnected()V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mCallTracker:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->clearDisconnected()V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mCallTracker:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCall;->clearDisconnected()V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/LivetalkCdmaCallTracker;->mCallTracker:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyPreciseCallStateChanged()V

    :cond_0
    return-void
.end method
