.class public Lmiui/maml/util/RendererCoreCache;
.super Ljava/lang/Object;
.source "RendererCoreCache.java"

# interfaces
.implements Lmiui/maml/RendererCore$OnReleaseListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;,
        Lmiui/maml/util/RendererCoreCache$CheckCacheRunnable;,
        Lmiui/maml/util/RendererCoreCache$OnCreateRootCallback;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RendererCoreCache"

.field public static final TIME_DAY:I = 0x5265c00

.field public static final TIME_HOUR:I = 0x36ee80

.field public static final TIME_MIN:I = 0xea60


# instance fields
.field private mCaches:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmiui/maml/util/RendererCoreCache;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    iput-object p1, p0, Lmiui/maml/util/RendererCoreCache;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lmiui/maml/util/RendererCoreCache;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lmiui/maml/util/RendererCoreCache;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/util/RendererCoreCache;->checkCache(Ljava/lang/Object;)V

    return-void
.end method

.method private declared-synchronized checkCache(Ljava/lang/Object;)V
    .locals 8
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v1, "RendererCoreCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkCache: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lmiui/maml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;

    .local v0, "ri":Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    if-nez v0, :cond_1

    const-string v1, "RendererCoreCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkCache: the key does not exist, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-wide v4, v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->accessTime:J

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->accessTime:J

    sub-long v2, v4, v6

    .local v2, "t":J
    iget-wide v4, v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_2

    iget-object v1, p0, Lmiui/maml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "RendererCoreCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkCache removed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "ri":Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    .end local v2    # "t":J
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .restart local v0    # "ri":Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    .restart local v2    # "t":J
    :cond_2
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_3

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->accessTime:J

    const-wide/16 v2, 0x0

    :cond_3
    iget-object v1, p0, Lmiui/maml/util/RendererCoreCache;->mHandler:Landroid/os/Handler;

    iget-object v4, v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->checkCache:Lmiui/maml/util/RendererCoreCache$CheckCacheRunnable;

    iget-wide v6, v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J

    sub-long/2addr v6, v2

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v1, "RendererCoreCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkCache resheduled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " after "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private get(Ljava/lang/Object;Landroid/content/Context;JLmiui/maml/ResourceLoader;Ljava/lang/String;Lmiui/maml/util/RendererCoreCache$OnCreateRootCallback;)Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    .locals 7
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cacheTime"    # J
    .param p5, "loader"    # Lmiui/maml/ResourceLoader;
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "callback"    # Lmiui/maml/util/RendererCoreCache$OnCreateRootCallback;

    .prologue
    invoke-virtual {p0, p1, p3, p4}, Lmiui/maml/util/RendererCoreCache;->get(Ljava/lang/Object;J)Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;

    move-result-object v1

    .local v1, "ri":Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    if-eqz v1, :cond_0

    move-object v3, v1

    :goto_0
    return-object v3

    :cond_0
    const/4 v2, 0x0

    .local v2, "root":Lmiui/maml/ScreenElementRoot;
    if-eqz p5, :cond_1

    new-instance v3, Lmiui/maml/ScreenElementRootFactory$Parameter;

    invoke-direct {v3, p2, p5}, Lmiui/maml/ScreenElementRootFactory$Parameter;-><init>(Landroid/content/Context;Lmiui/maml/ResourceLoader;)V

    invoke-static {v3}, Lmiui/maml/ScreenElementRootFactory;->create(Lmiui/maml/ScreenElementRootFactory$Parameter;)Lmiui/maml/ScreenElementRoot;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_2

    const-string v3, "RendererCoreCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to get RendererCoreInfo"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    new-instance v3, Lmiui/maml/ScreenElementRootFactory$Parameter;

    invoke-direct {v3, p2, p6}, Lmiui/maml/ScreenElementRootFactory$Parameter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v3}, Lmiui/maml/ScreenElementRootFactory;->create(Lmiui/maml/ScreenElementRootFactory$Parameter;)Lmiui/maml/ScreenElementRoot;

    move-result-object v2

    goto :goto_1

    :cond_2
    if-eqz p7, :cond_3

    invoke-interface {p7, v2}, Lmiui/maml/util/RendererCoreCache$OnCreateRootCallback;->onCreateRoot(Lmiui/maml/ScreenElementRoot;)V

    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lmiui/maml/ScreenElementRoot;->setDefaultFramerate(F)V

    const/4 v0, 0x0

    .local v0, "r":Lmiui/maml/RendererCore;
    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->load()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v0, Lmiui/maml/RendererCore;

    .end local v0    # "r":Lmiui/maml/RendererCore;
    const/4 v3, 0x1

    invoke-static {v3}, Lmiui/maml/RenderThread;->globalThread(Z)Lmiui/maml/RenderThread;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lmiui/maml/RendererCore;-><init>(Lmiui/maml/ScreenElementRoot;Lmiui/maml/RenderThread;)V

    .restart local v0    # "r":Lmiui/maml/RendererCore;
    :cond_4
    new-instance v1, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;

    .end local v1    # "ri":Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    invoke-direct {v1, v0}, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;-><init>(Lmiui/maml/RendererCore;)V

    .restart local v1    # "ri":Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    const-wide v4, 0x7fffffffffffffffL

    iput-wide v4, v1, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->accessTime:J

    iput-wide p3, v1, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J

    if-eqz v0, :cond_5

    invoke-virtual {v0, p0}, Lmiui/maml/RendererCore;->setOnReleaseListener(Lmiui/maml/RendererCore$OnReleaseListener;)V

    new-instance v3, Lmiui/maml/util/RendererCoreCache$CheckCacheRunnable;

    invoke-direct {v3, p0, p1}, Lmiui/maml/util/RendererCoreCache$CheckCacheRunnable;-><init>(Lmiui/maml/util/RendererCoreCache;Ljava/lang/Object;)V

    iput-object v3, v1, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->checkCache:Lmiui/maml/util/RendererCoreCache$CheckCacheRunnable;

    :cond_5
    iget-object v3, p0, Lmiui/maml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized OnRendererCoreReleased(Lmiui/maml/RendererCore;)V
    .locals 6
    .param p1, "rc"    # Lmiui/maml/RendererCore;

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v3, "RendererCoreCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OnRendererCoreReleased: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lmiui/maml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .local v1, "key":Ljava/lang/Object;
    iget-object v3, p0, Lmiui/maml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;

    .local v2, "ri":Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    iget-object v3, v2, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->r:Lmiui/maml/RendererCore;

    if-ne v3, p1, :cond_0

    invoke-virtual {p0, v1}, Lmiui/maml/util/RendererCoreCache;->release(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "key":Ljava/lang/Object;
    .end local v2    # "ri":Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    :cond_1
    monitor-exit p0

    return-void

    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmiui/maml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/Object;J)Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "cacheTime"    # J

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lmiui/maml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;

    .local v0, "ri":Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    if-eqz v0, :cond_0

    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->accessTime:J

    iput-wide p2, v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J

    iget-object v1, p0, Lmiui/maml/util/RendererCoreCache;->mHandler:Landroid/os/Handler;

    iget-object v2, v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->checkCache:Lmiui/maml/util/RendererCoreCache$CheckCacheRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "ri":Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    :goto_0
    monitor-exit p0

    return-object v0

    .restart local v0    # "ri":Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .end local v0    # "ri":Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized get(Ljava/lang/Object;Landroid/content/Context;JLjava/lang/String;Lmiui/maml/util/RendererCoreCache$OnCreateRootCallback;)Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    .locals 9
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cacheTime"    # J
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "callback"    # Lmiui/maml/util/RendererCoreCache$OnCreateRootCallback;

    .prologue
    monitor-enter p0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v7, p5

    move-object v8, p6

    :try_start_0
    invoke-direct/range {v1 .. v8}, Lmiui/maml/util/RendererCoreCache;->get(Ljava/lang/Object;Landroid/content/Context;JLmiui/maml/ResourceLoader;Ljava/lang/String;Lmiui/maml/util/RendererCoreCache$OnCreateRootCallback;)Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/Object;Landroid/content/Context;JLmiui/maml/ResourceLoader;Lmiui/maml/util/RendererCoreCache$OnCreateRootCallback;)Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    .locals 9
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cacheTime"    # J
    .param p5, "loader"    # Lmiui/maml/ResourceLoader;
    .param p6, "callback"    # Lmiui/maml/util/RendererCoreCache$OnCreateRootCallback;

    .prologue
    monitor-enter p0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v8, p6

    :try_start_0
    invoke-direct/range {v1 .. v8}, Lmiui/maml/util/RendererCoreCache;->get(Ljava/lang/Object;Landroid/content/Context;JLmiui/maml/ResourceLoader;Ljava/lang/String;Lmiui/maml/util/RendererCoreCache$OnCreateRootCallback;)Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release(Ljava/lang/Object;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v1, "RendererCoreCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "release: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lmiui/maml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;

    .local v0, "ri":Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->accessTime:J

    iget-wide v2, v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    iget-object v1, p0, Lmiui/maml/util/RendererCoreCache;->mCaches:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "RendererCoreCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string v1, "RendererCoreCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scheduled release: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lmiui/maml/util/RendererCoreCache;->mHandler:Landroid/os/Handler;

    iget-object v2, v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->checkCache:Lmiui/maml/util/RendererCoreCache$CheckCacheRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lmiui/maml/util/RendererCoreCache;->mHandler:Landroid/os/Handler;

    iget-object v2, v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->checkCache:Lmiui/maml/util/RendererCoreCache$CheckCacheRunnable;

    iget-wide v4, v0, Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;->cacheTime:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "ri":Lmiui/maml/util/RendererCoreCache$RendererCoreInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
