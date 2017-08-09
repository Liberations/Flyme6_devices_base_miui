.class public Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;
.super Landroid/os/Handler;
.source "MiuiIccFileHandler.java"


# static fields
.field private static final EVENT_GET_RECORD_SIZE:I = 0x1


# instance fields
.field private mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field private final mRecordSizes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<[I>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    .locals 1
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;

    .prologue
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mRecordSizes:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    return-void
.end method

.method private getEFPath(I)Ljava/lang/String;
    .locals 1
    .param p1, "fileid"    # I

    .prologue
    const/16 v0, 0x6f3a

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private loadEFLinearFixed(IILcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;)V
    .locals 11
    .param p1, "recordSize"    # I
    .param p2, "recordCount"    # I
    .param p3, "lc"    # Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .prologue
    const/4 v7, 0x0

    iget-boolean v0, p3, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mLoadAll:Z

    if-nez v0, :cond_1

    iget v0, p3, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    if-lez v0, :cond_1

    iput p1, p3, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xb2

    iget v2, p3, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    iget-object v3, p3, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mPath:Ljava/lang/String;

    iget v4, p3, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    const/4 v5, 0x4

    iget v6, p3, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v9, v8, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v10, 0x7

    invoke-virtual {v8, v10, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    move-object v8, v7

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void

    :cond_1
    iget-boolean v0, p3, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mLoadAll:Z

    if-eqz v0, :cond_0

    iput p1, p3, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    iput p2, p3, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mCountRecords:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p3, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private loadEFLinearFixed(Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;)V
    .locals 6
    .param p1, "lc"    # Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .prologue
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mRecordSizes:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .local v1, "sa":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mRecordSizes:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mPath:Ljava/lang/String;

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .local v0, "recordSize":[I
    :goto_0
    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget v3, p1, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    iget-object v4, p1, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mPath:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {p0, v5, p1}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILjava/lang/String;Landroid/os/Message;)V

    :goto_1
    return-void

    .end local v0    # "recordSize":[I
    :cond_0
    iget v2, p1, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .restart local v0    # "recordSize":[I
    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v3, v0, v3

    invoke-direct {p0, v2, v3, p1}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->loadEFLinearFixed(IILcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;)V

    goto :goto_1
.end method


# virtual methods
.method public getEFLinearRecordSize(ILandroid/os/Message;)V
    .locals 1
    .param p1, "fileid"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->getEFLinearRecordSize(ILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public getEFLinearRecordSize(ILjava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "fileid"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "onLoaded"    # Landroid/os/Message;

    .prologue
    if-nez p2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mRecordSizes:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .local v2, "sa":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .local v1, "result":[I
    if-eqz v1, :cond_2

    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iput-object v1, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .end local v1    # "result":[I
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mRecordSizes:Ljava/util/HashMap;

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v3, p2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    new-instance v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v0, p1, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    .local v0, "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    iput-object p2, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mPath:Ljava/lang/String;

    const/4 v3, -0x1

    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mLoadAll:Z

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v4, 0x1

    invoke-virtual {p0, v4, v0}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, p1, p2, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .local v1, "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, v1, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;

    iget-object v3, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    iget-object v3, v1, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;

    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, v1, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_1
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v2, v3

    check-cast v2, [I

    .local v2, "result":[I
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mRecordSizes:Ljava/util/HashMap;

    iget-object v4, v1, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    iget v4, v1, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-boolean v3, v1, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mLoadAll:Z

    if-nez v3, :cond_2

    iget v3, v1, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    if-gez v3, :cond_2

    iget-object v3, v1, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;

    iget-object v3, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    iget-object v3, v1, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;

    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, v1, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    aget v3, v2, v3

    const/4 v4, 0x2

    aget v4, v2, v4

    invoke-direct {p0, v3, v4, v1}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->loadEFLinearFixed(IILcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public loadEFImgLinearFixed(ILandroid/os/Message;)V
    .locals 1
    .param p1, "recordNum"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFImgLinearFixed(ILandroid/os/Message;)V

    return-void
.end method

.method public loadEFImgTransparent(IIIILandroid/os/Message;)V
    .locals 6
    .param p1, "fileid"    # I
    .param p2, "highOffset"    # I
    .param p3, "lowOffset"    # I
    .param p4, "length"    # I
    .param p5, "onLoaded"    # Landroid/os/Message;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFImgTransparent(IIIILandroid/os/Message;)V

    return-void
.end method

.method public loadEFLinearFixed(IIILandroid/os/Message;)V
    .locals 6
    .param p1, "fileid"    # I
    .param p2, "recordSize"    # I
    .param p3, "recordNum"    # I
    .param p4, "onLoaded"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->loadEFLinearFixed(ILjava/lang/String;IILandroid/os/Message;)V

    return-void
.end method

.method public loadEFLinearFixed(IILandroid/os/Message;)V
    .locals 1
    .param p1, "fileid"    # I
    .param p2, "recordNum"    # I
    .param p3, "onLoaded"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->loadEFLinearFixed(ILjava/lang/String;ILandroid/os/Message;)V

    return-void
.end method

.method public loadEFLinearFixed(ILjava/lang/String;IILandroid/os/Message;)V
    .locals 2
    .param p1, "fileid"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "recordSize"    # I
    .param p4, "recordNum"    # I
    .param p5, "onLoaded"    # Landroid/os/Message;

    .prologue
    if-nez p2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    new-instance v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v0, p1, p4, p2, p5}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(IILjava/lang/String;Landroid/os/Message;)V

    .local v0, "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    const/4 v1, 0x0

    invoke-direct {p0, p3, v1, v0}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->loadEFLinearFixed(IILcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;)V

    return-void
.end method

.method public loadEFLinearFixed(ILjava/lang/String;ILandroid/os/Message;)V
    .locals 1
    .param p1, "fileid"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "recordNum"    # I
    .param p4, "onLoaded"    # Landroid/os/Message;

    .prologue
    if-nez p2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    new-instance v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v0, p1, p3, p2, p4}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(IILjava/lang/String;Landroid/os/Message;)V

    .local v0, "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->loadEFLinearFixed(Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;)V

    return-void
.end method

.method public loadEFLinearFixedAll(IIILandroid/os/Message;)V
    .locals 6
    .param p1, "fileid"    # I
    .param p2, "recordSize"    # I
    .param p3, "recordCount"    # I
    .param p4, "onLoaded"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->loadEFLinearFixedAll(ILjava/lang/String;IILandroid/os/Message;)V

    return-void
.end method

.method public loadEFLinearFixedAll(ILandroid/os/Message;)V
    .locals 1
    .param p1, "fileid"    # I
    .param p2, "onLoaded"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->loadEFLinearFixedAll(ILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public loadEFLinearFixedAll(ILjava/lang/String;IILandroid/os/Message;)V
    .locals 1
    .param p1, "fileid"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "recordSize"    # I
    .param p4, "recordCount"    # I
    .param p5, "onLoaded"    # Landroid/os/Message;

    .prologue
    if-nez p2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    new-instance v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v0, p1, p2, p5}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(ILjava/lang/String;Landroid/os/Message;)V

    .local v0, "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    invoke-direct {p0, p3, p4, v0}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->loadEFLinearFixed(IILcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;)V

    return-void
.end method

.method public loadEFLinearFixedAll(ILjava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "fileid"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "onLoaded"    # Landroid/os/Message;

    .prologue
    if-nez p2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    new-instance v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(ILjava/lang/String;Landroid/os/Message;)V

    .local v0, "lc":Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->loadEFLinearFixed(Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;)V

    return-void
.end method

.method public loadEFTransparent(ILjava/lang/String;IILandroid/os/Message;)V
    .locals 12
    .param p1, "fileid"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "offset"    # I
    .param p4, "size"    # I
    .param p5, "onLoaded"    # Landroid/os/Message;

    .prologue
    if-nez p2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v2, 0x5

    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v1, v2, p1, v3, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .local v11, "response":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v1, v1, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xb0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v10, v3, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move v3, p1

    move-object v4, p2

    move v6, p3

    move/from16 v7, p4

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "fileid"    # I
    .param p2, "recordNum"    # I
    .param p3, "data"    # [B
    .param p4, "pin2"    # Ljava/lang/String;
    .param p5, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->updateEFLinearFixed(ILjava/lang/String;I[BLjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public updateEFLinearFixed(ILjava/lang/String;I[BLjava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "fileid"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "recordNum"    # I
    .param p4, "data"    # [B
    .param p5, "pin2"    # Ljava/lang/String;
    .param p6, "onComplete"    # Landroid/os/Message;

    .prologue
    if-nez p2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(ILjava/lang/String;I[BLjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public updateEFTransparent(I[BLandroid/os/Message;)V
    .locals 1
    .param p1, "fileid"    # I
    .param p2, "data"    # [B
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/MiuiIccFileHandler;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    return-void
.end method
