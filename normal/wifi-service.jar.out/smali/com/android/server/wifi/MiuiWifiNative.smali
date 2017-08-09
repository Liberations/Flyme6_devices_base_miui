.class public Lcom/android/server/wifi/MiuiWifiNative;
.super Ljava/lang/Object;
.source "MiuiWifiNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final SOFTAP_CONFIG_FILE:Ljava/lang/String; = "/data/misc/wifi/hostapd.conf"

.field private static final SOFTAP_DENY_MAC_FILE:Ljava/lang/String; = "/data/misc/wifi/miui_hostapd.deny"

.field private static final mLock:Ljava/lang/Object;

.field private static mMiuiWifiNative:Lcom/android/server/wifi/MiuiWifiNative; = null

.field private static final mTAG:Ljava/lang/String; = "MiuiWifiNative"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/wifi/MiuiWifiNative;->mLock:Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/wifi/MiuiWifiNative;->registerNatives()I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native closeSapConnectionNative()V
.end method

.method private native connectToSapNative()Z
.end method

.method private doBooleanCommand(Ljava/lang/String;)Z
    .locals 5
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    const-string v1, "MiuiWifiNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doBoolean: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/wifi/MiuiWifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/MiuiWifiNative;->doSapBooleanCommandNative(Ljava/lang/String;)Z

    move-result v0

    .local v0, "result":Z
    const-string v1, "MiuiWifiNative"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": returned "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return v0

    .end local v0    # "result":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private native doSapBooleanCommandNative(Ljava/lang/String;)Z
.end method

.method private native doSapIntCommandNative(Ljava/lang/String;)I
.end method

