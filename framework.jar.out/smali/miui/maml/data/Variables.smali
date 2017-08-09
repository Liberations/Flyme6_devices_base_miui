.class public Lmiui/maml/data/Variables;
.super Ljava/lang/Object;
.source "Variables.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/Variables$1;,
        Lmiui/maml/data/Variables$VarBucket;,
        Lmiui/maml/data/Variables$ValueInfo;,
        Lmiui/maml/data/Variables$DoubleBucket;,
        Lmiui/maml/data/Variables$BaseVarBucket;,
        Lmiui/maml/data/Variables$DoubleInfo;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "Variables"


# instance fields
.field private mDoubleBucket:Lmiui/maml/data/Variables$DoubleBucket;

.field private mObjectBucket:Lmiui/maml/data/Variables$VarBucket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/maml/data/Variables$VarBucket",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Lmiui/maml/data/Variables;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/maml/data/Variables$DoubleBucket;

    invoke-direct {v0, v1}, Lmiui/maml/data/Variables$DoubleBucket;-><init>(Lmiui/maml/data/Variables$1;)V

    iput-object v0, p0, Lmiui/maml/data/Variables;->mDoubleBucket:Lmiui/maml/data/Variables$DoubleBucket;

    new-instance v0, Lmiui/maml/data/Variables$VarBucket;

    invoke-direct {v0, v1}, Lmiui/maml/data/Variables$VarBucket;-><init>(Lmiui/maml/data/Variables$1;)V

    iput-object v0, p0, Lmiui/maml/data/Variables;->mObjectBucket:Lmiui/maml/data/Variables$VarBucket;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    sget-boolean v0, Lmiui/maml/data/Variables;->DBG:Z

    return v0
.end method

