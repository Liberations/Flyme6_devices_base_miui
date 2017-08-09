.class Lmiui/telephony/RegInfoMonitor$RegInfoRecord;
.super Ljava/lang/Object;
.source "RegInfoMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/RegInfoMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RegInfoRecord"
.end annotation


# static fields
.field private static final INVALID_TIME:J = -0xaL

.field private static final INVALID_VAL:I = -0xa


# instance fields
.field private mCid:I

.field private mEndTime:J

.field private mIsGsm:Z

.field private mLac:I

.field private mRejCode:I

.field private mRejTimestamp:J

.field private mStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->reset()V

    return-void
.end method

.method static synthetic access$000(Lmiui/telephony/RegInfoMonitor$RegInfoRecord;)I
    .locals 1
    .param p0, "x0"    # Lmiui/telephony/RegInfoMonitor$RegInfoRecord;

    .prologue
    iget v0, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mLac:I

    return v0
.end method

.method static synthetic access$100(Lmiui/telephony/RegInfoMonitor$RegInfoRecord;)I
    .locals 1
    .param p0, "x0"    # Lmiui/telephony/RegInfoMonitor$RegInfoRecord;

    .prologue
    iget v0, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mCid:I

    return v0
.end method

.method static synthetic access$102(Lmiui/telephony/RegInfoMonitor$RegInfoRecord;I)I
    .locals 0
    .param p0, "x0"    # Lmiui/telephony/RegInfoMonitor$RegInfoRecord;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mCid:I

    return p1
.end method

.method static synthetic access$202(Lmiui/telephony/RegInfoMonitor$RegInfoRecord;Z)Z
    .locals 0
    .param p0, "x0"    # Lmiui/telephony/RegInfoMonitor$RegInfoRecord;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mIsGsm:Z

    return p1
.end method

.method static synthetic access$300(Lmiui/telephony/RegInfoMonitor$RegInfoRecord;)I
    .locals 1
    .param p0, "x0"    # Lmiui/telephony/RegInfoMonitor$RegInfoRecord;

    .prologue
    iget v0, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mRejCode:I

    return v0
.end method

.method static synthetic access$302(Lmiui/telephony/RegInfoMonitor$RegInfoRecord;I)I
    .locals 0
    .param p0, "x0"    # Lmiui/telephony/RegInfoMonitor$RegInfoRecord;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mRejCode:I

    return p1
.end method

.method static synthetic access$402(Lmiui/telephony/RegInfoMonitor$RegInfoRecord;J)J
    .locals 1
    .param p0, "x0"    # Lmiui/telephony/RegInfoMonitor$RegInfoRecord;
    .param p1, "x1"    # J

    .prologue
    iput-wide p1, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mRejTimestamp:J

    return-wide p1
.end method

.method static synthetic access$500(Lmiui/telephony/RegInfoMonitor$RegInfoRecord;)J
    .locals 2
    .param p0, "x0"    # Lmiui/telephony/RegInfoMonitor$RegInfoRecord;

    .prologue
    iget-wide v0, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$600(Lmiui/telephony/RegInfoMonitor$RegInfoRecord;)J
    .locals 2
    .param p0, "x0"    # Lmiui/telephony/RegInfoMonitor$RegInfoRecord;

    .prologue
    iget-wide v0, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mEndTime:J

    return-wide v0
.end method


# virtual methods
.method public from(Lmiui/telephony/RegInfoMonitor$RegInfoRecord;)V
    .locals 2
    .param p1, "r"    # Lmiui/telephony/RegInfoMonitor$RegInfoRecord;

    .prologue
    iget v0, p1, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mLac:I

    iput v0, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mLac:I

    iget v0, p1, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mCid:I

    iput v0, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mCid:I

    iget-wide v0, p1, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mStartTime:J

    iput-wide v0, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mStartTime:J

    iget-wide v0, p1, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mEndTime:J

    iput-wide v0, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mEndTime:J

    iget v0, p1, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mRejCode:I

    iput v0, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mRejCode:I

    iget-wide v0, p1, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mRejTimestamp:J

    iput-wide v0, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mRejTimestamp:J

    iget-boolean v0, p1, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mIsGsm:Z

    iput-boolean v0, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mIsGsm:Z

    return-void
.end method

.method public getLacDuration()J
    .locals 4

    .prologue
    const-wide/16 v0, -0xa

    iget-wide v2, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mStartTime:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mEndTime:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    iget-wide v0, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mEndTime:J

    iget-wide v2, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mStartTime:J

    sub-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method public logLacEnd()V
    .locals 2

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mEndTime:J

    return-void
.end method

.method public logLacStart(IIZ)V
    .locals 2
    .param p1, "lac"    # I
    .param p2, "cid"    # I
    .param p3, "isGsm"    # Z

    .prologue
    iput p1, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mLac:I

    iput p2, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mCid:I

    iput-boolean p3, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mIsGsm:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mStartTime:J

    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    const-wide/16 v2, -0xa

    const/16 v0, -0xa

    iput v0, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mLac:I

    iput v0, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mCid:I

    iput v0, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mRejCode:I

    iput-wide v2, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mStartTime:J

    iput-wide v2, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mEndTime:J

    iput-wide v2, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mRejTimestamp:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mIsGsm:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const-string v0, "lac = %s, cid = %s, startTime = %s, endTime = %s, regCode = %s,rejTimestamp = %s"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mLac:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mCid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v4, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mStartTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-wide v4, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mEndTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mRejCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-wide v4, p0, Lmiui/telephony/RegInfoMonitor$RegInfoRecord;->mRejTimestamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
