.class public Lcom/meizu/common/alphame/AlphaMe;
.super Ljava/lang/Object;
.source "AlphaMe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/alphame/AlphaMe$Instance;,
        Lcom/meizu/common/alphame/AlphaMe$AlphaMeClient;,
        Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;,
        Lcom/meizu/common/alphame/AlphaMe$ResultReceiver;,
        Lcom/meizu/common/alphame/AlphaMe$ServerDeathRecipient;,
        Lcom/meizu/common/alphame/AlphaMe$MyResultReceiver;
    }
.end annotation


# static fields
.field private static final BINDER_DIED_MSG:I = 0x0

.field public static final SERVER_NAME:Ljava/lang/String; = "alphame_server"

.field private static final TAG:Ljava/lang/String; = "AlphaMe"


# instance fields
.field private final mActionReceiverArray:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private mClient:Lcom/meizu/common/alphame/AlphaMe$AlphaMeClient;

.field private mHandler:Landroid/os/Handler;

.field private mInitialized:Z

.field private final mPendingReceiver:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mResultReceiverArray:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/meizu/common/alphame/AlphaMe$ResultReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/meizu/common/alphame/IAlphaMe;


# direct methods
.method static synthetic -get0(Lcom/meizu/common/alphame/AlphaMe;)Landroid/util/LongSparseArray;
    .locals 1

    iget-object v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mActionReceiverArray:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method static synthetic -get1(Lcom/meizu/common/alphame/AlphaMe;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/meizu/common/alphame/AlphaMe;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mInitialized:Z

    return v0
.end method

.method static synthetic -get3(Lcom/meizu/common/alphame/AlphaMe;)Landroid/util/LongSparseArray;
    .locals 1

    iget-object v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mPendingReceiver:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method static synthetic -get4(Lcom/meizu/common/alphame/AlphaMe;)Landroid/util/LongSparseArray;
    .locals 1

    iget-object v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mResultReceiverArray:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method static synthetic -get5(Lcom/meizu/common/alphame/AlphaMe;)Lcom/meizu/common/alphame/IAlphaMe;
    .locals 1

    iget-object v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mService:Lcom/meizu/common/alphame/IAlphaMe;

    return-object v0
.end method

.method static synthetic -set0(Lcom/meizu/common/alphame/AlphaMe;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/meizu/common/alphame/AlphaMe;->mInitialized:Z

    return p1
.end method

.method static synthetic -set1(Lcom/meizu/common/alphame/AlphaMe;Lcom/meizu/common/alphame/IAlphaMe;)Lcom/meizu/common/alphame/IAlphaMe;
    .locals 0

    iput-object p1, p0, Lcom/meizu/common/alphame/AlphaMe;->mService:Lcom/meizu/common/alphame/IAlphaMe;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/meizu/common/alphame/AlphaMe;I)Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;
    .locals 1
    .param p1, "receiver"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/meizu/common/alphame/AlphaMe;->getActionReceiver(I)Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/meizu/common/alphame/AlphaMe;I)Lcom/meizu/common/alphame/AlphaMe$ResultReceiver;
    .locals 1
    .param p1, "receiver"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/meizu/common/alphame/AlphaMe;->getResultReceiver(I)Lcom/meizu/common/alphame/AlphaMe$ResultReceiver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/meizu/common/alphame/AlphaMe;I)V
    .locals 0
    .param p1, "receiver"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/meizu/common/alphame/AlphaMe;->removeResultReceiver(I)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mResultReceiverArray:Landroid/util/LongSparseArray;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mActionReceiverArray:Landroid/util/LongSparseArray;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mPendingReceiver:Landroid/util/LongSparseArray;

    invoke-direct {p0}, Lcom/meizu/common/alphame/AlphaMe;->initializeIfNeed()V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/meizu/common/alphame/AlphaMe$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/meizu/common/alphame/AlphaMe$1;-><init>(Lcom/meizu/common/alphame/AlphaMe;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/common/alphame/AlphaMe;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/meizu/common/alphame/AlphaMe;-><init>()V

    return-void
.end method

.method private addActionReceiver(Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;)Z
    .locals 4
    .param p1, "receiver"    # Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mActionReceiverArray:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    const/16 v1, 0x18

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mActionReceiverArray:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;->getId()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    const-string v0, "AlphaMe"

    const-string v1, "Register too many receivers"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private addResultReceiver(Lcom/meizu/common/alphame/AlphaMe$ResultReceiver;)Z
    .locals 4
    .param p1, "receiver"    # Lcom/meizu/common/alphame/AlphaMe$ResultReceiver;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mResultReceiverArray:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mResultReceiverArray:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Lcom/meizu/common/alphame/AlphaMe$ResultReceiver;->getId()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    const-string v0, "AlphaMe"

    const-string v1, "Invoke too much"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private varargs execute(Lcom/meizu/common/alphame/AlphaMe$ResultReceiver;ZLjava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p1, "receiver"    # Lcom/meizu/common/alphame/AlphaMe$ResultReceiver;
    .param p2, "sync"    # Z
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .prologue
    invoke-direct {p0}, Lcom/meizu/common/alphame/AlphaMe;->initializeIfNeed()V

    iget-boolean v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mInitialized:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/meizu/common/alphame/AlphaMe;->addResultReceiver(Lcom/meizu/common/alphame/AlphaMe$ResultReceiver;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mService:Lcom/meizu/common/alphame/IAlphaMe;

    iget-object v1, p0, Lcom/meizu/common/alphame/AlphaMe;->mClient:Lcom/meizu/common/alphame/AlphaMe$AlphaMeClient;

    invoke-virtual {v1}, Lcom/meizu/common/alphame/AlphaMe$AlphaMeClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v3, Lcom/meizu/common/alphame/Args;

    invoke-direct {v3, p4}, Lcom/meizu/common/alphame/Args;-><init>([Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {p1}, Lcom/meizu/common/alphame/AlphaMe$ResultReceiver;->getId()I

    move-result v5

    move-object v2, p3

    invoke-interface/range {v0 .. v5}, Lcom/meizu/common/alphame/IAlphaMe;->exec(Landroid/os/IBinder;Ljava/lang/String;Lcom/meizu/common/alphame/Args;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "AlphaMe"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Execute exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/meizu/common/alphame/AlphaMe$ResultReceiver;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/common/alphame/AlphaMe;->removeResultReceiver(I)V

    goto :goto_1
.end method

.method private getActionReceiver(I)Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;
    .locals 4
    .param p1, "receiver"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mActionReceiverArray:Landroid/util/LongSparseArray;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getInstance()Lcom/meizu/common/alphame/AlphaMe;
    .locals 1

    .prologue
    invoke-static {}, Lcom/meizu/common/alphame/AlphaMe$Instance;->-get0()Lcom/meizu/common/alphame/AlphaMe;

    move-result-object v0

    return-object v0
.end method

.method private getResultReceiver(I)Lcom/meizu/common/alphame/AlphaMe$ResultReceiver;
    .locals 4
    .param p1, "receiver"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mResultReceiverArray:Landroid/util/LongSparseArray;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/alphame/AlphaMe$ResultReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initializeIfNeed()V
    .locals 6

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/meizu/common/alphame/AlphaMe;->mInitialized:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/meizu/common/alphame/AlphaMe;->mService:Lcom/meizu/common/alphame/IAlphaMe;

    if-nez v1, :cond_0

    const-string v1, "alphame_server"

    invoke-static {v1}, Lcom/meizu/common/alphame/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/common/alphame/AlphaMeNative;->asInterface(Landroid/os/IBinder;)Lcom/meizu/common/alphame/IAlphaMe;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/alphame/AlphaMe;->mService:Lcom/meizu/common/alphame/IAlphaMe;

    :cond_0
    iget-object v1, p0, Lcom/meizu/common/alphame/AlphaMe;->mService:Lcom/meizu/common/alphame/IAlphaMe;

    if-nez v1, :cond_1

    const-string v1, "AlphaMe"

    const-string v2, "Can\'t find %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "alphame_server"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/meizu/common/alphame/AlphaMe;->mService:Lcom/meizu/common/alphame/IAlphaMe;

    invoke-interface {v1}, Lcom/meizu/common/alphame/IAlphaMe;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/meizu/common/alphame/AlphaMe$ServerDeathRecipient;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/meizu/common/alphame/AlphaMe$ServerDeathRecipient;-><init>(Lcom/meizu/common/alphame/AlphaMe;Lcom/meizu/common/alphame/AlphaMe$ServerDeathRecipient;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    new-instance v1, Lcom/meizu/common/alphame/AlphaMe$AlphaMeClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/meizu/common/alphame/AlphaMe$AlphaMeClient;-><init>(Lcom/meizu/common/alphame/AlphaMe;Lcom/meizu/common/alphame/AlphaMe$AlphaMeClient;)V

    iput-object v1, p0, Lcom/meizu/common/alphame/AlphaMe;->mClient:Lcom/meizu/common/alphame/AlphaMe$AlphaMeClient;

    iget-object v1, p0, Lcom/meizu/common/alphame/AlphaMe;->mService:Lcom/meizu/common/alphame/IAlphaMe;

    iget-object v2, p0, Lcom/meizu/common/alphame/AlphaMe;->mClient:Lcom/meizu/common/alphame/AlphaMe$AlphaMeClient;

    invoke-virtual {v2}, Lcom/meizu/common/alphame/AlphaMe$AlphaMeClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/meizu/common/alphame/IAlphaMe;->addClient(Landroid/os/IBinder;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/meizu/common/alphame/AlphaMe;->mInitialized:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v1, "AlphaMe"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private removeActionReceiver(I)V
    .locals 4
    .param p1, "receiver"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mActionReceiverArray:Landroid/util/LongSparseArray;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->remove(J)V

    iget-object v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mPendingReceiver:Landroid/util/LongSparseArray;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->remove(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private removeResultReceiver(I)V
    .locals 4
    .param p1, "receiver"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mResultReceiverArray:Landroid/util/LongSparseArray;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->remove(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public varargs collect(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/meizu/common/alphame/AlphaMe;->initializeIfNeed()V

    iget-boolean v1, p0, Lcom/meizu/common/alphame/AlphaMe;->mInitialized:Z

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/meizu/common/alphame/AlphaMe;->mService:Lcom/meizu/common/alphame/IAlphaMe;

    new-instance v2, Lcom/meizu/common/alphame/Args;

    invoke-direct {v2, p2}, Lcom/meizu/common/alphame/Args;-><init>([Ljava/lang/Object;)V

    invoke-interface {v1, p1, v2}, Lcom/meizu/common/alphame/IAlphaMe;->collect(Ljava/lang/String;Lcom/meizu/common/alphame/Args;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AlphaMe"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "collect fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public varargs invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    new-instance v0, Lcom/meizu/common/alphame/AlphaMe$MyResultReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/meizu/common/alphame/AlphaMe$MyResultReceiver;-><init>(Lcom/meizu/common/alphame/AlphaMe$MyResultReceiver;)V

    .local v0, "receiver":Lcom/meizu/common/alphame/AlphaMe$MyResultReceiver;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meizu/common/alphame/AlphaMe;->execute(Lcom/meizu/common/alphame/AlphaMe$ResultReceiver;ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/meizu/common/alphame/AlphaMe$MyResultReceiver;->-get0(Lcom/meizu/common/alphame/AlphaMe$MyResultReceiver;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public varargs invoke(Lcom/meizu/common/alphame/AlphaMe$ResultReceiver;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "receiver"    # Lcom/meizu/common/alphame/AlphaMe$ResultReceiver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    if-nez p1, :cond_0

    const-string v0, "AlphaMe"

    const-string v1, "ResultReceiver can\'t be null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/meizu/common/alphame/AlphaMe;->execute(Lcom/meizu/common/alphame/AlphaMe$ResultReceiver;ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs invokeAsync(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    new-instance v0, Lcom/meizu/common/alphame/AlphaMe$MyResultReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/meizu/common/alphame/AlphaMe$MyResultReceiver;-><init>(Lcom/meizu/common/alphame/AlphaMe$MyResultReceiver;)V

    .local v0, "receiver":Lcom/meizu/common/alphame/AlphaMe$ResultReceiver;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meizu/common/alphame/AlphaMe;->execute(Lcom/meizu/common/alphame/AlphaMe$ResultReceiver;ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public registerActionReceiver(Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;)V
    .locals 6
    .param p1, "receiver"    # Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;

    .prologue
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;->-get0(Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/meizu/common/alphame/AlphaMe;->initializeIfNeed()V

    iget-object v1, p0, Lcom/meizu/common/alphame/AlphaMe;->mService:Lcom/meizu/common/alphame/IAlphaMe;

    if-nez v1, :cond_3

    iget-object v2, p0, Lcom/meizu/common/alphame/AlphaMe;->mPendingReceiver:Landroid/util/LongSparseArray;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/meizu/common/alphame/AlphaMe;->mPendingReceiver:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;->getId()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/meizu/common/alphame/AlphaMe;->mPendingReceiver:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;->getId()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    iget-object v1, p0, Lcom/meizu/common/alphame/AlphaMe;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/meizu/common/alphame/AlphaMe;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_3
    iget-boolean v1, p0, Lcom/meizu/common/alphame/AlphaMe;->mInitialized:Z

    if-eqz v1, :cond_5

    :try_start_1
    invoke-virtual {p1}, Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/meizu/common/alphame/AlphaMe;->getActionReceiver(I)Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v1, "AlphaMe"

    const-string v2, "Receiver is registered before"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    invoke-direct {p0, p1}, Lcom/meizu/common/alphame/AlphaMe;->addActionReceiver(Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/meizu/common/alphame/AlphaMe;->mService:Lcom/meizu/common/alphame/IAlphaMe;

    iget-object v2, p0, Lcom/meizu/common/alphame/AlphaMe;->mClient:Lcom/meizu/common/alphame/AlphaMe$AlphaMeClient;

    invoke-virtual {v2}, Lcom/meizu/common/alphame/AlphaMe$AlphaMeClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {p1}, Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;->-get0(Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p1}, Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;->getId()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lcom/meizu/common/alphame/IAlphaMe;->registerActionReceiver(Landroid/os/IBinder;Ljava/util/ArrayList;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AlphaMe"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerReceiver exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/meizu/common/alphame/AlphaMe;->removeActionReceiver(I)V

    goto :goto_0
.end method

.method public unregisterActionReceiver(Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;)V
    .locals 4
    .param p1, "receiver"    # Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;

    .prologue
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;->-get0(Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/meizu/common/alphame/AlphaMe;->initializeIfNeed()V

    iget-boolean v1, p0, Lcom/meizu/common/alphame/AlphaMe;->mInitialized:Z

    if-eqz v1, :cond_3

    :try_start_0
    invoke-virtual {p1}, Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/meizu/common/alphame/AlphaMe;->getActionReceiver(I)Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "AlphaMe"

    const-string v2, "Try to remove a receiver that is not registered"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/meizu/common/alphame/AlphaMe;->removeActionReceiver(I)V

    iget-object v1, p0, Lcom/meizu/common/alphame/AlphaMe;->mService:Lcom/meizu/common/alphame/IAlphaMe;

    iget-object v2, p0, Lcom/meizu/common/alphame/AlphaMe;->mClient:Lcom/meizu/common/alphame/AlphaMe$AlphaMeClient;

    invoke-virtual {v2}, Lcom/meizu/common/alphame/AlphaMe$AlphaMeClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;->getId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/meizu/common/alphame/IAlphaMe;->unregisterActionReceiver(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AlphaMe"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterReceiver exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
