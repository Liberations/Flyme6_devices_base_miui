.class public Lmiui/provider/CallLog;
.super Ljava/lang/Object;
.source "CallLog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CallLog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCall(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "insertUri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "addForAllUsers"    # Z

    .prologue
    const-string v11, "CallLog"

    const-string v12, "addCall(): addForAllUsers=%s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .local v5, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .local v6, "result":Landroid/net/Uri;
    if-eqz p3, :cond_1

    invoke-static {}, Lmiui/securityspace/ConfigUtils;->isSupportSecuritySpace()Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "user"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/UserManager;

    .local v9, "userManager":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .local v3, "currentUserId":I
    const-string v11, "CallLog"

    const-string v12, "addCall(): currentUserId=%s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v10

    .local v10, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_2

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    .local v8, "user":Landroid/content/pm/UserInfo;
    invoke-static {v9, v8}, Lmiui/provider/CallLog;->canInsertCalllog(Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "CallLog"

    const-string v12, "addCall(): insert for userId=%s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    iget v15, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v11, v8, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p1

    invoke-static {v0, v11}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v5, v11, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    .local v7, "uri":Landroid/net/Uri;
    iget v11, v8, Landroid/content/pm/UserInfo;->id:I

    if-ne v11, v3, :cond_0

    move-object v6, v7

    .end local v7    # "uri":Landroid/net/Uri;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v2    # "count":I
    .end local v3    # "currentUserId":I
    .end local v4    # "i":I
    .end local v8    # "user":Landroid/content/pm/UserInfo;
    .end local v9    # "userManager":Landroid/os/UserManager;
    .end local v10    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    :cond_2
    const-string v11, "CallLog"

    const-string v12, "addCall(): result=%s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v6, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6
.end method

.method private static canInsertCalllog(Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Z
    .locals 7
    .param p0, "userManager"    # Landroid/os/UserManager;
    .param p1, "user"    # Landroid/content/pm/UserInfo;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    .local v0, "canInsert":Z
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .local v1, "userHandle":Landroid/os/UserHandle;
    const/16 v4, 0x3e7

    iget v5, p1, Landroid/content/pm/UserInfo;->id:I

    if-eq v4, v5, :cond_1

    invoke-virtual {p0, v1}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "no_outgoing_calls"

    invoke-virtual {p0, v4, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .end local v1    # "userHandle":Landroid/os/UserHandle;
    :cond_0
    :goto_0
    const-string v4, "CallLog"

    const-string v5, "canInsertCallLog(): user=%s, canInsert=%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .restart local v1    # "userHandle":Landroid/os/UserHandle;
    :cond_1
    move v0, v3

    goto :goto_0
.end method
