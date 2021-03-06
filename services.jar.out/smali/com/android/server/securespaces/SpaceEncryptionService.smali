.class public Lcom/android/server/securespaces/SpaceEncryptionService;
.super Landroid/service/securespaces/ISpaceEncryptionService$Stub;
.source "SpaceEncryptionService.java"


# static fields
.field private static final ABORTCMD:I = -0xc9

.field private static final ACKCMD:I = -0xca

.field private static final DEBUG:Z = true

.field private static final DEFAULT_AUTH_DATA:Ljava/lang/String; = "4178522d9b7d8c122e09d8c21e499939"

.field private static final EF_MOUNT:I = -0x79

.field private static final EF_OVERWRITE:I = -0x7b

.field private static final EF_UNMOUNT:I = -0x7c

.field private static final EF_UPDATE:I = -0x7a

.field private static final KEY_DESC_HASH_ALGORITHM:Ljava/lang/String; = "SHA-256"

.field private static final SALT_LENGTH:I = 0x20

.field private static final SECONDARY_STORAGE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SpaceEncryptionService"

.field private static final USER_SALT_DIR_NAME:Ljava/lang/String; = ".Spaces"

.field private static final USER_SALT_FILE_NAME:Ljava/lang/String; = "salt"

.field private static final WALLPAPER:Ljava/lang/String; = "wallpaper"

.field private static final WALLPAPER_INFO:Ljava/lang/String; = "wallpaper_info.xml"

