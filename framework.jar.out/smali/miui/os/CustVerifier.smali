.class public Lmiui/os/CustVerifier;
.super Ljava/lang/Object;
.source "CustVerifier.java"


# static fields
.field private static final CUST_PATH:Ljava/lang/String;

.field private static final CUST_SIGNATURE_FILE:Ljava/lang/String;

.field private static final DEBUG:Z = false

.field private static final INT_SIZE:I = 0x4

.field public static final MODE_DELETE:I = 0x1

.field public static final MODE_NORMAL:I = 0x0

.field private static final RSANUMBYTES:I = 0x100

.field private static final TAG:Ljava/lang/String; = "CustVerifier"

.field private static final VERIFY_KEY_FILE:Ljava/lang/String; = "/verity_key"

.field private static sInstance:Lmiui/os/CustVerifier;


# instance fields
.field private mPubKey:Ljava/security/PublicKey;

.field private mSignatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/cust/cust/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lmiui/os/Build;->getCustVariant()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/os/CustVerifier;->CUST_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lmiui/os/CustVerifier;->CUST_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sign_customized_applist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/os/CustVerifier;->CUST_SIGNATURE_FILE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a2b(B)B
    .locals 1
    .param p1, "a"    # B

    .prologue
    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    add-int/lit8 v0, p1, -0x30

    int-to-byte v0, v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x61

    if-lt p1, v0, :cond_1

    const/16 v0, 0x66

    if-gt p1, v0, :cond_1

    add-int/lit8 v0, p1, -0x61

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x41

    if-lt p1, v0, :cond_2

    const/16 v0, 0x46

    if-gt p1, v0, :cond_2

    add-int/lit8 v0, p1, -0x41

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b2a(I)B
    .locals 1
    .param p1, "b"    # I

    .prologue
    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    add-int/lit8 v0, p1, 0x30

    int-to-byte v0, v0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, -0xa

    add-int/lit8 v0, v0, 0x61

    int-to-byte v0, v0

    goto :goto_0
.end method