.method private static dbglog(Ljava/lang/String;)V
    .locals 1
    .param p0, "info"    # Ljava/lang/String;

    .prologue
    sget-boolean v0, Lmiui/maml/data/Variables;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Variables"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private getArrInner(II)Ljava/lang/Object;
    .locals 5
    .param p1, "index"    # I
    .param p2, "arrIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II)TT;"
        }
    .end annotation

    .prologue
    :try_start_0
    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .local v1, "arr":[Ljava/lang/Object;, "[TT;"
    if-nez v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getArrInner: designated object is not an array. index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    .end local v1    # "arr":[Ljava/lang/Object;, "[TT;"
    :goto_0
    const/4 v3, 0x0

    :goto_1
    return-object v3

    .restart local v1    # "arr":[Ljava/lang/Object;, "[TT;"
    :cond_0
    aget-object v3, v1, p2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .end local v1    # "arr":[Ljava/lang/Object;, "[TT;"
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/ClassCastException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getArrInner: designated object type is not correct. index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    goto :goto_0

    .end local v2    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getArrInner: designated index is invalid. index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " arrIndex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public createArray(Ljava/lang/String;ILjava/lang/Class;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    if-eqz p3, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    move-result v2

    .local v2, "id":I
    invoke-virtual {p0, v2}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v0

    .local v0, "array":Ljava/lang/Object;
    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p3, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lmiui/maml/data/Variables;->put(ILjava/lang/Object;)V

    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public existsArrItem(II)Z
    .locals 3
    .param p1, "index"    # I
    .param p2, "arrIndex"    # I

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v0

    .local v0, "arr":Ljava/lang/Object;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-ltz p2, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ge p2, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public existsDouble(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    iget-object v0, p0, Lmiui/maml/data/Variables;->mDoubleBucket:Lmiui/maml/data/Variables$DoubleBucket;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables$DoubleBucket;->exists(I)Z

    move-result v0

    return v0
.end method

.method public existsDouble(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lmiui/maml/data/Variables;->mDoubleBucket:Lmiui/maml/data/Variables$DoubleBucket;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables$DoubleBucket;->exists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public existsObj(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lmiui/maml/data/Variables;->mObjectBucket:Lmiui/maml/data/Variables$VarBucket;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables$VarBucket;->exists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    iget-object v0, p0, Lmiui/maml/data/Variables;->mObjectBucket:Lmiui/maml/data/Variables$VarBucket;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables$VarBucket;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getArr(II)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .param p2, "arrIndex"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lmiui/maml/data/Variables;->getArrInner(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getArrDouble(II)D
    .locals 6
    .param p1, "index"    # I
    .param p2, "arrIndex"    # I

    .prologue
    const-wide/16 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v0

    .local v0, "arr":Ljava/lang/Object;
    if-nez v0, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getArrDouble: designated array does not exist. index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmiui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    .end local v0    # "arr":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-wide v2

    .restart local v0    # "arr":Ljava/lang/Object;
    :cond_1
    instance-of v4, v0, [Z

    if-eqz v4, :cond_2

    check-cast v0, [Z

    .end local v0    # "arr":Ljava/lang/Object;
    check-cast v0, [Z

    aget-boolean v4, v0, p1

    if-eqz v4, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    .restart local v0    # "arr":Ljava/lang/Object;
    :cond_2
    invoke-static {v0, p2}, Ljava/lang/reflect/Array;->getDouble(Ljava/lang/Object;I)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .end local v0    # "arr":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getArrDouble: designated index is invalid. index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " arrIndex:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmiui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getArrString(II)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I
    .param p2, "arrIndex"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lmiui/maml/data/Variables;->getArrInner(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "index"    # I

    .prologue
    iget-object v0, p0, Lmiui/maml/data/Variables;->mDoubleBucket:Lmiui/maml/data/Variables$DoubleBucket;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables$DoubleBucket;->get(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->registerDoubleVariable(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/maml/data/Variables;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    :try_start_0
    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/maml/data/Variables;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVer(IZ)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "isNumber"    # Z

    .prologue
    if-eqz p2, :cond_0

    iget-object v0, p0, Lmiui/maml/data/Variables;->mDoubleBucket:Lmiui/maml/data/Variables$DoubleBucket;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables$DoubleBucket;->getVer(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/data/Variables;->mObjectBucket:Lmiui/maml/data/Variables$VarBucket;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables$VarBucket;->getVer(I)I

    move-result v0

    goto :goto_0
.end method

.method public final put(ID)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # D

    .prologue
    iget-object v0, p0, Lmiui/maml/data/Variables;->mDoubleBucket:Lmiui/maml/data/Variables$DoubleBucket;

    invoke-virtual {v0, p1, p2, p3}, Lmiui/maml/data/Variables$DoubleBucket;->put(ID)V

    return-void
.end method

.method public final put(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lmiui/maml/data/Variables;->mObjectBucket:Lmiui/maml/data/Variables$VarBucket;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/data/Variables$VarBucket;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final put(Ljava/lang/String;D)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->registerDoubleVariable(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lmiui/maml/data/Variables;->put(ID)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lmiui/maml/data/Variables;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public putArr(IID)Z
    .locals 11
    .param p1, "index"    # I
    .param p2, "arrIndex"    # I
    .param p3, "value"    # D

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v2

    .local v2, "array":Ljava/lang/Object;
    if-nez v2, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "putArr: designated array does not exist. index:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmiui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    move v4, v5

    .end local v2    # "array":Ljava/lang/Object;
    :goto_0
    return v4

    .restart local v2    # "array":Ljava/lang/Object;
    :cond_0
    instance-of v4, v2, [D

    if-eqz v4, :cond_2

    move-object v0, v2

    check-cast v0, [D

    move-object v4, v0

    check-cast v4, [D

    aput-wide p3, v4, p2

    :cond_1
    :goto_1
    invoke-virtual {p0, p1, v2}, Lmiui/maml/data/Variables;->put(ILjava/lang/Object;)V

    move v4, v6

    goto :goto_0

    :cond_2
    instance-of v4, v2, [B

    if-eqz v4, :cond_3

    move-object v0, v2

    check-cast v0, [B

    move-object v4, v0

    check-cast v4, [B

    double-to-long v8, p3

    long-to-int v7, v8

    int-to-byte v7, v7

    aput-byte v7, v4, p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v2    # "array":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "putArr: failed. index:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " arrIndex:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmiui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    move v4, v5

    goto :goto_0

    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "array":Ljava/lang/Object;
    :cond_3
    :try_start_1
    instance-of v4, v2, [C

    if-eqz v4, :cond_4

    move-object v0, v2

    check-cast v0, [C

    move-object v4, v0

    check-cast v4, [C

    double-to-long v8, p3

    long-to-int v7, v8

    int-to-char v7, v7

    aput-char v7, v4, p2

    goto :goto_1

    :cond_4
    instance-of v4, v2, [F

    if-eqz v4, :cond_5

    move-object v0, v2

    check-cast v0, [F

    move-object v4, v0

    check-cast v4, [F

    double-to-float v7, p3

    aput v7, v4, p2

    goto :goto_1

    :cond_5
    instance-of v4, v2, [I

    if-eqz v4, :cond_6

    move-object v0, v2

    check-cast v0, [I

    move-object v4, v0

    check-cast v4, [I

    double-to-long v8, p3

    long-to-int v7, v8

    aput v7, v4, p2

    goto :goto_1

    :cond_6
    instance-of v4, v2, [J

    if-eqz v4, :cond_7

    move-object v0, v2

    check-cast v0, [J

    move-object v4, v0

    check-cast v4, [J

    double-to-long v8, p3

    aput-wide v8, v4, p2

    goto/16 :goto_1

    :cond_7
    instance-of v4, v2, [S

    if-eqz v4, :cond_8

    move-object v0, v2

    check-cast v0, [S

    move-object v4, v0

    check-cast v4, [S

    double-to-long v8, p3

    long-to-int v7, v8

    int-to-short v7, v7

    aput-short v7, v4, p2

    goto/16 :goto_1

    :cond_8
    instance-of v4, v2, [Z

    if-eqz v4, :cond_1

    move-object v0, v2

    check-cast v0, [Z

    move-object v4, v0

    check-cast v4, [Z

    const-wide/16 v8, 0x0

    cmpl-double v7, p3, v8

    if-lez v7, :cond_9

    move v7, v6

    :goto_2
    aput-boolean v7, v4, p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_9
    move v7, v5

    goto :goto_2
.end method

.method public putArr(IILjava/lang/Object;)Z
    .locals 5
    .param p1, "index"    # I
    .param p2, "arrIndex"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    :try_start_0
    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .local v1, "arr":[Ljava/lang/Object;
    if-nez v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "putArr: designated array does not exist. index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    .end local v1    # "arr":[Ljava/lang/Object;
    :goto_0
    const/4 v3, 0x0

    :goto_1
    return v3

    .restart local v1    # "arr":[Ljava/lang/Object;
    :cond_0
    aput-object p3, v1, p2

    invoke-virtual {p0, p1, v1}, Lmiui/maml/data/Variables;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x1

    goto :goto_1

    .end local v1    # "arr":[Ljava/lang/Object;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/ClassCastException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "putArr: designated object is not an object array. index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    goto :goto_0

    .end local v2    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "putArr: designated array index is invalid. index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " arrIndex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public putArrDouble(IILjava/lang/Object;)Z
    .locals 2
    .param p1, "index"    # I
    .param p2, "arrIndex"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    instance-of v0, p3, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p3, Ljava/lang/Number;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lmiui/maml/data/Variables;->putArr(IID)Z

    move-result v0

    :goto_0
    return v0

    .restart local p3    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_1

    :try_start_0
    check-cast p3, Ljava/lang/String;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-static {p3}, Lmiui/maml/util/Utils;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lmiui/maml/data/Variables;->putArr(IID)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final putDouble(ILjava/lang/Object;)Z
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/Number;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lmiui/maml/data/Variables;->put(ID)V

    move v0, v2

    :goto_0
    return v0

    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_1
    invoke-virtual {p0, p1, v0, v1}, Lmiui/maml/data/Variables;->put(ID)V

    move v0, v2

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1

    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_3

    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lmiui/maml/data/Variables;->put(ID)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final putNum(Ljava/lang/String;D)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-virtual {p0, p1, p2, p3}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    return-void
.end method

.method public registerDoubleVariable(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lmiui/maml/data/Variables;->mDoubleBucket:Lmiui/maml/data/Variables$DoubleBucket;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables$DoubleBucket;->registerVariable(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public registerVariable(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lmiui/maml/data/Variables;->mObjectBucket:Lmiui/maml/data/Variables$VarBucket;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables$VarBucket;->registerVariable(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/maml/data/Variables;->mDoubleBucket:Lmiui/maml/data/Variables$DoubleBucket;

    invoke-virtual {v0}, Lmiui/maml/data/Variables$DoubleBucket;->reset()V

    iget-object v0, p0, Lmiui/maml/data/Variables;->mObjectBucket:Lmiui/maml/data/Variables$VarBucket;

    invoke-virtual {v0}, Lmiui/maml/data/Variables$VarBucket;->reset()V

    return-void
.end method
