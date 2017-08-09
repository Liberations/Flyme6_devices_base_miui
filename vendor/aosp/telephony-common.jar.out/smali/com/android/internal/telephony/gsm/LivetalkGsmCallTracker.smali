.class public Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;
.super Lcom/android/internal/telephony/LivetalkCallTracker;
.source "LivetalkGsmCallTracker.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "LivetalkGsmCallTracker"


# instance fields
.field private mCallTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

.field private mDTMFTaskManager:Lmiui/telephony/dtmf/DTMFTaskManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GsmCallTracker;)V
    .locals 2
    .param p1, "callTracker"    # Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .prologue
    const/16 v1, 0x13

    invoke-direct {p0}, Lcom/android/internal/telephony/LivetalkCallTracker;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mCallTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mFakeNumbers:[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mRawNumbers:[Ljava/lang/String;

    return-void
.end method

.method private startDTMF(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V
    .locals 2
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;
    .param p2, "dc"    # Lcom/android/internal/telephony/DriverCall;

    .prologue
    const-string v0, "LivetalkGsmCallTracker"

    const-string v1, "startDTMF"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mDTMFTaskManager:Lmiui/telephony/dtmf/DTMFTaskManager;

    if-nez v0, :cond_0

    invoke-static {p0, p1, p2}, Lmiui/telephony/dtmf/DTMFTaskManager;->createDTMFTask(Lcom/android/internal/telephony/LivetalkCallTracker;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)Lmiui/telephony/dtmf/DTMFTaskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mDTMFTaskManager:Lmiui/telephony/dtmf/DTMFTaskManager;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mDTMFTaskManager:Lmiui/telephony/dtmf/DTMFTaskManager;

    invoke-virtual {v0}, Lmiui/telephony/dtmf/DTMFTaskManager;->startDTMFRecognize()V

    :cond_0
    return-void
.end method

.method private stopDTMF()V
    .locals 2

    .prologue
    const-string v0, "LivetalkGsmCallTracker"

    const-string v1, "stopDTMF"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mDTMFTaskManager:Lmiui/telephony/dtmf/DTMFTaskManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mDTMFTaskManager:Lmiui/telephony/dtmf/DTMFTaskManager;

    invoke-virtual {v0}, Lmiui/telephony/dtmf/DTMFTaskManager;->stopDTMFRecognize()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mDTMFTaskManager:Lmiui/telephony/dtmf/DTMFTaskManager;

    :cond_0
    return-void
.end method


# virtual methods
.method public fakeReset(I)V
    .locals 5
    .param p1, "i"    # I

    .prologue
    const/4 v4, 0x0

    const-string v0, "LivetalkGsmCallTracker"

    const-string v1, "fakeReset %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->stopDTMF()V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mIsFakePendingMO:Z

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mCallTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    :cond_0
    const/16 v0, 0x13

    invoke-super {p0, p1, v0}, Lcom/android/internal/telephony/LivetalkCallTracker;->fakeReset(II)V

    return-void
.end method

.method public fakeResetAll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "LivetalkGsmCallTracker"

    const-string v1, "fakeResetAll"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->stopDTMF()V

    const/16 v0, 0x13

    invoke-super {p0, v0}, Lcom/android/internal/telephony/LivetalkCallTracker;->fakeResetAll(I)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mCallTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mCallTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    return-void
.end method

.method public isCurrentInComingCallBeenAccpent(Lcom/android/internal/telephony/DriverCall;IZ)Z
    .locals 6
    .param p1, "dc"    # Lcom/android/internal/telephony/DriverCall;
    .param p2, "i"    # I
    .param p3, "isConnectNull"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "LivetalkGsmCallTracker"

    const-string v3, "isCurrentInComingCallBeenAccpent"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mFakeNumbers:[Ljava/lang/String;

    aget-object v2, v2, p2

    if-eqz v2, :cond_2

    const-string v2, "LivetalkGsmCallTracker"

    const-string v3, "info: %s %s %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x2

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-eqz v2, :cond_2

    if-nez p3, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mCallTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    if-nez v2, :cond_1

    iget-object v2, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v3, Lcom/android/internal/telephony/DriverCall$State;->INCOMING:Lcom/android/internal/telephony/DriverCall$State;

    if-eq v2, v3, :cond_0

    iget-object v2, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v3, Lcom/android/internal/telephony/DriverCall$State;->WAITING:Lcom/android/internal/telephony/DriverCall$State;

    if-ne v2, v3, :cond_1

    :cond_0
    const-string v1, "LivetalkGsmCallTracker"

    const-string v2, "This incoming call has been acepted."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_1
    iget-object v0, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mRawNumbers:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v2, Lcom/android/internal/telephony/DriverCall$State;->INCOMING:Lcom/android/internal/telephony/DriverCall$State;

    if-eq v0, v2, :cond_2

    iget-object v0, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v2, Lcom/android/internal/telephony/DriverCall$State;->WAITING:Lcom/android/internal/telephony/DriverCall$State;

    if-eq v0, v2, :cond_2

    const-string v0, "LivetalkGsmCallTracker"

    const-string v2, "State change of connected livetalk"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mFakeNumbers:[Ljava/lang/String;

    aget-object v0, v0, p2

    iput-object v0, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public isHandle(ILcom/android/internal/telephony/DriverCall;)Z
    .locals 2
    .param p1, "i"    # I
    .param p2, "dc"    # Lcom/android/internal/telephony/DriverCall;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->isHandle(ILcom/android/internal/telephony/DriverCall;ZLcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;)Z

    move-result v0

    return v0
.end method

.method public isHandle(ILcom/android/internal/telephony/DriverCall;ZLcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;)Z
    .locals 8
    .param p1, "i"    # I
    .param p2, "dc"    # Lcom/android/internal/telephony/DriverCall;
    .param p3, "isSRVCCLiveTalkConn"    # Z
    .param p4, "liveTalkImsCallTracker"    # Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;

    .prologue
    iget-object v4, p2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-static {v4}, Lmiui/telephony/livetalk/LivetalkUtils;->isLiveTalkCallbackNumber(Ljava/lang/String;)Z

    move-result v1

    .local v1, "isCallbackNumber":Z
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mCallTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    if-nez v4, :cond_3

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->isCallbackState(Z)Z

    move-result v2

    .local v2, "isCallbackState":Z
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mCallTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mCallTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-static {v4, v5, v1, v2}, Lcom/android/internal/telephony/LivetalkCallTracker;->recordDcInfoByFile(Landroid/content/Context;Ljava/lang/String;ZZ)V

    :cond_0
    const-string v4, "LivetalkGsmCallTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isHandle isCallbackNumber="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isCallbackState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isSRVCCLiveTalkConn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mRawNumbers:[Ljava/lang/String;

    iget-object v5, p2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    aput-object v5, v4, p1

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mFakeNumbers:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mFakePendingMONumber:Ljava/lang/String;

    aput-object v5, v4, p1

    const/4 v4, 0x0

    iput-boolean v4, p2, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mFakePendingMONumber:Ljava/lang/String;

    iput-object v4, p2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mCallTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    iput p1, v4, Lcom/android/internal/telephony/gsm/GsmConnection;->mIndex:I

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mCallTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    new-instance v5, Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mCallTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mCallTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-direct {v5, v6, p2, v7, p1}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/GsmCallTracker;I)V

    aput-object v5, v4, p1

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mCallTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v4, v4, p1

    const/4 v5, 0x3

    iput v5, v4, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:I

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mCallTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mCallTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mCallTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mCallTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    aput-object v5, v4, p1

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mCallTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mFakePendingMONumber:Ljava/lang/String;

    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mCallTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->acceptCall()V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mIsFakePendingMO:Z

    const-string v4, "LivetalkGsmCallTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "accept by livetalk: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mCallTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/LivetalkCallTracker;->acceptBackCall(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    if-eqz v2, :cond_a

    :cond_2
    const/4 v4, 0x1

    :goto_2
    return v4

    .end local v2    # "isCallbackState":Z
    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_0

    .restart local v2    # "isCallbackState":Z
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "LivetalkGsmCallTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error for accepting callback by livetalk: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    if-nez v2, :cond_7

    if-eqz v1, :cond_7

    if-nez p3, :cond_7

    if-eqz p4, :cond_5

    invoke-virtual {p4}, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->getFakeMoConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v3

    .local v3, "liveTalkFakeMoConnection":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :goto_3
    if-nez v3, :cond_6

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mCallTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    const-string v4, "LivetalkGsmCallTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "liveTalkFakeMoConnection is null, reject a callback by livetalk dc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    goto :goto_2

    .end local v3    # "liveTalkFakeMoConnection":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :cond_5
    const/4 v3, 0x0

    goto :goto_3

    .restart local v3    # "liveTalkFakeMoConnection":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :cond_6
    const-string v4, "LivetalkGsmCallTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found fake mo connection in ims call tracker: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mRawNumbers:[Ljava/lang/String;

    iget-object v5, p2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    aput-object v5, v4, p1

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mFakeNumbers:[Ljava/lang/String;

    iget-object v5, p4, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->mFakePendingMONumber:Ljava/lang/String;

    aput-object v5, v4, p1

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mFakePendingMONumber:Ljava/lang/String;

    invoke-virtual {p4}, Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;->fakeResetAll()V

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mCallTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    new-instance v5, Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mCallTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mCallTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-direct {v5, v6, p2, v7, p1}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/GsmCallTracker;I)V

    aput-object v5, v4, p1

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mCallTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v4, v4, p1

    const/4 v5, 0x3

    iput v5, v4, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:I

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mCallTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mCallTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mCallTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->acceptCall()V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mIsFakePendingMO:Z

    const-string v4, "LivetalkGsmCallTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "accept by livetalk: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mCallTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/LivetalkCallTracker;->acceptBackCall(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    const/4 v4, 0x0

    iput-boolean v4, p2, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mFakeNumbers:[Ljava/lang/String;

    aget-object v4, v4, p1

    iput-object v4, p2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    sget-object v4, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    iput-object v4, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mCallTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    new-instance v5, Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mCallTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mCallTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-direct {v5, v6, p2, v7, p1}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/GsmCallTracker;I)V

    aput-object v5, v4, p1

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mCallTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v4, v4, p1

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/gsm/GsmConnection;->migrateFrom(Lcom/android/internal/telephony/Connection;)V

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mCallTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mCallTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/imsphone/ImsPhone;

    check-cast v4, Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mCallTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyHandoverStateChanged(Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v4, "LivetalkGsmCallTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error for accepting callback by livetalk: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "liveTalkFakeMoConnection":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :cond_7
    if-nez v2, :cond_8

    if-eqz p3, :cond_8

    const-string v4, "LivetalkGsmCallTracker"

    const-string v5, "livetalk connection handover, don\'t hangup it"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_8
    if-nez v2, :cond_9

    if-eqz v1, :cond_1

    :cond_9
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mCallTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    const-string v4, "LivetalkGsmCallTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reject a callback by livetalk dc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_2
.end method

.method public isStartDTMF(ILcom/android/internal/telephony/gsm/GsmConnection;Lcom/android/internal/telephony/DriverCall;)Z
    .locals 5
    .param p1, "i"    # I
    .param p2, "conn"    # Lcom/android/internal/telephony/gsm/GsmConnection;
    .param p3, "dc"    # Lcom/android/internal/telephony/DriverCall;

    .prologue
    const/4 v4, 0x0

    const-string v0, "LivetalkGsmCallTracker"

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
    const-string v1, "LivetalkGsmCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLiveTalkRealConnect connection="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", dc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p1, Lcom/android/internal/telephony/gsm/GsmConnection;

    .end local p1    # "connection":Lcom/android/internal/telephony/Connection;
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/gsm/GsmConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v0

    .local v0, "isChange":Z
    const-string v1, "LivetalkGsmCallTracker"

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

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mCallTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->clearDisconnected()V

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mCallTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->clearDisconnected()V

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mCallTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->clearDisconnected()V

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LivetalkGsmCallTracker;->mCallTracker:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    :cond_0
    return-void
.end method

.method public restartDTMFRecognizeInGSM(Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;)V
    .locals 0
    .param p1, "dc"    # Lcom/android/internal/telephony/DriverCall;
    .param p2, "conn"    # Lcom/android/internal/telephony/Connection;
    .param p3, "liveTalkImsCallTracker"    # Lcom/android/internal/telephony/imsphone/LivetalkImsCallTracker;

    .prologue
    return-void
.end method
