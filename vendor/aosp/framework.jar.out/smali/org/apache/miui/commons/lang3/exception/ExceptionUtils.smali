.class public Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;
.super Ljava/lang/Object;
.source "ExceptionUtils.java"


# static fields
.field private static final CAUSE_METHOD_NAMES:[Ljava/lang/String;

.field static final WRAPPED_MARKER:Ljava/lang/String; = " [wrapped] "


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "getCause"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "getNextException"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "getTargetException"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "getException"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "getSourceException"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "getRootCause"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "getCausedByException"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "getNested"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "getLinkedException"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "getNestedException"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "getLinkedCause"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "getThrowable"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;->CAUSE_METHOD_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    sget-object v0, Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;->CAUSE_METHOD_NAMES:[Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;->getCause(Ljava/lang/Throwable;[Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public static getCause(Ljava/lang/Throwable;[Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 6
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "methodNames"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x0

    if-nez p0, :cond_1

    move-object v1, v5

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    if-nez p1, :cond_2

    sget-object p1, Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;->CAUSE_METHOD_NAMES:[Ljava/lang/String;

    :cond_2
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v4, v0, v2

    .local v4, "methodName":Ljava/lang/String;
    if-eqz v4, :cond_3

    invoke-static {p0, v4}, Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;->getCauseUsingMethodName(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v1

    .local v1, "cause":Ljava/lang/Throwable;
    if-nez v1, :cond_0

    .end local v1    # "cause":Ljava/lang/Throwable;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v4    # "methodName":Ljava/lang/String;
    :cond_4
    move-object v1, v5

    goto :goto_0
.end method

.method private static getCauseUsingMethodName(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "method":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    const-class v1, Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-object v1

    :catch_0
    move-exception v1

    :cond_0
    :goto_2
    const/4 v1, 0x0

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_0

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method public static getDefaultCauseMethodNames()[Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    sget-object v0, Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;->CAUSE_METHOD_NAMES:[Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4
    .param p0, "th"    # Ljava/lang/Throwable;

    .prologue
    if-nez p0, :cond_0

    const-string v2, ""

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lorg/apache/miui/commons/lang3/ClassUtils;->getShortClassName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "clsName":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lorg/apache/miui/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;->getThrowableList(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v0

    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    goto :goto_0
.end method

.method public static getRootCauseMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2
    .param p0, "th"    # Ljava/lang/Throwable;

    .prologue
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .local v0, "root":Ljava/lang/Throwable;
    if-nez v0, :cond_0

    move-object v0, p0

    :cond_0
    invoke-static {v0}, Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;->getMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getRootCauseStackTrace(Ljava/lang/Throwable;)[Ljava/lang/String;
    .locals 9
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    if-nez p0, :cond_0

    sget-object v7, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    :goto_0
    return-object v7

    :cond_0
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;->getThrowables(Ljava/lang/Throwable;)[Ljava/lang/Throwable;

    move-result-object v5

    .local v5, "throwables":[Ljava/lang/Throwable;
    array-length v0, v5

    .local v0, "count":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "frames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    add-int/lit8 v7, v0, -0x1

    aget-object v7, v5, v7

    invoke-static {v7}, Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;->getStackFrameList(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v4

    .local v4, "nextTrace":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v2, v0

    .local v2, "i":I
    :cond_1
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_4

    move-object v6, v4

    .local v6, "trace":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_2

    add-int/lit8 v7, v2, -0x1

    aget-object v7, v5, v7

    invoke-static {v7}, Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;->getStackFrameList(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v4

    invoke-static {v6, v4}, Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;->removeCommonFrames(Ljava/util/List;Ljava/util/List;)V

    :cond_2
    add-int/lit8 v7, v0, -0x1

    if-ne v2, v7, :cond_3

    aget-object v7, v5, v2

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_1

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v3    # "j":I
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " [wrapped] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v5, v2

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v6    # "trace":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    goto :goto_0
.end method

.method static getStackFrameList(Ljava/lang/Throwable;)Ljava/util/List;
    .locals 8
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    .local v4, "stackTrace":Ljava/lang/String;
    sget-object v2, Lorg/apache/miui/commons/lang3/SystemUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .local v2, "linebreak":Ljava/lang/String;
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, v4, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v1, "frames":Ljava/util/StringTokenizer;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "traceStarted":Z
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .local v5, "token":Ljava/lang/String;
    const-string v7, "at"

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .local v0, "at":I
    const/4 v7, -0x1

    if-eq v0, v7, :cond_1

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    const/4 v6, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz v6, :cond_0

    .end local v0    # "at":I
    .end local v5    # "token":Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method static getStackFrames(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "stackTrace"    # Ljava/lang/String;

    .prologue
    sget-object v1, Lorg/apache/miui/commons/lang3/SystemUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .local v1, "linebreak":Ljava/lang/String;
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "frames":Ljava/util/StringTokenizer;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public static getStackFrames(Ljava/lang/Throwable;)[Ljava/lang/String;
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    if-nez p0, :cond_0

    sget-object v0, Lorg/apache/miui/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;->getStackFrames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getThrowableCount(Ljava/lang/Throwable;)I
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;->getThrowableList(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public static getThrowableList(Ljava/lang/Throwable;)Ljava/util/List;
    .locals 2
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :goto_0
    if-eqz p0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;->getCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getThrowables(Ljava/lang/Throwable;)[Ljava/lang/Throwable;
    .locals 2
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;->getThrowableList(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v0

    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Throwable;

    return-object v1
.end method

.method private static indexOf(Ljava/lang/Throwable;Ljava/lang/Class;IZ)I
    .locals 4
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p2, "fromIndex"    # I
    .param p3, "subclass"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class",
            "<*>;IZ)I"
        }
    .end annotation

    .prologue
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, -0x1

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v0, v2

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-gez p2, :cond_3

    const/4 p2, 0x0

    :cond_3
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;->getThrowables(Ljava/lang/Throwable;)[Ljava/lang/Throwable;

    move-result-object v1

    .local v1, "throwables":[Ljava/lang/Throwable;
    array-length v3, v1

    if-lt p2, v3, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    if-eqz p3, :cond_5

    move v0, p2

    .local v0, "i":I
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_6

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    :cond_5
    move v0, p2

    .restart local v0    # "i":I
    :goto_2
    array-length v3, v1

    if-ge v0, v3, :cond_6

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_0
.end method

.method public static indexOfThrowable(Ljava/lang/Throwable;Ljava/lang/Class;)I
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;->indexOf(Ljava/lang/Throwable;Ljava/lang/Class;IZ)I

    move-result v0

    return v0
.end method

.method public static indexOfThrowable(Ljava/lang/Throwable;Ljava/lang/Class;I)I
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p2, "fromIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class",
            "<*>;I)I"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;->indexOf(Ljava/lang/Throwable;Ljava/lang/Class;IZ)I

    move-result v0

    return v0
.end method

.method public static indexOfType(Ljava/lang/Throwable;Ljava/lang/Class;)I
    .locals 2
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;->indexOf(Ljava/lang/Throwable;Ljava/lang/Class;IZ)I

    move-result v0

    return v0
.end method

.method public static indexOfType(Ljava/lang/Throwable;Ljava/lang/Class;I)I
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p2, "fromIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class",
            "<*>;I)I"
        }
    .end annotation

    .prologue
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;->indexOf(Ljava/lang/Throwable;Ljava/lang/Class;IZ)I

    move-result v0

    return v0
.end method

.method public static printRootCauseStackTrace(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;->printRootCauseStackTrace(Ljava/lang/Throwable;Ljava/io/PrintStream;)V

    return-void
.end method

.method public static printRootCauseStackTrace(Ljava/lang/Throwable;Ljava/io/PrintStream;)V
    .locals 7
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "stream"    # Ljava/io/PrintStream;

    .prologue
    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The PrintStream must not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;->getRootCauseStackTrace(Ljava/lang/Throwable;)[Ljava/lang/String;

    move-result-object v4

    .local v4, "trace":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .local v1, "element":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1    # "element":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    goto :goto_0
.end method

.method public static printRootCauseStackTrace(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V
    .locals 7
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .prologue
    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The PrintWriter must not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/exception/ExceptionUtils;->getRootCauseStackTrace(Ljava/lang/Throwable;)[Ljava/lang/String;

    move-result-object v4

    .local v4, "trace":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .local v1, "element":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1    # "element":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    goto :goto_0
.end method

.method public static removeCommonFrames(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "causeFrames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "wrapperFrames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "The List must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "causeFrameIndex":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "wrapperFrameIndex":I
    :goto_0
    if-ltz v1, :cond_3

    if-ltz v3, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "causeFrame":Ljava/lang/String;
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "wrapperFrame":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .end local v0    # "causeFrame":Ljava/lang/String;
    .end local v2    # "wrapperFrame":Ljava/lang/String;
    :cond_3
    return-void
.end method
