.class Lcom/android/server/net/NetworkPolicyManagerService$16;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    packed-switch v15, :pswitch_data_0

    :pswitch_0
    const/4 v15, 0x0

    :goto_0
    return v15

    :pswitch_1
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    .local v13, "uid":I
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg2:I

    .local v14, "uidRules":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v15}, Lcom/android/server/net/NetworkPolicyManagerService;->access$400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v15

    invoke-virtual {v15}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    .local v4, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v15}, Lcom/android/server/net/NetworkPolicyManagerService;->access$400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v15

    invoke-virtual {v15, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/net/INetworkPolicyListener;

    .local v5, "listener":Landroid/net/INetworkPolicyListener;
    if-eqz v5, :cond_0

    :try_start_0
    invoke-interface {v5, v13, v14}, Landroid/net/INetworkPolicyListener;->onUidRulesChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v5    # "listener":Landroid/net/INetworkPolicyListener;
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v15}, Lcom/android/server/net/NetworkPolicyManagerService;->access$400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v15

    invoke-virtual {v15}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    const/4 v15, 0x1

    goto :goto_0

    .end local v2    # "i":I
    .end local v4    # "length":I
    .end local v13    # "uid":I
    .end local v14    # "uidRules":I
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, [Ljava/lang/String;

    move-object v8, v15

    check-cast v8, [Ljava/lang/String;

    .local v8, "meteredIfaces":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v15}, Lcom/android/server/net/NetworkPolicyManagerService;->access$400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v15

    invoke-virtual {v15}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    .restart local v4    # "length":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v15}, Lcom/android/server/net/NetworkPolicyManagerService;->access$400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v15

    invoke-virtual {v15, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/net/INetworkPolicyListener;

    .restart local v5    # "listener":Landroid/net/INetworkPolicyListener;
    if-eqz v5, :cond_2

    :try_start_1
    invoke-interface {v5, v8}, Landroid/net/INetworkPolicyListener;->onMeteredIfacesChanged([Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v5    # "listener":Landroid/net/INetworkPolicyListener;
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v15}, Lcom/android/server/net/NetworkPolicyManagerService;->access$400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v15

    invoke-virtual {v15}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    const/4 v15, 0x1

    goto :goto_0

    .end local v2    # "i":I
    .end local v4    # "length":I
    .end local v8    # "meteredIfaces":[Ljava/lang/String;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .local v3, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v15}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v15, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;
    invoke-static {v15}, Lcom/android/server/net/NetworkPolicyManagerService;->access$500(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;

    move-result-object v15

    invoke-virtual {v15, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v15

    if-eqz v15, :cond_4

    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;
    invoke-static {v15}, Lcom/android/server/net/NetworkPolicyManagerService;->access$600(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;

    move-result-object v15

    invoke-interface {v15}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v15}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v15}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    :cond_4
    monitor-exit v16

    const/4 v15, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v15

    .end local v3    # "iface":Ljava/lang/String;
    :pswitch_4
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    if-eqz v15, :cond_6

    const/4 v12, 0x1

    .local v12, "restrictBackground":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v15}, Lcom/android/server/net/NetworkPolicyManagerService;->access$400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v15

    invoke-virtual {v15}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    .restart local v4    # "length":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_7
    if-ge v2, v4, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v15}, Lcom/android/server/net/NetworkPolicyManagerService;->access$400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v15

    invoke-virtual {v15, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/net/INetworkPolicyListener;

    .restart local v5    # "listener":Landroid/net/INetworkPolicyListener;
    if-eqz v5, :cond_5

    :try_start_5
    invoke-interface {v5, v12}, Landroid/net/INetworkPolicyListener;->onRestrictBackgroundChanged(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_5
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .end local v2    # "i":I
    .end local v4    # "length":I
    .end local v5    # "listener":Landroid/net/INetworkPolicyListener;
    .end local v12    # "restrictBackground":Z
    :cond_6
    const/4 v12, 0x0

    goto :goto_6

    .restart local v2    # "i":I
    .restart local v4    # "length":I
    .restart local v12    # "restrictBackground":Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v15}, Lcom/android/server/net/NetworkPolicyManagerService;->access$400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v15

    invoke-virtual {v15}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    const/4 v15, 0x1

    goto/16 :goto_0

    .end local v2    # "i":I
    .end local v4    # "length":I
    .end local v12    # "restrictBackground":Z
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .local v6, "lowestRule":J
    const-wide/16 v16, 0x3e8

    :try_start_6
    div-long v10, v6, v16

    .local v10, "persistThreshold":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;
    invoke-static {v15}, Lcom/android/server/net/NetworkPolicyManagerService;->access$600(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;

    move-result-object v15

    invoke-interface {v15, v10, v11}, Landroid/net/INetworkStatsService;->advisePersistThreshold(J)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    .end local v10    # "persistThreshold":J
    :goto_9
    const/4 v15, 0x1

    goto/16 :goto_0

    .end local v6    # "lowestRule":J
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->updateScreenOn()V
    invoke-static {v15}, Lcom/android/server/net/NetworkPolicyManagerService;->access$700(Lcom/android/server/net/NetworkPolicyManagerService;)V

    const/4 v15, 0x1

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    .restart local v13    # "uid":I
    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg2:I

    .local v9, "procState":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v15, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v15, v13, v9}, Lcom/android/server/net/NetworkPolicyManagerService;->updateUidStateLocked(II)V

    monitor-exit v16

    const/4 v15, 0x1

    goto/16 :goto_0

    :catchall_1
    move-exception v15

    monitor-exit v16
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v15

    .end local v9    # "procState":I
    .end local v13    # "uid":I
    :pswitch_8
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    .restart local v13    # "uid":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v15, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v15, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->removeUidStateLocked(I)V

    monitor-exit v16

    const/4 v15, 0x1

    goto/16 :goto_0

    :catchall_2
    move-exception v15

    monitor-exit v16
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v15

    .end local v13    # "uid":I
    :pswitch_9
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    .restart local v13    # "uid":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v15, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v15, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleLocked(I)V

    monitor-exit v16

    const/4 v15, 0x1

    goto/16 :goto_0

    :catchall_3
    move-exception v15

    monitor-exit v16
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v15

    .restart local v2    # "i":I
    .restart local v4    # "length":I
    .restart local v5    # "listener":Landroid/net/INetworkPolicyListener;
    .restart local v14    # "uidRules":I
    :catch_0
    move-exception v15

    goto/16 :goto_2

    .end local v13    # "uid":I
    .end local v14    # "uidRules":I
    .restart local v8    # "meteredIfaces":[Ljava/lang/String;
    :catch_1
    move-exception v15

    goto/16 :goto_4

    .end local v8    # "meteredIfaces":[Ljava/lang/String;
    .restart local v12    # "restrictBackground":Z
    :catch_2
    move-exception v15

    goto/16 :goto_8

    .end local v2    # "i":I
    .end local v4    # "length":I
    .end local v5    # "listener":Landroid/net/INetworkPolicyListener;
    .end local v12    # "restrictBackground":Z
    .restart local v6    # "lowestRule":J
    :catch_3
    move-exception v15

    goto :goto_9

    .end local v6    # "lowestRule":J
    .restart local v3    # "iface":Ljava/lang/String;
    :catch_4
    move-exception v15

    goto/16 :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