.method private native doSapStringCommandNative(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/wifi/MiuiWifiNative;
    .locals 2

    .prologue
    const-class v1, Lcom/android/server/wifi/MiuiWifiNative;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/wifi/MiuiWifiNative;->mMiuiWifiNative:Lcom/android/server/wifi/MiuiWifiNative;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/wifi/MiuiWifiNative;

    invoke-direct {v0}, Lcom/android/server/wifi/MiuiWifiNative;-><init>()V

    sput-object v0, Lcom/android/server/wifi/MiuiWifiNative;->mMiuiWifiNative:Lcom/android/server/wifi/MiuiWifiNative;

    :cond_0
    sget-object v0, Lcom/android/server/wifi/MiuiWifiNative;->mMiuiWifiNative:Lcom/android/server/wifi/MiuiWifiNative;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native getWlanStatisticsNative(Ljava/lang/String;Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;)Z
.end method

.method private isMacAddress(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    const-string v0, "^[a-fA-F0-9]{2}+:[a-fA-F0-9]{2}+:[a-fA-F0-9]{2}+:[a-fA-F0-9]{2}+:[a-fA-F0-9]{2}+:[a-fA-F0-9]{2}$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private parsAndUpdateDenyMacFile(Ljava/util/Set;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "macSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "reader":Ljava/io/BufferedReader;
    const/4 v9, 0x0

    .local v9, "tmpfile":Ljava/io/File;
    const/4 v11, 0x0

    .local v11, "writer":Ljava/io/BufferedWriter;
    new-instance v8, Ljava/util/HashSet;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .local v8, "tMacSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v13, "/data/misc/wifi/miui_hostapd.deny"

    invoke-direct {v2, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v13

    if-nez v13, :cond_3

    if-eqz v6, :cond_0

    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    :cond_0
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Ljava/io/BufferedWriter;->close()V

    :cond_1
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c

    .end local v2    # "file":Ljava/io/File;
    :cond_2
    :goto_0
    return-void

    .restart local v2    # "file":Ljava/io/File;
    :cond_3
    :try_start_2
    new-instance v10, Ljava/io/File;

    const-string v13, "/data/misc/wifi/miui_hostapd.deny.tmp"

    invoke-direct {v10, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v9    # "tmpfile":Ljava/io/File;
    .local v10, "tmpfile":Ljava/io/File;
    :try_start_3
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/FileReader;

    invoke-direct {v13, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .local v7, "reader":Ljava/io/BufferedReader;
    :try_start_4
    new-instance v12, Ljava/io/BufferedWriter;

    new-instance v13, Ljava/io/FileWriter;

    invoke-direct {v13, v10}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v12, v13}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .end local v11    # "writer":Ljava/io/BufferedWriter;
    .local v12, "writer":Ljava/io/BufferedWriter;
    :try_start_5
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    :goto_1
    if-eqz v4, :cond_b

    const-string v13, "#"

    invoke-virtual {v4, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    :cond_4
    :goto_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_5
    const-string v13, "-"

    invoke-virtual {v4, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/wifi/MiuiWifiNative;->isMacAddress(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v8, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v8, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .end local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v11, v12

    .end local v12    # "writer":Ljava/io/BufferedWriter;
    .restart local v11    # "writer":Ljava/io/BufferedWriter;
    move-object v9, v10

    .end local v10    # "tmpfile":Ljava/io/File;
    .restart local v9    # "tmpfile":Ljava/io/File;
    move-object v6, v7

    .end local v2    # "file":Ljava/io/File;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :goto_3
    :try_start_6
    const-string v13, "MiuiWifiNative"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Could not open /data/misc/wifi/hostapd.conf, "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v6, :cond_6

    :try_start_7
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    :cond_6
    if-eqz v11, :cond_7

    invoke-virtual {v11}, Ljava/io/BufferedWriter;->close()V

    :cond_7
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v13

    goto/16 :goto_0

    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v9    # "tmpfile":Ljava/io/File;
    .end local v11    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "tmpfile":Ljava/io/File;
    .restart local v12    # "writer":Ljava/io/BufferedWriter;
    :cond_8
    :try_start_8
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    .end local v4    # "line":Ljava/lang/String;
    :catch_2
    move-exception v1

    move-object v11, v12

    .end local v12    # "writer":Ljava/io/BufferedWriter;
    .restart local v11    # "writer":Ljava/io/BufferedWriter;
    move-object v9, v10

    .end local v10    # "tmpfile":Ljava/io/File;
    .restart local v9    # "tmpfile":Ljava/io/File;
    move-object v6, v7

    .end local v2    # "file":Ljava/io/File;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .local v1, "e":Ljava/io/IOException;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :goto_4
    :try_start_9
    const-string v13, "MiuiWifiNative"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Could not read /data/misc/wifi/hostapd.conf, "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v6, :cond_9

    :try_start_a
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    :cond_9
    if-eqz v11, :cond_a

    invoke-virtual {v11}, Ljava/io/BufferedWriter;->close()V

    :cond_a
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v13

    goto/16 :goto_0

    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v9    # "tmpfile":Ljava/io/File;
    .end local v11    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "tmpfile":Ljava/io/File;
    .restart local v12    # "writer":Ljava/io/BufferedWriter;
    :cond_b
    :try_start_b
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, "mac":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_5

    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "mac":Ljava/lang/String;
    :catchall_0
    move-exception v13

    move-object v11, v12

    .end local v12    # "writer":Ljava/io/BufferedWriter;
    .restart local v11    # "writer":Ljava/io/BufferedWriter;
    move-object v9, v10

    .end local v10    # "tmpfile":Ljava/io/File;
    .restart local v9    # "tmpfile":Ljava/io/File;
    move-object v6, v7

    .end local v2    # "file":Ljava/io/File;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :goto_6
    if-eqz v6, :cond_c

    :try_start_c
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    :cond_c
    if-eqz v11, :cond_d

    invoke-virtual {v11}, Ljava/io/BufferedWriter;->close()V

    :cond_d
    if-eqz v9, :cond_e

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    :cond_e
    :goto_7
    throw v13

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v9    # "tmpfile":Ljava/io/File;
    .end local v11    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "tmpfile":Ljava/io/File;
    .restart local v12    # "writer":Ljava/io/BufferedWriter;
    :cond_f
    :try_start_d
    invoke-virtual {v12}, Ljava/io/BufferedWriter;->flush()V

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2}, Lcom/android/server/wifi/MiuiWifiNative;->rename(Ljava/io/File;Ljava/io/File;)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-eqz v7, :cond_10

    :try_start_e
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    :cond_10
    if-eqz v12, :cond_11

    invoke-virtual {v12}, Ljava/io/BufferedWriter;->close()V

    :cond_11
    if-eqz v10, :cond_12

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_12

    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    :cond_12
    move-object v11, v12

    .end local v12    # "writer":Ljava/io/BufferedWriter;
    .restart local v11    # "writer":Ljava/io/BufferedWriter;
    move-object v9, v10

    .end local v10    # "tmpfile":Ljava/io/File;
    .restart local v9    # "tmpfile":Ljava/io/File;
    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_0

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v9    # "tmpfile":Ljava/io/File;
    .end local v11    # "writer":Ljava/io/BufferedWriter;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "tmpfile":Ljava/io/File;
    .restart local v12    # "writer":Ljava/io/BufferedWriter;
    :catch_4
    move-exception v13

    move-object v11, v12

    .end local v12    # "writer":Ljava/io/BufferedWriter;
    .restart local v11    # "writer":Ljava/io/BufferedWriter;
    move-object v9, v10

    .end local v10    # "tmpfile":Ljava/io/File;
    .restart local v9    # "tmpfile":Ljava/io/File;
    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_0

    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "line":Ljava/lang/String;
    :catch_5
    move-exception v14

    goto :goto_7

    :catchall_1
    move-exception v13

    goto :goto_6

    .end local v9    # "tmpfile":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v10    # "tmpfile":Ljava/io/File;
    :catchall_2
    move-exception v13

    move-object v9, v10

    .end local v10    # "tmpfile":Ljava/io/File;
    .restart local v9    # "tmpfile":Ljava/io/File;
    goto :goto_6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v9    # "tmpfile":Ljava/io/File;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "tmpfile":Ljava/io/File;
    :catchall_3
    move-exception v13

    move-object v9, v10

    .end local v10    # "tmpfile":Ljava/io/File;
    .restart local v9    # "tmpfile":Ljava/io/File;
    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto :goto_6

    .end local v2    # "file":Ljava/io/File;
    :catch_6
    move-exception v1

    goto/16 :goto_4

    .end local v9    # "tmpfile":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v10    # "tmpfile":Ljava/io/File;
    :catch_7
    move-exception v1

    move-object v9, v10

    .end local v10    # "tmpfile":Ljava/io/File;
    .restart local v9    # "tmpfile":Ljava/io/File;
    goto/16 :goto_4

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v9    # "tmpfile":Ljava/io/File;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "tmpfile":Ljava/io/File;
    :catch_8
    move-exception v1

    move-object v9, v10

    .end local v10    # "tmpfile":Ljava/io/File;
    .restart local v9    # "tmpfile":Ljava/io/File;
    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_4

    .end local v2    # "file":Ljava/io/File;
    :catch_9
    move-exception v1

    goto/16 :goto_3

    .end local v9    # "tmpfile":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v10    # "tmpfile":Ljava/io/File;
    :catch_a
    move-exception v1

    move-object v9, v10

    .end local v10    # "tmpfile":Ljava/io/File;
    .restart local v9    # "tmpfile":Ljava/io/File;
    goto/16 :goto_3

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v9    # "tmpfile":Ljava/io/File;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "tmpfile":Ljava/io/File;
    :catch_b
    move-exception v1

    move-object v9, v10

    .end local v10    # "tmpfile":Ljava/io/File;
    .restart local v9    # "tmpfile":Ljava/io/File;
    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_3

    :catch_c
    move-exception v13

    goto/16 :goto_0
.end method

.method private parseAndUpdateSoftapConfigfile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "filed"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .local v2, "filedFind":Z
    const/4 v4, 0x0

    .local v4, "reader":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .local v6, "tmpfile":Ljava/io/File;
    const/4 v8, 0x0

    .local v8, "writer":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v10, "/data/misc/wifi/hostapd.conf"

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, "file":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    const-string v10, "/data/misc/wifi/hostapd.conf.tmp"

    invoke-direct {v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v6    # "tmpfile":Ljava/io/File;
    .local v7, "tmpfile":Ljava/io/File;
    :try_start_1
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v9, Ljava/io/BufferedWriter;

    new-instance v10, Ljava/io/FileWriter;

    invoke-direct {v10, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v8    # "writer":Ljava/io/BufferedWriter;
    .local v9, "writer":Ljava/io/BufferedWriter;
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_4

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v2, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    .end local v3    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v8, v9

    .end local v9    # "writer":Ljava/io/BufferedWriter;
    .restart local v8    # "writer":Ljava/io/BufferedWriter;
    move-object v6, v7

    .end local v7    # "tmpfile":Ljava/io/File;
    .restart local v6    # "tmpfile":Ljava/io/File;
    move-object v4, v5

    .end local v1    # "file":Ljava/io/File;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :goto_2
    :try_start_4
    const-string v10, "MiuiWifiNative"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not open /data/misc/wifi/hostapd.conf, "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_1

    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    :cond_1
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V

    :cond_2
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_3
    :goto_3
    return-void

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "tmpfile":Ljava/io/File;
    .end local v8    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "tmpfile":Ljava/io/File;
    .restart local v9    # "writer":Ljava/io/BufferedWriter;
    :cond_4
    if-nez v2, :cond_5

    :try_start_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->flush()V

    invoke-direct {p0, v7, v1}, Lcom/android/server/wifi/MiuiWifiNative;->rename(Ljava/io/File;Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v5, :cond_6

    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    :cond_6
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Ljava/io/BufferedWriter;->close()V

    :cond_7
    if-eqz v7, :cond_8

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_8
    move-object v8, v9

    .end local v9    # "writer":Ljava/io/BufferedWriter;
    .restart local v8    # "writer":Ljava/io/BufferedWriter;
    move-object v6, v7

    .end local v7    # "tmpfile":Ljava/io/File;
    .restart local v6    # "tmpfile":Ljava/io/File;
    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "tmpfile":Ljava/io/File;
    .end local v8    # "writer":Ljava/io/BufferedWriter;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "tmpfile":Ljava/io/File;
    .restart local v9    # "writer":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v10

    move-object v8, v9

    .end local v9    # "writer":Ljava/io/BufferedWriter;
    .restart local v8    # "writer":Ljava/io/BufferedWriter;
    move-object v6, v7

    .end local v7    # "tmpfile":Ljava/io/File;
    .restart local v6    # "tmpfile":Ljava/io/File;
    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "line":Ljava/lang/String;
    :catch_2
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    :goto_4
    :try_start_8
    const-string v10, "MiuiWifiNative"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not read /data/misc/wifi/hostapd.conf, "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v4, :cond_9

    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    :cond_9
    if-eqz v8, :cond_a

    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V

    :cond_a
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_3

    :catch_3
    move-exception v10

    goto :goto_3

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_5
    if-eqz v4, :cond_b

    :try_start_a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    :cond_b
    if-eqz v8, :cond_c

    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V

    :cond_c
    if-eqz v6, :cond_d

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    :cond_d
    :goto_6
    throw v10

    :catch_4
    move-exception v11

    goto :goto_6

    .end local v6    # "tmpfile":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v7    # "tmpfile":Ljava/io/File;
    :catchall_1
    move-exception v10

    move-object v6, v7

    .end local v7    # "tmpfile":Ljava/io/File;
    .restart local v6    # "tmpfile":Ljava/io/File;
    goto :goto_5

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "tmpfile":Ljava/io/File;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "tmpfile":Ljava/io/File;
    :catchall_2
    move-exception v10

    move-object v6, v7

    .end local v7    # "tmpfile":Ljava/io/File;
    .restart local v6    # "tmpfile":Ljava/io/File;
    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_5

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "tmpfile":Ljava/io/File;
    .end local v8    # "writer":Ljava/io/BufferedWriter;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "tmpfile":Ljava/io/File;
    .restart local v9    # "writer":Ljava/io/BufferedWriter;
    :catchall_3
    move-exception v10

    move-object v8, v9

    .end local v9    # "writer":Ljava/io/BufferedWriter;
    .restart local v8    # "writer":Ljava/io/BufferedWriter;
    move-object v6, v7

    .end local v7    # "tmpfile":Ljava/io/File;
    .restart local v6    # "tmpfile":Ljava/io/File;
    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_5

    .end local v6    # "tmpfile":Ljava/io/File;
    .restart local v7    # "tmpfile":Ljava/io/File;
    :catch_5
    move-exception v0

    move-object v6, v7

    .end local v7    # "tmpfile":Ljava/io/File;
    .restart local v6    # "tmpfile":Ljava/io/File;
    goto :goto_4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "tmpfile":Ljava/io/File;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "tmpfile":Ljava/io/File;
    :catch_6
    move-exception v0

    move-object v6, v7

    .end local v7    # "tmpfile":Ljava/io/File;
    .restart local v6    # "tmpfile":Ljava/io/File;
    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "tmpfile":Ljava/io/File;
    .end local v8    # "writer":Ljava/io/BufferedWriter;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "tmpfile":Ljava/io/File;
    .restart local v9    # "writer":Ljava/io/BufferedWriter;
    :catch_7
    move-exception v0

    move-object v8, v9

    .end local v9    # "writer":Ljava/io/BufferedWriter;
    .restart local v8    # "writer":Ljava/io/BufferedWriter;
    move-object v6, v7

    .end local v7    # "tmpfile":Ljava/io/File;
    .restart local v6    # "tmpfile":Ljava/io/File;
    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .end local v1    # "file":Ljava/io/File;
    .local v0, "e":Ljava/io/FileNotFoundException;
    :catch_8
    move-exception v10

    goto/16 :goto_3

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_9
    move-exception v0

    goto/16 :goto_2

    .end local v6    # "tmpfile":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v7    # "tmpfile":Ljava/io/File;
    :catch_a
    move-exception v0

    move-object v6, v7

    .end local v7    # "tmpfile":Ljava/io/File;
    .restart local v6    # "tmpfile":Ljava/io/File;
    goto/16 :goto_2

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "tmpfile":Ljava/io/File;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "tmpfile":Ljava/io/File;
    :catch_b
    move-exception v0

    move-object v6, v7

    .end local v7    # "tmpfile":Ljava/io/File;
    .restart local v6    # "tmpfile":Ljava/io/File;
    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_2
.end method

.method private static native registerNatives()I
.end method

.method private rename(Ljava/io/File;Ljava/io/File;)V
    .locals 5
    .param p1, "sFile"    # Ljava/io/File;
    .param p2, "dFile"    # Ljava/io/File;

    .prologue
    const/4 v0, 0x0

    .local v0, "dPath":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    const/16 v2, 0x3e8

    const/16 v3, 0x3f2

    invoke-static {v0, v2, v3}, Landroid/system/Os;->chown(Ljava/lang/String;II)V

    const/16 v2, 0x1b0

    invoke-static {v0, v2}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/system/ErrnoException;
    const-string v2, "MiuiWifiNative"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not read "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public closeSapConnection()V
    .locals 2

    .prologue
    sget-object v1, Lcom/android/server/wifi/MiuiWifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/MiuiWifiNative;->closeSapConnectionNative()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public connectToSap()Z
    .locals 2

    .prologue
    sget-object v1, Lcom/android/server/wifi/MiuiWifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/MiuiWifiNative;->connectToSapNative()Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deauthenticate(Ljava/lang/String;)Z
    .locals 2
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deauthenticate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/MiuiWifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public disassociate(Ljava/lang/String;)Z
    .locals 2
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disassociate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/MiuiWifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getWlanStatistics(Ljava/lang/String;)Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    new-instance v0, Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;-><init>(Lcom/android/server/wifi/MiuiWifiNative;)V

    .local v0, "statics":Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;
    invoke-static {p1, v0}, Lcom/android/server/wifi/MiuiWifiNative;->getWlanStatisticsNative(Ljava/lang/String;Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;)Z

    return-object v0
.end method

.method public reloadDenyList()Z
    .locals 1

    .prologue
    const-string v0, "SET deny_mac_file /data/misc/wifi/miui_hostapd.deny"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/MiuiWifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setHotSpotDenyMac(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "macSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/wifi/MiuiWifiNative;->parsAndUpdateDenyMacFile(Ljava/util/Set;)V

    invoke-virtual {p0}, Lcom/android/server/wifi/MiuiWifiNative;->reloadDenyList()Z

    return-void
.end method

.method public setHotSpotMaxNum(I)V
    .locals 2
    .param p1, "num"    # I

    .prologue
    const-string v0, "max_num_sta"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/MiuiWifiNative;->parseAndUpdateSoftapConfigfile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