.method private bytesToHexString([B)Ljava/lang/String;
    .locals 5
    .param p1, "data"    # [B

    .prologue
    array-length v4, p1

    mul-int/lit8 v4, v4, 0x2

    new-array v3, v4, [B

    .local v3, "res":[B
    const/4 v1, 0x0

    .local v1, "j":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_0

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "j":I
    .local v2, "j":I
    aget-byte v4, p1, v0

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    invoke-direct {p0, v4}, Lmiui/os/CustVerifier;->b2a(I)B

    move-result v4

    aput-byte v4, v3, v1

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "j":I
    .restart local v1    # "j":I
    aget-byte v4, p1, v0

    and-int/lit8 v4, v4, 0xf

    invoke-direct {p0, v4}, Lmiui/os/CustVerifier;->b2a(I)B

    move-result v4

    aput-byte v4, v3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    return-object v4
.end method

.method private checkCustSignature()V
    .locals 14

    .prologue
    const-string v11, "/verity_key"

    invoke-direct {p0, v11}, Lmiui/os/CustVerifier;->loadVerifyKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v8

    .local v8, "pubKey":Ljava/security/PublicKey;
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .local v9, "queue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/io/File;>;"
    new-instance v10, Ljava/io/File;

    sget-object v11, Lmiui/os/CustVerifier;->CUST_PATH:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v10, "root":Ljava/io/File;
    :try_start_0
    invoke-virtual {v9, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v9}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {v9}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .local v4, "files":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v5, v0, v6

    .local v5, "fn":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v9, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, ".apk"

    invoke-virtual {v5, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_1

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "dir":Ljava/io/File;
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "files":[Ljava/lang/String;
    .end local v5    # "fn":Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v11, "CustVerifier"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "checkCustSignature occurs: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    return-void
.end method

.method private getCustApkSignatures(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 18
    .param p1, "sigFn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .local v12, "signatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "failedMsg":Ljava/lang/String;
    :try_start_0
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v10, "signFile":Ljava/io/File;
    new-instance v8, Ljava/util/Scanner;

    invoke-direct {v8, v10}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .local v8, "scanner":Ljava/util/Scanner;
    :goto_0
    :try_start_1
    invoke-virtual {v8}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-virtual {v8}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "line":Ljava/lang/String;
    const-string v15, " "

    invoke-virtual {v6, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .local v13, "tokens":[Ljava/lang/String;
    array-length v15, v13

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    const/4 v15, 0x0

    aget-object v15, v13, v15

    const/16 v16, 0x1

    aget-object v16, v13, v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v6    # "line":Ljava/lang/String;
    .end local v13    # "tokens":[Ljava/lang/String;
    :catchall_0
    move-exception v15

    :try_start_2
    invoke-virtual {v8}, Ljava/util/Scanner;->close()V

    throw v15
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .end local v8    # "scanner":Ljava/util/Scanner;
    .end local v10    # "signFile":Ljava/io/File;
    :catch_0
    move-exception v7

    .local v7, "ne":Ljava/lang/NullPointerException;
    const-string v15, "CustVerifier"

    invoke-virtual {v7}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "cust signature file not found"

    .end local v7    # "ne":Ljava/lang/NullPointerException;
    :cond_0
    :goto_1
    const-string v15, "CustVerifier"

    invoke-static {v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    .end local v12    # "signatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_2
    return-object v12

    .restart local v6    # "line":Ljava/lang/String;
    .restart local v8    # "scanner":Ljava/util/Scanner;
    .restart local v10    # "signFile":Ljava/io/File;
    .restart local v12    # "signatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v13    # "tokens":[Ljava/lang/String;
    :cond_1
    const/4 v15, 0x0

    :try_start_3
    aget-object v15, v13, v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v11

    .local v11, "signLen":I
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v4, v0

    .local v4, "fileSize":I
    const/4 v15, 0x0

    aget-object v15, v13, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lmiui/os/CustVerifier;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v9

    .local v9, "sign":[B
    sub-int v15, v4, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v15, v9}, Lmiui/os/CustVerifier;->verifyFileBlockSignature(Ljava/io/File;I[B)Z

    move-result v14

    .local v14, "valid":Z
    if-nez v14, :cond_3

    const-string v3, "cust signature file is cracked"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v4    # "fileSize":I
    .end local v6    # "line":Ljava/lang/String;
    .end local v9    # "sign":[B
    .end local v11    # "signLen":I
    .end local v13    # "tokens":[Ljava/lang/String;
    .end local v14    # "valid":Z
    :cond_2
    :try_start_4
    invoke-virtual {v8}, Ljava/util/Scanner;->close()V

    if-nez v3, :cond_0

    const-string v3, "cust signature file is not signed"

    goto :goto_1

    .restart local v4    # "fileSize":I
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v9    # "sign":[B
    .restart local v11    # "signLen":I
    .restart local v13    # "tokens":[Ljava/lang/String;
    .restart local v14    # "valid":Z
    :cond_3
    invoke-virtual {v8}, Ljava/util/Scanner;->close()V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .end local v4    # "fileSize":I
    .end local v6    # "line":Ljava/lang/String;
    .end local v8    # "scanner":Ljava/util/Scanner;
    .end local v9    # "sign":[B
    .end local v10    # "signFile":Ljava/io/File;
    .end local v11    # "signLen":I
    .end local v13    # "tokens":[Ljava/lang/String;
    .end local v14    # "valid":Z
    :catch_1
    move-exception v5

    .local v5, "ie":Ljava/io/IOException;
    const-string v15, "CustVerifier"

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "failed to read cust signature file: IOException"

    goto :goto_1

    .end local v5    # "ie":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v15, "CustVerifier"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "failed to read cust signature file: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public static declared-synchronized getInstance()Lmiui/os/CustVerifier;
    .locals 3

    .prologue
    const-class v2, Lmiui/os/CustVerifier;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lmiui/os/CustVerifier;->sInstance:Lmiui/os/CustVerifier;

    if-nez v1, :cond_0

    new-instance v0, Lmiui/os/CustVerifier;

    invoke-direct {v0}, Lmiui/os/CustVerifier;-><init>()V

    .local v0, "instance":Lmiui/os/CustVerifier;
    invoke-direct {v0}, Lmiui/os/CustVerifier;->init()Z

    move-result v1

    if-eqz v1, :cond_0

    sput-object v0, Lmiui/os/CustVerifier;->sInstance:Lmiui/os/CustVerifier;

    :cond_0
    sget-object v1, Lmiui/os/CustVerifier;->sInstance:Lmiui/os/CustVerifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getSignPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const-string v2, "\\/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "pathSplite":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    sget-object v2, Lmiui/os/CustVerifier;->CUST_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .local v1, "sb":Ljava/lang/StringBuffer;
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".apk"

    const-string v4, ".sig"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private hexStringToBytes(Ljava/lang/String;)[B
    .locals 10
    .param p1, "hex"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    rem-int/lit8 v8, v8, 0x2

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    const/4 v1, 0x0

    :cond_0
    return-object v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    new-array v1, v8, [B

    .local v1, "buf":[B
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .local v7, "str":[B
    const/4 v4, 0x0

    .local v4, "j":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v8, v7

    add-int/lit8 v8, v8, -0x1

    if-ge v3, v8, :cond_0

    aget-byte v2, v7, v3

    .local v2, "high":B
    add-int/lit8 v8, v3, 0x1

    aget-byte v6, v7, v8

    .local v6, "low":B
    invoke-direct {p0, v2}, Lmiui/os/CustVerifier;->a2b(B)B

    move-result v8

    shl-int/lit8 v8, v8, 0x4

    invoke-direct {p0, v6}, Lmiui/os/CustVerifier;->a2b(B)B

    move-result v9

    or-int/2addr v8, v9

    int-to-byte v0, v8

    .local v0, "b":B
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "j":I
    .local v5, "j":I
    aput-byte v0, v1, v4

    add-int/lit8 v3, v3, 0x2

    move v4, v5

    .end local v5    # "j":I
    .restart local v4    # "j":I
    goto :goto_0
.end method

.method private init()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const-string v1, "/verity_key"

    invoke-direct {p0, v1}, Lmiui/os/CustVerifier;->loadVerifyKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v1

    iput-object v1, p0, Lmiui/os/CustVerifier;->mPubKey:Ljava/security/PublicKey;

    iget-object v1, p0, Lmiui/os/CustVerifier;->mPubKey:Ljava/security/PublicKey;

    if-nez v1, :cond_1

    const-string v1, "CustVerifier"

    const-string v2, "failed to load verify key"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lmiui/os/CustVerifier;->CUST_SIGNATURE_FILE:Ljava/lang/String;

    invoke-direct {p0, v1}, Lmiui/os/CustVerifier;->getCustApkSignatures(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lmiui/os/CustVerifier;->mSignatures:Ljava/util/HashMap;

    iget-object v1, p0, Lmiui/os/CustVerifier;->mSignatures:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadSignatureFromFile(Ljava/io/File;)Ljava/lang/String;
    .locals 7
    .param p1, "sigFile"    # Ljava/io/File;

    .prologue
    const/16 v5, 0x200

    :try_start_0
    new-array v0, v5, [B

    .local v0, "buf":[B
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .local v3, "fis":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .local v4, "total":I
    const/4 v1, 0x0

    .local v1, "count":I
    :cond_0
    :try_start_1
    array-length v5, v0

    sub-int/2addr v5, v4

    invoke-virtual {v3, v0, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    add-int/2addr v4, v1

    array-length v5, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v4, v5, :cond_0

    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    .end local v0    # "buf":[B
    .end local v1    # "count":I
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "total":I
    :goto_0
    return-object v5

    .restart local v0    # "buf":[B
    .restart local v1    # "count":I
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "total":I
    :catchall_0
    move-exception v5

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    throw v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .end local v0    # "buf":[B
    .end local v1    # "count":I
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "total":I
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    const-string v5, "CustVerifier"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto :goto_0
.end method

.method private loadVerifyKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 20
    .param p1, "keyPath"    # Ljava/lang/String;

    .prologue
    :try_start_0
    new-instance v9, Ljava/io/RandomAccessFile;

    const-string v17, "r"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-direct {v9, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .local v9, "keyFile":Ljava/io/RandomAccessFile;
    const/16 v17, 0x4

    :try_start_1
    move/from16 v0, v17

    new-array v3, v0, [B

    .local v3, "buf":[B
    invoke-virtual {v9, v3}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v17

    array-length v0, v3

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    const-string v17, "CustVerifier"

    const-string v18, "EOF when read len bytes"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v14, 0x0

    :try_start_2
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .end local v3    # "buf":[B
    .end local v9    # "keyFile":Ljava/io/RandomAccessFile;
    :goto_0
    return-object v14

    .restart local v3    # "buf":[B
    .restart local v9    # "keyFile":Ljava/io/RandomAccessFile;
    :cond_0
    const/16 v17, 0x0

    :try_start_3
    aget-byte v17, v3, v17

    const/16 v18, 0x1

    aget-byte v18, v3, v18

    shl-int/lit8 v18, v18, 0x8

    or-int v17, v17, v18

    const/16 v18, 0x2

    aget-byte v18, v3, v18

    shl-int/lit8 v18, v18, 0x10

    or-int v17, v17, v18

    const/16 v18, 0x3

    aget-byte v18, v3, v18

    shl-int/lit8 v18, v18, 0x18

    or-int v11, v17, v18

    .local v11, "len":I
    mul-int/lit8 v11, v11, 0x4

    if-lez v11, :cond_1

    const/16 v17, 0x100

    move/from16 v0, v17

    if-le v11, v0, :cond_2

    :cond_1
    const-string v17, "CustVerifier"

    const-string v18, "invalid len bytes"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v14, 0x0

    :try_start_4
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .end local v3    # "buf":[B
    .end local v9    # "keyFile":Ljava/io/RandomAccessFile;
    .end local v11    # "len":I
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    const-string v17, "CustVerifier"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception occur when load verify key: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    goto :goto_0

    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v3    # "buf":[B
    .restart local v9    # "keyFile":Ljava/io/RandomAccessFile;
    .restart local v11    # "len":I
    :cond_2
    const/16 v17, 0x4

    :try_start_5
    move/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    const-string v17, "CustVerifier"

    const-string v18, "can\'t skip n0inv bytes"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v14, 0x0

    :try_start_6
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0

    :cond_3
    :try_start_7
    new-array v13, v11, [B

    .local v13, "modBytes":[B
    invoke-virtual {v9, v13}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v17

    array-length v0, v13

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    const-string v17, "CustVerifier"

    const-string v18, "EOF when read mod bytes"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v14, 0x0

    :try_start_8
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    :cond_4
    const/4 v7, 0x0

    .local v7, "i":I
    add-int/lit8 v8, v11, -0x1

    .local v8, "j":I
    :goto_1
    if-ge v7, v8, :cond_5

    :try_start_9
    aget-byte v2, v13, v7

    .local v2, "b":B
    aget-byte v17, v13, v8

    aput-byte v17, v13, v7

    aput-byte v2, v13, v8

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .end local v2    # "b":B
    :cond_5
    new-instance v12, Ljava/math/BigInteger;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-direct {v12, v0, v13}, Ljava/math/BigInteger;-><init>(I[B)V

    .local v12, "mod":Ljava/math/BigInteger;
    rsub-int v0, v11, 0x100

    move/from16 v17, v0

    move/from16 v0, v17

    add-int/lit16 v0, v0, 0x100

    move/from16 v16, v0

    .local v16, "skipNum":I
    move/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, v16

    if-eq v0, v1, :cond_6

    const-string v17, "CustVerifier"

    const-string v18, "can\'t skip rr bytes"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const/4 v14, 0x0

    :try_start_a
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_0

    :cond_6
    :try_start_b
    invoke-virtual {v9, v3}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v17

    array-length v0, v3

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    const-string v17, "CustVerifier"

    const-string v18, "EOF when read exp bytes"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    const/4 v14, 0x0

    :try_start_c
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_0

    :cond_7
    const/16 v17, 0x0

    :try_start_d
    aget-byte v17, v3, v17

    const/16 v18, 0x1

    aget-byte v18, v3, v18

    shl-int/lit8 v18, v18, 0x8

    or-int v17, v17, v18

    const/16 v18, 0x2

    aget-byte v18, v3, v18

    shl-int/lit8 v18, v18, 0x10

    or-int v17, v17, v18

    const/16 v18, 0x3

    aget-byte v18, v3, v18

    shl-int/lit8 v18, v18, 0x18

    or-int v6, v17, v18

    .local v6, "expInt":I
    int-to-long v0, v6

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    .local v5, "exp":Ljava/math/BigInteger;
    new-instance v15, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v15, v12, v5}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .local v15, "rpks":Ljava/security/spec/RSAPublicKeySpec;
    const-string v17, "RSA"

    invoke-static/range {v17 .. v17}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v10

    .local v10, "kf":Ljava/security/KeyFactory;
    invoke-virtual {v10, v15}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result-object v14

    .local v14, "pk":Ljava/security/PublicKey;
    :try_start_e
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    goto/16 :goto_0

    .end local v3    # "buf":[B
    .end local v5    # "exp":Ljava/math/BigInteger;
    .end local v6    # "expInt":I
    .end local v7    # "i":I
    .end local v8    # "j":I
    .end local v10    # "kf":Ljava/security/KeyFactory;
    .end local v11    # "len":I
    .end local v12    # "mod":Ljava/math/BigInteger;
    .end local v13    # "modBytes":[B
    .end local v14    # "pk":Ljava/security/PublicKey;
    .end local v15    # "rpks":Ljava/security/spec/RSAPublicKeySpec;
    .end local v16    # "skipNum":I
    :catchall_0
    move-exception v17

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    throw v17
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
.end method

.method private verifyFileBlockSignature(Ljava/io/File;I[B)Z
    .locals 11
    .param p1, "file"    # Ljava/io/File;
    .param p2, "size"    # I
    .param p3, "signature"    # [B

    .prologue
    const/4 v7, 0x0

    if-nez p2, :cond_0

    const-string v8, "CustVerifier"

    const-string v9, "verifyFileBlockSignature get 0-sized block"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v7

    :goto_0
    return v4

    :cond_0
    :try_start_0
    const-string v8, "SHA256withRSA"

    invoke-static {v8}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v5

    .local v5, "sig":Ljava/security/Signature;
    iget-object v8, p0, Lmiui/os/CustVerifier;->mPubKey:Ljava/security/PublicKey;

    invoke-virtual {v5, v8}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    const/16 v8, 0x1000

    new-array v0, v8, [B

    .local v0, "buf":[B
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .local v3, "fis":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .local v6, "total":I
    :cond_1
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .local v1, "count":I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_3

    add-int v8, v1, v6

    if-le v8, p2, :cond_2

    sub-int v1, p2, v6

    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v5, v0, v8, v1}, Ljava/security/Signature;->update([BII)V

    add-int/2addr v6, v1

    if-ne v6, p2, :cond_1

    const-string v8, "CustVerifier"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "total: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v5, p3}, Ljava/security/Signature;->verify([B)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    .local v4, "result":Z
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .end local v0    # "buf":[B
    .end local v1    # "count":I
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "result":Z
    .end local v5    # "sig":Ljava/security/Signature;
    .end local v6    # "total":I
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "CustVerifier"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception occurs when verify file block: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v7

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "buf":[B
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "sig":Ljava/security/Signature;
    .restart local v6    # "total":I
    :catchall_0
    move-exception v8

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    throw v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method private verifyFileSignature(Ljava/lang/String;[B)Z
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "signature"    # [B

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "CustVerifier"

    const-string v3, "verifyFileSignature get null file"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v1, v2

    .local v1, "size":I
    invoke-direct {p0, v0, v1, p2}, Lmiui/os/CustVerifier;->verifyFileBlockSignature(Ljava/io/File;I[B)Z

    move-result v2

    goto :goto_0
.end method

.method private verifyPathSignature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;

    .prologue
    :try_start_0
    const-string v2, "SHA256withRSA"

    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .local v1, "sig":Ljava/security/Signature;
    iget-object v2, p0, Lmiui/os/CustVerifier;->mPubKey:Ljava/security/PublicKey;

    invoke-virtual {v1, v2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->update([B)V

    invoke-direct {p0, p2}, Lmiui/os/CustVerifier;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->verify([B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v1    # "sig":Ljava/security/Signature;
    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CustVerifier"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public verifyApkSignatue(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lmiui/os/CustVerifier;->getSignPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "sigPath":Ljava/lang/String;
    const-string v5, "CustVerifier"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Sig path "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, "sigFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    .local v0, "hasSigFile":Z
    if-nez p2, :cond_3

    const/4 v3, 0x0

    .local v3, "signature":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lmiui/os/CustVerifier;->loadSignatureFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "CustVerifier"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "has sig File1 : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-nez v3, :cond_2

    const-string v5, "CustVerifier"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "no signature found for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "signature":Ljava/lang/String;
    :cond_0
    :goto_1
    return v4

    .restart local v3    # "signature":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lmiui/os/CustVerifier;->mSignatures:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "signature":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3    # "signature":Ljava/lang/String;
    const-string v5, "CustVerifier"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "has sig File2 : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-direct {p0, v3}, Lmiui/os/CustVerifier;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lmiui/os/CustVerifier;->verifyFileSignature(Ljava/lang/String;[B)Z

    move-result v4

    goto :goto_1

    .end local v3    # "signature":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x1

    if-ne p2, v5, :cond_4

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lmiui/os/CustVerifier;->loadSignatureFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "signature":Ljava/lang/String;
    invoke-direct {p0, p1, v3}, Lmiui/os/CustVerifier;->verifyPathSignature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    goto :goto_1

    .end local v3    # "signature":Ljava/lang/String;
    :cond_4
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "not supported mode"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