.field private static final fekekDescriptionSalt:[B

.field private static final fnekDescriptionSalt:[B


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEcryptfsLock:Ljava/lang/Object;

.field private mEcryptfsMountedUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguard:Lcom/android/server/securespaces/Keyguard;

.field private mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

.field private mPms:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x20

    const-string v0, "miui_security"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/securespaces/SpaceEncryptionService;->fekekDescriptionSalt:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/securespaces/SpaceEncryptionService;->fnekDescriptionSalt:[B

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/securespaces/SpaceEncryptionService;->SECONDARY_STORAGE:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x30t
        -0x46t
        0x14t
        -0x3ft
        -0x1et
        -0x50t
        -0x7et
        -0x23t
        -0x2dt
        -0x7t
        -0x7t
        0x6et
        0x2dt
        0x1ft
        0x46t
        -0x55t
        0x67t
        0x8t
        0x4bt
        -0xft
        -0x67t
        0x72t
        -0x45t
        0x78t
        0x33t
        -0x63t
        0x17t
        0x1bt
        -0x5t
        -0x1at
        -0x2et
        0x6at
    .end array-data

    :array_1
    .array-data 1
        0x7et
        0x5ct
        -0x66t
        0x60t
        -0x2et
        -0x31t
        -0x36t
        0x3et
        -0x73t
        0x35t
        -0x2at
        -0x48t
        -0x63t
        -0x73t
        0x11t
        0x10t
        0xdt
        0x36t
        0x6et
        0x5at
        0x16t
        -0x7t
        -0x46t
        0x7bt
        0x3ct
        -0x1bt
        -0x7at
        0x28t
        -0x6et
        -0x61t
        -0x69t
        -0x6et
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsMountedUsers:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/securespaces/PackageManagerQueue;->getInstance()Lcom/android/server/securespaces/PackageManagerQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/securespaces/SpaceEncryptionService;->initializeEcryptfsMounts(Z)V

    return-void
.end method

.method private doEcryptfsMountLocked(IILjava/lang/String;)I
    .locals 12
    .param p1, "userId"    # I
    .param p2, "authId"    # I
    .param p3, "authData"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .local v6, "rc":I
    const-string v9, "SpaceEncryptionService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "doEcryptfsMountLocked: userId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " authId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniInitssService()I

    move-result v6

    if-eqz v6, :cond_0

    const-string v9, "SpaceEncryptionService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "doEcryptfsMountLocked - jniInitssService failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, -0x1

    :goto_0
    return v9

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->getUserSalt(I)[B

    move-result-object v8

    .local v8, "userSalt":[B
    invoke-direct {p0, p1, v8}, Lcom/android/server/securespaces/SpaceEncryptionService;->generateFekekDescription(I[B)Ljava/lang/String;

    move-result-object v2

    .local v2, "fekekDesc":Ljava/lang/String;
    invoke-direct {p0, p1, v8}, Lcom/android/server/securespaces/SpaceEncryptionService;->generateFnekDescription(I[B)Ljava/lang/String;

    move-result-object v3

    .local v3, "fnekDesc":Ljava/lang/String;
    invoke-direct {p0, p1, v8}, Lcom/android/server/securespaces/SpaceEncryptionService;->generateMediaFekekDescription(I[B)Ljava/lang/String;

    move-result-object v4

    .local v4, "mediaFekekDesc":Ljava/lang/String;
    invoke-direct {p0, p1, v8}, Lcom/android/server/securespaces/SpaceEncryptionService;->generateMediaFnekDescription(I[B)Ljava/lang/String;

    move-result-object v5

    .local v5, "mediaFnekDesc":Ljava/lang/String;
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    .local v1, "encodedAuthData":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "cmdStr":Ljava/lang/String;
    const/16 v9, -0x79

    invoke-static {v9, v0}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniSendssService(ILjava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_1

    const-string v9, "SpaceEncryptionService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to execute mount cmdStr: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniRecvssService()I

    move-result v7

    .local v7, "ret":I
    const/16 v9, -0xca

    if-ne v7, v9, :cond_2

    const/4 v6, 0x0

    :goto_1
    move v9, v6

    goto/16 :goto_0

    :cond_2
    const-string v9, "SpaceEncryptionService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Execution of mount cmdStr: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " returned: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0, v6}, Lcom/android/server/securespaces/SpaceEncryptionService;->getEncryptionCmdError(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, -0x1

    goto :goto_1
.end method

.method private doEcryptfsOverwriteLocked(I)I
    .locals 7
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "rc":I
    const-string v3, "SpaceEncryptionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doEcryptfsOverwriteLocked: userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniInitssService()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v3, "SpaceEncryptionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "jniInitssService failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    monitor-exit v4

    :goto_0
    return v3

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "cmdStr":Ljava/lang/String;
    const/16 v3, -0x7b

    invoke-static {v3, v0}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniSendssService(ILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    const-string v3, "SpaceEncryptionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to execute overwrite cmdStr: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniRecvssService()I

    move-result v2

    .local v2, "ret":I
    const/16 v3, -0xca

    if-ne v2, v3, :cond_2

    const/4 v1, 0x0

    :goto_1
    monitor-exit v4

    move v3, v1

    goto :goto_0

    :cond_2
    const-string v3, "SpaceEncryptionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Execution of overwrite cmdStr: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " returned: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v1}, Lcom/android/server/securespaces/SpaceEncryptionService;->getEncryptionCmdError(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    goto :goto_1

    .end local v0    # "cmdStr":Ljava/lang/String;
    .end local v2    # "ret":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private doEcryptfsUnmountLocked(I)I
    .locals 6
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "rc":I
    const-string v3, "SpaceEncryptionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doEcryptfsUnmountLocked: Unmounting userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniInitssService()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v3, "SpaceEncryptionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doEcryptfsUnmountLocked - jniInitssService failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    :goto_0
    return v3

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "cmdStr":Ljava/lang/String;
    const/16 v3, -0x7c

    invoke-static {v3, v0}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniSendssService(ILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    const-string v3, "SpaceEncryptionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to execute umount cmdStr: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniRecvssService()I

    move-result v2

    .local v2, "ret":I
    const/16 v3, -0xca

    if-ne v2, v3, :cond_2

    const/4 v1, 0x0

    :goto_1
    move v3, v1

    goto :goto_0

    :cond_2
    const-string v3, "SpaceEncryptionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Execution of unmount cmdStr: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " returned: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v1}, Lcom/android/server/securespaces/SpaceEncryptionService;->getEncryptionCmdError(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    goto :goto_1
.end method

.method private doEcryptfsUpdateLocked(IILjava/lang/String;)I
    .locals 12
    .param p1, "userId"    # I
    .param p2, "authId"    # I
    .param p3, "authData"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .local v6, "rc":I
    const-string v9, "SpaceEncryptionService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "doEcryptfsUpdateLocked: userId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " authId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniInitssService()I

    move-result v6

    if-eqz v6, :cond_0

    const-string v9, "SpaceEncryptionService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "doEcryptfsUpdateLocked - jniInitssService failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, -0x1

    :goto_0
    return v9

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->getUserSalt(I)[B

    move-result-object v8

    .local v8, "userSalt":[B
    invoke-direct {p0, p1, v8}, Lcom/android/server/securespaces/SpaceEncryptionService;->generateFekekDescription(I[B)Ljava/lang/String;

    move-result-object v2

    .local v2, "fekekDesc":Ljava/lang/String;
    invoke-direct {p0, p1, v8}, Lcom/android/server/securespaces/SpaceEncryptionService;->generateFnekDescription(I[B)Ljava/lang/String;

    move-result-object v3

    .local v3, "fnekDesc":Ljava/lang/String;
    invoke-direct {p0, p1, v8}, Lcom/android/server/securespaces/SpaceEncryptionService;->generateMediaFekekDescription(I[B)Ljava/lang/String;

    move-result-object v4

    .local v4, "mediaFekekDesc":Ljava/lang/String;
    invoke-direct {p0, p1, v8}, Lcom/android/server/securespaces/SpaceEncryptionService;->generateMediaFnekDescription(I[B)Ljava/lang/String;

    move-result-object v5

    .local v5, "mediaFnekDesc":Ljava/lang/String;
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    .local v1, "encodedAuthData":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "cmdStr":Ljava/lang/String;
    const/16 v9, -0x7a

    invoke-static {v9, v0}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniSendssService(ILjava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_1

    const-string v9, "SpaceEncryptionService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to execute update cmdStr: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniRecvssService()I

    move-result v7

    .local v7, "ret":I
    const/16 v9, -0xca

    if-ne v7, v9, :cond_2

    const/4 v6, 0x0

    :goto_1
    move v9, v6

    goto/16 :goto_0

    :cond_2
    const-string v9, "SpaceEncryptionService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Execution of update cmdStr: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " returned: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0, v6}, Lcom/android/server/securespaces/SpaceEncryptionService;->getEncryptionCmdError(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, -0x1

    goto :goto_1
.end method

.method private generateEcryptfsKeyDescription(Ljava/lang/String;[BI[B)Ljava/lang/String;
    .locals 6
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "fixedSalt"    # [B
    .param p3, "userId"    # I
    .param p4, "userSalt"    # [B

    .prologue
    const/4 v0, 0x0

    .local v0, "H":[B
    :try_start_0
    const-string v4, "SHA-256"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {v3, p2}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->update([B)V

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v3, p4}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v3, p2}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .local v1, "desc":Ljava/lang/String;
    const/4 v4, 0x0

    const/16 v5, 0x10

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .end local v1    # "desc":Ljava/lang/String;
    .end local v3    # "md":Ljava/security/MessageDigest;
    :goto_0
    return-object v4

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "SpaceEncryptionService"

    const-string v5, "caught exception from MessageDigest: "

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v4, 0x0

    goto :goto_0
.end method

.method private generateFekekDescription(I[B)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "userSalt"    # [B

    .prologue
    const-string v0, "fekek"

    sget-object v1, Lcom/android/server/securespaces/SpaceEncryptionService;->fekekDescriptionSalt:[B

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/securespaces/SpaceEncryptionService;->generateEcryptfsKeyDescription(Ljava/lang/String;[BI[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generateFnekDescription(I[B)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "userSalt"    # [B

    .prologue
    const-string v0, "fnek"

    sget-object v1, Lcom/android/server/securespaces/SpaceEncryptionService;->fnekDescriptionSalt:[B

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/securespaces/SpaceEncryptionService;->generateEcryptfsKeyDescription(Ljava/lang/String;[BI[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generateMediaFekekDescription(I[B)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "userSalt"    # [B

    .prologue
    const-string v0, "media-fekek"

    sget-object v1, Lcom/android/server/securespaces/SpaceEncryptionService;->fekekDescriptionSalt:[B

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/securespaces/SpaceEncryptionService;->generateEcryptfsKeyDescription(Ljava/lang/String;[BI[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generateMediaFnekDescription(I[B)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "userSalt"    # [B

    .prologue
    const-string v0, "media-fnek"

    sget-object v1, Lcom/android/server/securespaces/SpaceEncryptionService;->fnekDescriptionSalt:[B

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/securespaces/SpaceEncryptionService;->generateEcryptfsKeyDescription(Ljava/lang/String;[BI[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getEncryptionCmdError(I)Ljava/lang/String;
    .locals 1
    .param p1, "code"    # I

    .prologue
    packed-switch p1, :pswitch_data_0

    const-string v0, "Unknown Error."

    .local v0, "errStr":Ljava/lang/String;
    :goto_0
    return-object v0

    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_0
    const-string v0, "ABORTCMD"

    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_1
    const-string v0, "ACKCMD"

    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_2
    const-string v0, "CMD_ERR_OUT_OF_MEMORY"

    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_3
    const-string v0, "CMD_ERR_NO_AUTH_DATA"

    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_4
    const-string v0, "CMD_ERR_KEYRING"

    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_5
    const-string v0, "CMD_ERR_PREPARE_DIR"

    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_6
    const-string v0, "CMD_ERR_FILE_NOT_FOUND"

    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_7
    const-string v0, "CMD_ERR_CREATE_KEY"

    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_8
    const-string v0, "CMD_ERR_FIND_KEY"

    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_9
    const-string v0, "CMD_ERR_LOAD_KEY"

    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_a
    const-string v0, "CMD_ERR_HASHDATA"

    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_b
    const-string v0, "CMD_ERR_MOUNT"

    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_c
    const-string v0, "CMD_ERR_UMOUNT"

    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_d
    const-string v0, "CMD_ERR_SYSCALL"

    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_e
    const-string v0, "CMD_ERR_INVALID_ARGS"

    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_f
    const-string v0, "CMD_ERR_FILE_COPY"

    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_10
    const-string v0, "CMD_ERR_RANDOM_BYTE"

    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_11
    const-string v0, "CMD_ERR_WRITE_KEYFILE"

    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_12
    const-string v0, "CMD_ERR_MAP_FILE"

    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "errStr":Ljava/lang/String;
    :pswitch_13
    const-string v0, "CMD_ERR_REMOVE_DIR"

    .restart local v0    # "errStr":Ljava/lang/String;
    goto :goto_0

    :pswitch_data_0
    .packed-switch -0xdc
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getUserSalt(I)[B
    .locals 10
    .param p1, "userId"    # I

    .prologue
    const/16 v7, 0x20

    new-array v3, v7, [B

    .local v3, "salt":[B
    new-instance v5, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v7

    const-string v8, ".Spaces"

    invoke-direct {v5, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v5, "userSaltDir":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    const-string v7, "salt"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v6, "userSaltFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .local v1, "finput":Ljava/io/FileInputStream;
    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "finput":Ljava/io/FileInputStream;
    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    const-string v7, "SpaceEncryptionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file input exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    .local v4, "sr":Ljava/security/SecureRandom;
    invoke-virtual {v4, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .local v2, "foutput":Ljava/io/FileOutputStream;
    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v6}, Ljava/io/File;->setReadOnly()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .end local v2    # "foutput":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "SpaceEncryptionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file output exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initializeEcryptfsMounts(Z)V
    .locals 12
    .param p1, "keepMounts"    # Z

    .prologue
    iget-object v9, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    new-instance v6, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "/user/"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .local v6, "userDataDir":Ljava/lang/String;
    new-instance v2, Lcom/android/internal/util/ProcFileReader;

    new-instance v8, Ljava/io/FileInputStream;

    const-string v10, "/proc/mounts"

    invoke-direct {v8, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v8}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V

    .local v2, "pfr":Lcom/android/internal/util/ProcFileReader;
    :goto_0
    invoke-virtual {v2}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v2}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v4

    .local v4, "s1":Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v5

    .local v5, "s3":Ljava/lang/String;
    const-string v8, "ecryptfs"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v1, v8, 0x1

    .local v1, "i":I
    new-instance v7, Ljava/lang/Integer;

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .local v7, "userId":Ljava/lang/Integer;
    if-eqz p1, :cond_1

    iget-object v8, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsMountedUsers:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v1    # "i":I
    .end local v5    # "s3":Ljava/lang/String;
    .end local v7    # "userId":Ljava/lang/Integer;
    :cond_0
    :goto_1
    invoke-virtual {v2}, Lcom/android/internal/util/ProcFileReader;->finishLine()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v2    # "pfr":Lcom/android/internal/util/ProcFileReader;
    .end local v4    # "s1":Ljava/lang/String;
    .end local v6    # "userDataDir":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    const-string v8, "SpaceEncryptionService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file not found: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .restart local v1    # "i":I
    .restart local v2    # "pfr":Lcom/android/internal/util/ProcFileReader;
    .restart local v4    # "s1":Ljava/lang/String;
    .restart local v5    # "s3":Ljava/lang/String;
    .restart local v6    # "userDataDir":Ljava/lang/String;
    .restart local v7    # "userId":Ljava/lang/Integer;
    :cond_1
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/server/securespaces/SpaceEncryptionService;->doEcryptfsUnmountLocked(I)I

    move-result v3

    .local v3, "rc":I
    if-eqz v3, :cond_0

    const-string v8, "SpaceEncryptionService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ecryptfs unmount operation for user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " failed with rc = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .end local v1    # "i":I
    .end local v2    # "pfr":Lcom/android/internal/util/ProcFileReader;
    .end local v3    # "rc":I
    .end local v4    # "s1":Ljava/lang/String;
    .end local v5    # "s3":Ljava/lang/String;
    .end local v6    # "userDataDir":Ljava/lang/String;
    .end local v7    # "userId":Ljava/lang/Integer;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    const-string v8, "SpaceEncryptionService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "io exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v8

    .restart local v2    # "pfr":Lcom/android/internal/util/ProcFileReader;
    .restart local v6    # "userDataDir":Ljava/lang/String;
    :cond_2
    :try_start_4
    invoke-virtual {v2}, Lcom/android/internal/util/ProcFileReader;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method private isUserEcryptfsMountedLocked(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsMountedUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static native jniEcryptfsMountRemovable(ILjava/lang/String;)I
.end method

.method private static native jniEcryptfsUnmountRemovable(I)I
.end method

.method private static native jniInitssService()I
.end method

.method private static native jniRecvssService()I
.end method

.method private static native jniSendssService(ILjava/lang/String;)I
.end method

.method private processPackageManagerQueueLocked(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPms:Lcom/android/server/pm/PackageManagerService;

    if-nez v0, :cond_0

    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPms:Lcom/android/server/pm/PackageManagerService;

    :cond_0
    iget-object v1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    invoke-virtual {v0, p1, v2}, Lcom/android/server/pm/PackageManagerService;->processPackageManagerQueue(ILcom/android/server/securespaces/PackageManagerQueue;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private validatePermission(Ljava/lang/String;)V
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission check failed, need: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method


# virtual methods
.method public ecryptfsMount(IILjava/lang/String;)I
    .locals 4
    .param p1, "userId"    # I
    .param p2, "authId"    # I
    .param p3, "authData"    # Ljava/lang/String;

    .prologue
    const-string v1, "SpaceEncryptionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in ecryptfsMount("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", authData)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v1}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    const-string v1, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v1}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mKeyguard:Lcom/android/server/securespaces/Keyguard;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/securespaces/Keyguard;

    iget-object v2, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/securespaces/Keyguard;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mKeyguard:Lcom/android/server/securespaces/Keyguard;

    :cond_0
    iget-object v2, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->isUserEcryptfsMountedLocked(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    monitor-exit v2

    :goto_0
    return v0

    :cond_1
    if-nez p3, :cond_3

    const-string v1, "4178522d9b7d8c122e09d8c21e499939"

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/securespaces/SpaceEncryptionService;->doEcryptfsMountLocked(IILjava/lang/String;)I

    move-result v0

    .local v0, "rc":I
    :goto_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsMountedUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->processPackageManagerQueueLocked(I)V

    :cond_2
    monitor-exit v2

    goto :goto_0

    .end local v0    # "rc":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/securespaces/SpaceEncryptionService;->doEcryptfsMountLocked(IILjava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .restart local v0    # "rc":I
    goto :goto_1
.end method

.method public ecryptfsMountRemovableNonOwner(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const-string v1, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v1}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/securespaces/SpaceEncryptionService;->SECONDARY_STORAGE:Ljava/lang/String;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsLock:Ljava/lang/Object;

    monitor-enter v2

    if-eqz p1, :cond_1

    const/16 v1, 0x63

    if-eq p1, v1, :cond_1

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .local v0, "state":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniEcryptfsMountRemovable(ILjava/lang/String;)I

    .end local v0    # "state":Ljava/lang/String;
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public ecryptfsOverwrite(I)I
    .locals 4
    .param p1, "userId"    # I

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, "callingUid":I
    const-string v1, "SpaceEncryptionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in ecryptfsOverwrite("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "SpaceEncryptionService"

    const-string v2, "Calling UID must be System to overwrite the Ecryptfs keys."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->doEcryptfsOverwriteLocked(I)I

    move-result v1

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public ecryptfsUnmount(I)I
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const-string v1, "SpaceEncryptionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in ecryptfsUnmount("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v1}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->isUserEcryptfsMountedLocked(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    monitor-exit v2

    :goto_0
    return v0

    :cond_0
    const-string v1, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v1}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->doEcryptfsUnmountLocked(I)I

    move-result v0

    .local v0, "rc":I
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsMountedUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    monitor-exit v2

    goto :goto_0

    .end local v0    # "rc":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public ecryptfsUnmountRemovableNonOwner(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const-string v1, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v1}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/securespaces/SpaceEncryptionService;->SECONDARY_STORAGE:Ljava/lang/String;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsLock:Ljava/lang/Object;

    monitor-enter v2

    if-eqz p1, :cond_1

    const/16 v1, 0x63

    if-eq p1, v1, :cond_1

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .local v0, "state":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->jniEcryptfsUnmountRemovable(I)I

    .end local v0    # "state":Ljava/lang/String;
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public ecryptfsUpdate(IILjava/lang/String;)I
    .locals 7
    .param p1, "userId"    # I
    .param p2, "authId"    # I
    .param p3, "authData"    # Ljava/lang/String;

    .prologue
    const-string v4, "SpaceEncryptionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "in ecryptfsUpdate("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", authData)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v4}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    const-string v4, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v4}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->isUserEcryptfsMountedLocked(I)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, -0x1

    monitor-exit v5

    :goto_0
    return v4

    :cond_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    .local v3, "userManager":Lcom/android/server/pm/UserManagerService;
    invoke-virtual {v3, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoPartial(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .local v2, "ui":Landroid/content/pm/UserInfo;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isHidden()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez p2, :cond_2

    const/16 v4, 0x20

    new-array v0, v4, [B

    .local v0, "randomAuth":[B
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .local v1, "sr":Ljava/security/SecureRandom;
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {v0}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    .end local v0    # "randomAuth":[B
    .end local v1    # "sr":Ljava/security/SecureRandom;
    :cond_1
    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/securespaces/SpaceEncryptionService;->doEcryptfsUpdateLocked(IILjava/lang/String;)I

    move-result v4

    monitor-exit v5

    goto :goto_0

    .end local v2    # "ui":Landroid/content/pm/UserInfo;
    .end local v3    # "userManager":Lcom/android/server/pm/UserManagerService;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v2    # "ui":Landroid/content/pm/UserInfo;
    .restart local v3    # "userManager":Lcom/android/server/pm/UserManagerService;
    :cond_2
    :try_start_1
    const-string p3, "4178522d9b7d8c122e09d8c21e499939"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public isAuthProtected(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const-string v2, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v2}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .local v1, "lpu":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .local v0, "isProtected":Z
    :goto_0
    const-string v2, "SpaceEncryptionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAuthProtected: userId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "SpaceEncryptionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lpu.isLockPasswordEnabled() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "SpaceEncryptionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lpu.isLockPatternEnabled() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .end local v0    # "isProtected":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needAirlockUser(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const-string v2, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v2}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "needAirLockUser":Z
    iget-object v3, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->needsEcryptfsMount(I)Z

    move-result v1

    .local v1, "needsEcryptfsMount":Z
    invoke-virtual {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->isAuthProtected(I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit v3

    return v0

    .end local v1    # "needsEcryptfsMount":Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public needsEcryptfsMount(I)Z
    .locals 6
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x0

    const-string v3, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v3}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->isUserEcryptfsMountedLocked(I)Z

    move-result v4

    if-eqz v4, :cond_0

    monitor-exit v3

    :goto_0
    return v2

    :cond_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    .local v1, "userManager":Lcom/android/server/pm/UserManagerService;
    invoke-virtual {v1, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoPartial(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .local v0, "ui":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_1

    const-string v4, "SpaceEncryptionService"

    const-string v5, "needsEcryptfsMount - user does not exist for given user id."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    goto :goto_0

    .end local v0    # "ui":Landroid/content/pm/UserInfo;
    .end local v1    # "userManager":Lcom/android/server/pm/UserManagerService;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "ui":Landroid/content/pm/UserInfo;
    .restart local v1    # "userManager":Lcom/android/server/pm/UserManagerService;
    :cond_1
    if-eqz p1, :cond_2

    const/16 v4, 0x63

    if-ne p1, v4, :cond_3

    :cond_2
    :try_start_1
    monitor-exit v3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEncryptedSpace()Z

    move-result v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public processEncryption(Landroid/content/pm/UserInfo;)Z
    .locals 7
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v4}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    .local v1, "userId":I
    iget-object v4, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mEcryptfsLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/securespaces/SpaceEncryptionService;->needsEcryptfsMount(I)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v3, "SpaceEncryptionService"

    const-string v5, "processEncryption no need to encrypt the user."

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    :goto_0
    return v2

    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v1, v5, v6}, Lcom/android/server/securespaces/SpaceEncryptionService;->ecryptfsMount(IILjava/lang/String;)I

    move-result v0

    .local v0, "rc":I
    if-gez v0, :cond_1

    const-string v2, "SpaceEncryptionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processEncryption ecryptfsMount failed with rc = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    move v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isHidden()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v1, v3, v5}, Lcom/android/server/securespaces/SpaceEncryptionService;->ecryptfsUpdate(IILjava/lang/String;)I

    :cond_2
    monitor-exit v4

    goto :goto_0

    .end local v0    # "rc":I
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setAirlockWallpaperToUser(I)V
    .locals 8
    .param p1, "userIdOrig"    # I

    .prologue
    const/4 v7, -0x1

    const/16 v6, 0x63

    const-string v4, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v4}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    if-ne p1, v6, :cond_1

    const-string v4, "SpaceEncryptionService"

    const-string v5, "Invalid userid."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v4

    const-string v5, "wallpaper"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v2, "srcWallpaperFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-static {v6}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v4

    const-string v5, "wallpaper"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v0, "dstWallpaperFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v2, v0}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "SpaceEncryptionService"

    const-string v5, "Copy of wallpaper file failed."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    const/16 v4, 0x1c0

    invoke-static {v0, v4, v7, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "SpaceEncryptionService"

    const-string v5, "Set permissions of wallpaper file failed."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v3, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v4

    const-string v5, "wallpaper_info.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v3, "srcWallpaperInfoFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-static {v6}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v4

    const-string v5, "wallpaper_info.xml"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v1, "dstWallpaperInfoFile":Ljava/io/File;
    invoke-static {v3, v1}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "SpaceEncryptionService"

    const-string v5, "Copy of wallpaper info file failed."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "dstWallpaperInfoFile":Ljava/io/File;
    .end local v3    # "srcWallpaperInfoFile":Ljava/io/File;
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method public setOpAddExcludeFromWipe(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 6
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "SpaceEncryptionService"

    const-string v3, "setOpAddExcludeFromWipe(%d, %s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    aput-object p3, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v2}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/server/securespaces/SpaceEncryptionService;->needsEcryptfsMount(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, p1, p3, p2}, Lcom/android/server/securespaces/PackageManagerQueue;->setOp(ILjava/lang/String;Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    invoke-virtual {v2}, Lcom/android/server/securespaces/PackageManagerQueue;->writeOp()V

    monitor-exit v1

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setOpCleanUserData(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "SpaceEncryptionService"

    const-string v3, "setOpCleanUserData(%d)"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v2}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/server/securespaces/SpaceEncryptionService;->needsEcryptfsMount(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    const/16 v3, 0x8

    invoke-virtual {v2, v3, p1, p2}, Lcom/android/server/securespaces/PackageManagerQueue;->setOp(ILjava/lang/String;I)V

    iget-object v2, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    invoke-virtual {v2}, Lcom/android/server/securespaces/PackageManagerQueue;->writeOp()V

    monitor-exit v1

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setOpClearUserData(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const-string v0, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v0}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/server/securespaces/SpaceEncryptionService;->needsEcryptfsMount(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    const/4 v2, 0x6

    invoke-virtual {v0, v2, p1, p3, p2}, Lcom/android/server/securespaces/PackageManagerQueue;->setOp(ILjava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    invoke-virtual {v0}, Lcom/android/server/securespaces/PackageManagerQueue;->writeOp()V

    monitor-exit v1

    const/4 v0, 0x1

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOpCreateUserConfig(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const-string v0, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v0}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/securespaces/SpaceEncryptionService;->needsEcryptfsMount(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    const/4 v2, 0x5

    invoke-virtual {v0, v2, p1}, Lcom/android/server/securespaces/PackageManagerQueue;->setOp(II)V

    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    invoke-virtual {v0}, Lcom/android/server/securespaces/PackageManagerQueue;->writeOp()V

    monitor-exit v1

    const/4 v0, 0x1

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOpCreateUserData(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Z
    .locals 8
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "seinfo"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v1}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/server/securespaces/SpaceEncryptionService;->needsEcryptfsMount(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v7, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    monitor-enter v7

    :try_start_0
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    const/4 v1, 0x0

    move-object v2, p1

    move-object v3, p3

    move v4, p2

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/securespaces/PackageManagerQueue;->setOp(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    invoke-virtual {v0}, Lcom/android/server/securespaces/PackageManagerQueue;->writeOp()V

    monitor-exit v7

    const/4 v0, 0x1

    :cond_0
    return v0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOpDeleteCacheFiles(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const-string v0, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v0}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/server/securespaces/SpaceEncryptionService;->needsEcryptfsMount(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, p1, p3, p2}, Lcom/android/server/securespaces/PackageManagerQueue;->setOp(ILjava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    invoke-virtual {v0}, Lcom/android/server/securespaces/PackageManagerQueue;->writeOp()V

    monitor-exit v1

    const/4 v0, 0x1

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOpDeleteCodeCacheFiles(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const-string v0, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v0}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/server/securespaces/SpaceEncryptionService;->needsEcryptfsMount(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, p1, p3, p2}, Lcom/android/server/securespaces/PackageManagerQueue;->setOp(ILjava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    invoke-virtual {v0}, Lcom/android/server/securespaces/PackageManagerQueue;->writeOp()V

    monitor-exit v1

    const/4 v0, 0x1

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOpLinkNativeLibraryDir(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "dataPath"    # Ljava/lang/String;
    .param p4, "newNativePath32"    # Ljava/lang/String;

    .prologue
    const-string v0, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v0}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/server/securespaces/SpaceEncryptionService;->needsEcryptfsMount(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v6, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    monitor-enter v6

    :try_start_0
    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    const/4 v1, 0x2

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/securespaces/PackageManagerQueue;->setOp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    invoke-virtual {v0}, Lcom/android/server/securespaces/PackageManagerQueue;->writeOp()V

    monitor-exit v6

    const/4 v0, 0x1

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOpRemove(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 4
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const-string v1, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v1}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/server/securespaces/SpaceEncryptionService;->needsEcryptfsMount(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1, p3, p2}, Lcom/android/server/securespaces/PackageManagerQueue;->setOp(ILjava/lang/String;Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mPackageManagerQueue:Lcom/android/server/securespaces/PackageManagerQueue;

    invoke-virtual {v2}, Lcom/android/server/securespaces/PackageManagerQueue;->writeOp()V

    monitor-exit v1

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public switchUser(I)Z
    .locals 10
    .param p1, "userId"    # I

    .prologue
    const-string v7, "android.permission.MANAGE_USERS"

    invoke-direct {p0, v7}, Lcom/android/server/securespaces/SpaceEncryptionService;->validatePermission(Ljava/lang/String;)V

    const/4 v4, 0x0

    .local v4, "rc":Z
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .local v0, "am":Landroid/app/IActivityManager;
    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->switchUser(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v6

    .local v6, "wm":Landroid/view/IWindowManager;
    const/4 v2, 0x0

    .local v2, "iters":I
    :cond_0
    const-string v7, "SpaceEncryptionService"

    const-string v8, "waiting for current user to be updated..."

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, 0xfa

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    if-eq v7, p1, :cond_1

    const/16 v7, 0x8

    if-lt v2, v7, :cond_0

    :cond_1
    iget-object v7, p0, Lcom/android/server/securespaces/SpaceEncryptionService;->mKeyguard:Lcom/android/server/securespaces/Keyguard;

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/android/server/securespaces/Keyguard;->keyguardDone(ZZ)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v2    # "iters":I
    .end local v6    # "wm":Landroid/view/IWindowManager;
    :cond_2
    :goto_0
    return v4

    :catch_0
    move-exception v3

    .local v3, "npe":Ljava/lang/NullPointerException;
    const-string v7, "SpaceEncryptionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "npe encountered in switchUser("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto :goto_0

    .end local v3    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v5

    .local v5, "rex":Landroid/os/RemoteException;
    const-string v7, "SpaceEncryptionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "binder call threw a remote exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto :goto_0

    .end local v5    # "rex":Landroid/os/RemoteException;
    :catch_2
    move-exception v1

    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v7, "SpaceEncryptionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "interrupted while waiting for user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    const/4 v4, 0x0

    goto :goto_0
.end method

.method public systemReady()V
    .locals 0

    .prologue
    return-void
.end method
