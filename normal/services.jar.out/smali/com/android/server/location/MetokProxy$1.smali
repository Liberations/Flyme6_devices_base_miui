.class Lcom/android/server/location/MetokProxy$1;
.super Ljava/lang/Object;
.source "MetokProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/MetokProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/MetokProxy;


# direct methods
.method constructor <init>(Lcom/android/server/location/MetokProxy;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/location/MetokProxy$1;->this$0:Lcom/android/server/location/MetokProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    # getter for: Lcom/android/server/location/MetokProxy;->D:Z
    invoke-static {}, Lcom/android/server/location/MetokProxy;->access$000()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "MetokProxy"

    const-string v7, "applying state to connected service"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    .local v2, "properties":Lcom/android/internal/location/ProviderProperties;
    iget-object v6, p0, Lcom/android/server/location/MetokProxy$1;->this$0:Lcom/android/server/location/MetokProxy;

    # getter for: Lcom/android/server/location/MetokProxy;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/location/MetokProxy;->access$100(Lcom/android/server/location/MetokProxy;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/android/server/location/MetokProxy$1;->this$0:Lcom/android/server/location/MetokProxy;

    # getter for: Lcom/android/server/location/MetokProxy;->mEnabled:Z
    invoke-static {v6}, Lcom/android/server/location/MetokProxy;->access$200(Lcom/android/server/location/MetokProxy;)Z

    move-result v1

    .local v1, "enabled":Z
    iget-object v6, p0, Lcom/android/server/location/MetokProxy$1;->this$0:Lcom/android/server/location/MetokProxy;

    # getter for: Lcom/android/server/location/MetokProxy;->mRequest:Lcom/android/internal/location/ProviderRequest;
    invoke-static {v6}, Lcom/android/server/location/MetokProxy;->access$300(Lcom/android/server/location/MetokProxy;)Lcom/android/internal/location/ProviderRequest;

    move-result-object v3

    .local v3, "request":Lcom/android/internal/location/ProviderRequest;
    iget-object v6, p0, Lcom/android/server/location/MetokProxy$1;->this$0:Lcom/android/server/location/MetokProxy;

    # getter for: Lcom/android/server/location/MetokProxy;->mWorksource:Landroid/os/WorkSource;
    invoke-static {v6}, Lcom/android/server/location/MetokProxy;->access$400(Lcom/android/server/location/MetokProxy;)Landroid/os/WorkSource;

    move-result-object v5

    .local v5, "source":Landroid/os/WorkSource;
    iget-object v6, p0, Lcom/android/server/location/MetokProxy$1;->this$0:Lcom/android/server/location/MetokProxy;

    # invokes: Lcom/android/server/location/MetokProxy;->getService()Lcom/android/internal/location/ILocationProvider;
    invoke-static {v6}, Lcom/android/server/location/MetokProxy;->access$500(Lcom/android/server/location/MetokProxy;)Lcom/android/internal/location/ILocationProvider;

    move-result-object v4

    .local v4, "service":Lcom/android/internal/location/ILocationProvider;
    monitor-exit v7

    if-nez v4, :cond_1

    :goto_0
    return-void

    .end local v1    # "enabled":Z
    .end local v3    # "request":Lcom/android/internal/location/ProviderRequest;
    .end local v4    # "service":Lcom/android/internal/location/ILocationProvider;
    .end local v5    # "source":Landroid/os/WorkSource;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .restart local v1    # "enabled":Z
    .restart local v3    # "request":Lcom/android/internal/location/ProviderRequest;
    .restart local v4    # "service":Lcom/android/internal/location/ILocationProvider;
    .restart local v5    # "source":Landroid/os/WorkSource;
    :cond_1
    :try_start_1
    invoke-interface {v4}, Lcom/android/internal/location/ILocationProvider;->getProperties()Lcom/android/internal/location/ProviderProperties;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v6, "MetokProxy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/server/location/MetokProxy$1;->this$0:Lcom/android/server/location/MetokProxy;

    # getter for: Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;
    invoke-static {v8}, Lcom/android/server/location/MetokProxy;->access$600(Lcom/android/server/location/MetokProxy;)Lcom/android/server/location/MetokWatcher;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/location/MetokWatcher;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has invalid locatino provider properties"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v4}, Lcom/android/internal/location/ILocationProvider;->enable()V

    if-eqz v3, :cond_3

    invoke-interface {v4, v3, v5}, Lcom/android/internal/location/ILocationProvider;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/android/server/location/MetokProxy$1;->this$0:Lcom/android/server/location/MetokProxy;

    # getter for: Lcom/android/server/location/MetokProxy;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/location/MetokProxy;->access$100(Lcom/android/server/location/MetokProxy;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_2
    iget-object v6, p0, Lcom/android/server/location/MetokProxy$1;->this$0:Lcom/android/server/location/MetokProxy;

    # setter for: Lcom/android/server/location/MetokProxy;->mProperties:Lcom/android/internal/location/ProviderProperties;
    invoke-static {v6, v2}, Lcom/android/server/location/MetokProxy;->access$702(Lcom/android/server/location/MetokProxy;Lcom/android/internal/location/ProviderProperties;)Lcom/android/internal/location/ProviderProperties;

    monitor-exit v7

    goto :goto_0

    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v6, "MetokProxy"

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "MetokProxy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/location/MetokProxy$1;->this$0:Lcom/android/server/location/MetokProxy;

    # getter for: Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;
    invoke-static {v8}, Lcom/android/server/location/MetokProxy;->access$600(Lcom/android/server/location/MetokProxy;)Lcom/android/server/location/MetokWatcher;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/location/MetokWatcher;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
