.class public Lcom/android/server/content/SyncManagerInjectorAllVersion;
.super Ljava/lang/Object;
.source "SyncManagerInjectorAllVersion.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SyncManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static scheduleSyncForChangedAccounts(Lcom/android/server/content/SyncManager;Landroid/content/Intent;I)V
    .locals 19
    .param p0, "syncManager"    # Lcom/android/server/content/SyncManager;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "sendingUserId"    # I

    .prologue
    const-string v2, "account_changed_action"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .local v14, "action":Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, "accounts":[Landroid/accounts/Account;
    :try_start_0
    const-string v2, "accounts"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, [Landroid/accounts/Account;

    move-object v0, v2

    check-cast v0, [Landroid/accounts/Account;

    move-object v13, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v4, "SyncManager"

    const-string v5, "Account changed. Action: %s, Accounts: %s. "

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v14, v6, v2

    const/4 v7, 0x1

    if-nez v13, :cond_2

    const-string v2, "NULL"

    :goto_1
    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "altered"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "added"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    if-eqz v13, :cond_3

    move-object v15, v13

    .local v15, "arr$":[Landroid/accounts/Account;
    array-length v0, v15

    move/from16 v18, v0

    .local v18, "len$":I
    const/16 v17, 0x0

    .local v17, "i$":I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    aget-object v3, v15, v17

    .local v3, "account":Landroid/accounts/Account;
    if-eqz v3, :cond_1

    const/4 v5, -0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;JJZ)V

    :cond_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .end local v3    # "account":Landroid/accounts/Account;
    .end local v15    # "arr$":[Landroid/accounts/Account;
    .end local v17    # "i$":I
    .end local v18    # "len$":I
    :catch_0
    move-exception v16

    .local v16, "e":Ljava/lang/ClassCastException;
    const-string v2, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad account extra: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v16    # "e":Ljava/lang/ClassCastException;
    :cond_2
    invoke-static {v13}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    return-void
.end method
